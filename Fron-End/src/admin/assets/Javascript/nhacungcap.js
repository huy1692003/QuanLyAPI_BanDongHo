myAdmin.controller('nhacungcapCtrl', function ($scope,$http) {
    // Khởi tạo

    $scope.maNCC=1;
    $scope.tenNCC=null;
    $scope.diaChi=null;
    $scope.email=null;
    $scope.soDienThoai=null;
    $scope.listNCC={}
    $scope.addNCCShow=false;
    
    $scope.screen_shadow=false;
    $scope.objNCC={
         maNCC: $scope.maNCC,
         tenNCC: $scope.tenNCC,
         diaChi: $scope.diaChi,
         email: $scope.email,
         soDienThoai: $scope.soDienThoai
      },
    
    $scope.exitForm=()=>
    {
        $scope.screen_shadow=false;
        $scope.addNCCShow=false;
        $scope.editNCCShow=false;
        $scope.maNCC=1;
        $scope.tenNCC=null;
        $scope.diaChi=null;
        $scope.email=null;
        $scope.soDienThoai=null;
    }  
    $scope.showAddNCC=()=>{
        $scope.addNCCShow=true;
        $scope.screen_shadow=true;

    }
    $scope.reloadData=()=>{    
            $scope.objNCC={
            maNCC: $scope.maNCC,
            tenNCC: $scope.tenNCC,
            diaChi: $scope.diaChi,
            email: $scope.email,
            soDienThoai: $scope.soDienThoai
            }
    }
   
   $scope.getNCCs = () => {
        $http({
              method: "GET",
              url: "https://localhost:44334/api/NhaCungCap/getALL_NCC"
          }).then((response)=>{
             $scope.listNCC=response.data;
          }).catch((error)=>{
             console.log("Lỗi : "+error)})
            }

    $scope.getNCCs();


    $scope.addNCC=()=>{
      
        console.log($scope.objNCC);
        $scope.reloadData();
        $http({
            method: "POST",
            url: "https://localhost:44334/api/NhaCungCap/Create_NhaCungCap",
            data:$scope.objNCC
        }).then((response)=>{
          alert("Thông báo :"+response.data);
          $scope.getNCCs();
        }).catch((error)=>{
           alert("Lỗi : "+error)})
    }  

    $scope.deleteNCC = (x) => {              
        if (confirm("Bạn có chắc chắn muốn xóa")) {
            $http({
                method: "DELETE",
                url: 'https://localhost:44334/api/NhaCungCap/Delete_NhaCungCap/' + x.maNCC
            }).then((result) => {
                alert("Thông báo: " + result.data);
                $scope.getNCCs();
            }).catch((error) => {
                alert("Thông báo: " + error);
            });
        } else {
            // Người dùng đã nhấn nút "Cancel", không thực hiện hành động xóa
            alert("Hành động xóa đã bị hủy bỏ.");
        }
    }     
    $scope.showeditNCC=(x)=>{
        $scope.screen_shadow=true;
        $scope.editNCCShow=true;
        $scope.maNCC=x.maNCC;
        $scope.tenNCC=x.tenNCC;
        $scope.diaChi=x.diaChi;
        $scope.email=x.email;
        $scope.soDienThoai=x.soDienThoai;
        console.log($scope.soDienThoai)
       
        
       
    }
   

    $scope.editNCC=()=>{
        
        console.log($scope.objNCC);
        $scope.reloadData();
        $http({
            method: "PUT",
            url: "https://localhost:44334/api/NhaCungCap/Update_NhaCungCap",
            data:$scope.objNCC
        }).then((response)=>{
          alert("Thông báo :"+response.data);
          $scope.getNCCs();
        }).catch((error)=>{
           alert("Lỗi : "+error)})
    }
})
    
























