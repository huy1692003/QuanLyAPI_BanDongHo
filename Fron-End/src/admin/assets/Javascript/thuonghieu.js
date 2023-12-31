myAdmin.controller('thuonghieuCtrl', function ($scope,$http) {
    // Khởi tạo

    $scope.maTH=1;
    $scope.tenThuongHieu=null;
    $scope.moTa=null;
    $scope.hinhAnh=null;
    $scope.listTH={}
    $scope.addTHShow=false;
    
    $scope.screen_shadow=false;
    $scope.objThuongHieu={
        maTH:$scope.maTH,
        tenThuongHieu:$scope.tenThuongHieu,
        moTa: $scope.moTa,
        hinhAnh: $scope.hinhAnh
      },
    
      $scope.exitForm=()=>{
        $scope.screen_shadow=false;
        $scope.addTHShow=false;
        $scope.editTHShow=false;
        $scope.maTH=1;
        $scope.tenThuongHieu=null;
        $scope.moTa=null;
        $scope.hinhAnh=null;
      }
        
      


    $scope.showAddTH=()=>{
        $scope.addTHShow=true;
        $scope.screen_shadow=true;

    }
    $scope.reloadData=()=>        
        $scope.objThuongHieu={
            maTH:$scope.maTH,
            tenThuongHieu:$scope.tenThuongHieu,
            moTa: $scope.moTa,
            hinhAnh: $scope.hinhAnh
          }
          console.log($scope.user)
    
    $scope.getThuongHieu = () => {
        $http({
              method: "GET",
              url: "http://localhost:8888/ThuongHieu/getALL_ThuongHieu",
              headers: { "Authorization": 'Bearer ' + $scope.user.token }
          }).then((response)=>{
             $scope.listTH=response.data;
          }).catch((error)=>{
             console.log("Lỗi : "+error.data)})
            }

    $scope.getThuongHieu();


    $scope.addTH=()=>{
        var fileInput = document.getElementById('fileInput1');
        var file = fileInput.files[0];        
        if (!file) {
            alert('Vui lòng chọn ảnh!');
            
        }   
        else
        {
            var formData = new FormData();
            formData.append('file', file);
            $http({
                method: 'POST',
                url: 'https://localhost:44329/api/UploadFile/upload',
                data: formData,
                headers: { 'Content-Type': undefined }
            })
            .then(function (response) 
            {
                 $scope.hinhAnh = '/image' + response.data.filePath;
                 console.log($scope.hinhAnh)
                 $scope.reloadData();       
                 $http({
                     method: "POST",
                     url: "http://localhost:8888/ThuongHieu/Create_ThuongHieu",
                     data:$scope.objThuongHieu,
                     headers: { "Authorization": 'Bearer ' + $scope.user.token }
                 }).then((response)=>{
                   alert("Thông báo :"+response.data);
                   $scope.getThuongHieu();
                 }).catch((error)=>{
                    console.log("Lỗi : "+error)})                
                 
            })     
         
         };
       
    }  

    $scope.deleteTH = (x) => {              
        if (confirm("Bạn có chắc chắn muốn xóa")) {
            $http({
                method: "DELETE",
                url: 'http://localhost:8888/ThuongHieu/Delete_ThuongHieu_byID/' + x.maTH,
                headers: { "Authorization": 'Bearer ' + $scope.user.token }
            }).then((result) => {
                alert("Thông báo: " + result.data);
                $scope.getThuongHieu();
            }).catch((error) => {
                console.log("Thông báo: " + error.data);
            });
        } else {
            // Người dùng đã nhấn nút "Cancel", không thực hiện hành động xóa
            console.log("Hành động xóa đã bị hủy bỏ.");
        }
    }     
    $scope.showeditTH=(x)=>{
        $scope.screen_shadow=true;
        $scope.editTHShow=true;
        $scope.maTH=x.maTH;
        $scope.tenThuongHieu=x.tenThuongHieu;
        $scope.moTa=x.moTa;
        $scope.hinhAnh=x.hinhAnh; 
        $scope.reloadData()
        console.log($scope.objThuongHieu)
       
        
       
    }
   

    $scope.editTH=()=>{
        var fileInput = document.getElementById('fileInput2');
        var file = fileInput.files[0];
        $scope.reloadData()
          console.log($scope.objThuongHieu)        
        if (!file)
         {           
            $http({
                     method: "PUT",
                     url: "http://localhost:8888/ThuongHieu/Update_ThuongHieu",
                     headers: { "Authorization": 'Bearer ' + $scope.user.token },
                     data:$scope.objThuongHieu
                 }).then((response)=>{
                   alert("Thông báo :"+response.data);
                   $scope.getThuongHieu();
                 }).catch((error)=>{
                    console.log(error.data)})             
                             
         }   
        else
        {
            var formData = new FormData();
            formData.append('file', file);
            $http({
                method: 'POST',
                url: 'https://localhost:44329/api/UploadFile/upload',
                data: formData,
                headers: { 'Content-Type': undefined }
            })
            .then(function (response) 
            {
                 $scope.hinhAnh = '/image' + response.data.filePath;
                 $scope.reloadData();
                 $http({
                     method: "PUT",
                     url: "http://localhost:8888/ThuongHieu/Update_ThuongHieu",
                     headers: { "Authorization": 'Bearer ' + $scope.user.token },
                     data:$scope.objThuongHieu
                 }).then((response)=>{
                   alert("Thông báo :"+response.data);
                   $scope.getThuongHieu();
                 }).catch((error)=>{
                        console.log(error.data)})                
                 
            })     
         
         };
       
       
      
    }
})
    
























