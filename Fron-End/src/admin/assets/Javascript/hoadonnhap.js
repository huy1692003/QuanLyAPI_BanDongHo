myAdmin.controller('hoadonnhapCtrl', function($scope, $http)  {
    $scope.page = 1;
    $scope.pageSize = 8;  
    $scope.txtSearchtime_begin = '';
    $scope.txtSearchtime_end = '';
    $scope.txtSearchTenTaiKhoan = '';
    $scope.listItem = [];
    $scope.totalItems = 0;
    $scope.objHDB = {};
    
    $scope.pageafter = false;
    $scope.pageprev = true;
    
    $scope.clickSearch = () => {
        $scope.searchParameters = {
            page: $scope.page,
            pageSize: $scope.pageSize,            
            time_begin: $scope.txtSearchtime_begin,
            time_end: $scope.txtSearchtime_end,
            tentaikhoan: $scope.txtSearchTenTaiKhoan
        };
    
        $scope.getHoaDons();
    };
    

    $scope.exitForm=()=>{
       
        $scope.screen_shadow=false;
        
        $scope.formHDNShow=false;
        $scope.listSPSelect=[]
    }

    $scope.getHoaDons = () => {
        $http({
            method: 'POST',
            url: 'https://localhost:44334/api/HoaDonNhap/getList_HDN',
            data: $scope.searchParameters
        }).then((response) => {
            $scope.listItem = response.data.data;
            $scope.totalItems = response.data.totalItems 
            
            if($scope.totalItems<=$scope.pageSize)
            {
              $scope.pageafter=true
            }
        }).catch((error) => {
            console.error('Lỗi:', error);
        });
    };
    $scope.getProducts = function () {
        $http({
            method: 'POST',
            url: 'https://localhost:44334/api/SanPham/search_SP',
            data: {
                pageSize:0
            } // Send the search parameters as the request body
        }).then(function (response) {
            $scope.listSP = response.data.data;   
            console.log($scope.listSP)
        }).catch(function (error) {
            console.error('Lỗi:', error);
        });
    }
    
    $scope.getProducts();
    $scope.ngayNhap=new Date();
    $scope.product;
    $scope.listSPSelect=[];
    $scope.themSP=function()
    {
        
        
        if ($scope.product!=null &&$scope.soLuong!=null&&$scope.giaNhap!=null)
                {
                    // Tạo một đối tượng mới đại diện cho sản phẩm được chọn
                    var newProduct = {
                    maSP:  $scope.product,  // Giả sử product có thuộc tính maSP              
                    soLuong: $scope.soLuong,
                    giaNhap: $scope.giaNhap,
                    tongTien:$scope.soLuong*$scope.giaNhap}
                    var product=$scope.listSP.length===0?$scope.listSPSelect.find(x=>x.maSP===newProduct.maSP):null;
                    if(product)
                    {               
                    product.soLuong+=newProduct.soLuong               
                    product.giaNhap=newProduct.giaNhap               
                    product.tongTien=product.soLuong*product.giaNhap;
                    }
                    else{
                    // Thêm sản phẩm vào mảng listSPSelect
                    $scope.listSPSelect.push(newProduct);
                    }
                    
                
                
                    // Đặt lại giá trị product, số lượng và giá nhập về null hoặc giá trị mặc định
                    $scope.product = null;
                    $scope.soLuong = null;
                    $scope.giaNhap = null;                      
                    $scope.tongtien=0
                    $scope.listSPSelect.forEach(x => {
                    $scope.tongtien=$scope.tongtien+x.tongTien
                });
            }
                    
                
        
        else{
            alert("Nhập đầy đủ dữ liệu khi thêm sản phẩm")
        }
      
      
       
    };
    $scope.deleteSP_ctdh=(index)=>{
              
       var x=$scope.listSPSelect[index]
       $scope.tongtien-=x.tongTien;
       $scope.listSPSelect.splice(index, 1);//hàm xóa phần tử trong mảng
      
           
          
    }

    $scope.page_after = () => {
        $scope.pageprev = false;
        $scope.page += 1;
        $scope.clickSearch();
        console.log($scope.page * $scope.pageSize);
        if ($scope.page * $scope.pageSize >= $scope.totalItems) {
            $scope.pageafter = true;
        }
    };

    $scope.page_prev = () => {
        $scope.pageafter = false;
        $scope.page -= 1;
        if ($scope.page <= 1) {
            $scope.page = 1;
            $scope.pageprev = true;
        }
        $scope.clickSearch();
    };

    $scope.getNCC = () => {
        $http({
              method: "GET",
              url: "https://localhost:44334/api/NhaCungCap/getALL_NCC"
          }).then((response)=>{
             $scope.listNCC=response.data;
          
          }).catch((error)=>{
             console.log("Lỗi : "+error)})}
    // Khởi tạo tìm kiếm khi controller được load
    $scope.getNCC();
    $scope.clickSearch();

    $scope.getDetail_HDNByID=(x)=>
    {        
        $scope.screen_shadow=true;
        $scope.detailSPshow=true;        
        $http(
            {
                method:"POST",
                url:"https://localhost:44334/api/HoaDonBan/getdetail_HDB/"+x.maHD
            }
        ).then(function(response){
          $scope.inforHDB=response.data;
            
        })
    }
    $scope.formAddHDN=()=>{
        $scope.screen_shadow=true;
        $scope.formHDNShow=true;
        $scope.titleForm="Thêm mới hóa đơn nhập"
    }
    $scope.maHD=0;
    $scope.formEditHDN=(x)=>{
        $scope.maHD=x.maHD
        $scope.screen_shadow=true;
        $scope.formHDNShow=true;
        $scope.titleForm="Cập nhật hóa đơn nhập";        
        
        $http({
            method:"POST",
            url:"https://localhost:44334/api/HoaDonNhap/getDetail_HDN/"+x.maHD
        }).then(function(response)
        {
           var obj=response.data
           $scope.tongtien=obj.tongtien
           $scope.listSPSelect=obj.chiTietHoaDonNhap
           $scope.methodPay=obj.methodPay
         
        })

    }
    $scope.saveHDN=function()
    {       
       
        var objHDN={
            "maHD": $scope.maHD,
            "ngayNhap": "2023-11-12T15:51:00.523Z",
            "maNCC": $scope.maNCC,
            "tenTaiKhoan": $scope.user.taikhoan,
            "ghiChu": "ok",
            "methodPay": $scope.methodPay,
            "tongtien": $scope.tongtien,
            "chiTietHoaDonNhap":$scope.listSPSelect
        }
        $http(
            {
                method:$scope.titleForm==="Thêm mới hóa đơn nhập" ?"POST":"PUT",
                url:$scope.titleForm==="Thêm mới hóa đơn nhập" ?"https://localhost:44334/api/HoaDonNhap/create_HDN":"https://localhost:44334/api/HoaDonNhap/update_HDN",
                data:objHDN
            }
        ).then(function(){       
                alert("Thành công :)))")
                $scope.listItem();
              }
        ).catch(function(error){
            alert("Thất bại :((((")
            console.log(error);
        })
    }

});
function hdb_active(x)
{
    document.querySelector('.hdb_active').classList.remove('hdb_active');
    x.classList.add('hdb_active')
}
