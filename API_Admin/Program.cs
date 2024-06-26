using DAL;
using DAL.Interface;
using DataAccessLayer;
using BUS;
using BUS.Interface;
using System.Text;
using Data_Model;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
});
// Add services to the container.
builder.Services.AddTransient<IDatabaseHelper, DatabaseHelper>();
builder.Services.AddTransient<INhaCungCapRepository, NhaCungCapRepository>();
builder.Services.AddTransient<INhaCungCapBusiness, NhaCungCapBusiness>();
builder.Services.AddTransient<IThuongHieuRepository, ThuongHieuRepository>();
builder.Services.AddTransient<IThuongHieuBusiness, ThuongHieuBusiness>();
builder.Services.AddTransient<ITheLoaiRepository, TheLoaiRepository>();
builder.Services.AddTransient<ITheLoaiBusiness, TheLoaiBusiness>();
builder.Services.AddTransient<ILoaiTaiKhoanRepository, LoaiTaiKhoanRepository>();
builder.Services.AddTransient<ILoaiTaiKhoanBusiness, LoaiTaiKhoanBusiness>();
builder.Services.AddTransient<ITaiKhoanRepository,TaiKhoanRepository>();
builder.Services.AddTransient<ITaiKhoanBusiness,TaiKhoanBusiness>();
builder.Services.AddTransient<ISanPhamRepository, SanPhamRepository>();
builder.Services.AddTransient<ISanPhamBusiness, SanPhamBusiness>();
builder.Services.AddTransient<IHoaDonBanRepository, HoaDonBanRepository>();
builder.Services.AddTransient<IHoaDonBanBusiness, HoaDonBanBusiness>();
builder.Services.AddTransient<IHoaDonNhapRepository, HoaDonNhapRepository>();
builder.Services.AddTransient<IHoaDonNhapBusiness, HoaDonNhapBusiness>();
builder.Services.AddTransient<IThongKeRepository, ThongKeRepository>();
builder.Services.AddTransient<IThongkeBusiness,ThongkeBusiness>();
builder.Services.AddTransient<ITinTucRepository, TinTucRepository>();
builder.Services.AddTransient<ITinTucBusiness, TinTucBusiness>();
builder.Services.AddTransient<IKhachHangRepository, KhachHangRepository>();
builder.Services.AddTransient<IKhachHangBusiness, KhachHangBusiness>();
builder.Services.AddTransient<IMaGiamGiaRespository, MaGiamGiaRespository>();
builder.Services.AddTransient<IMaGiamGiaBusiness, MaGiamGiaBusiness>();
builder.Services.AddTransient<INhanVienRepository, NhanVienRepository>();
builder.Services.AddTransient<INhanVienBusiness, NhanVienBusiness>();



IConfiguration configuration = builder.Configuration;
var appSettingsSection = configuration.GetSection("AppSettings");
builder.Services.Configure<AppSettings>(appSettingsSection);

// configure jwt authentication
var appSettings = appSettingsSection.Get<AppSettings>();
var key = Encoding.ASCII.GetBytes(appSettings.Secret);
builder.Services.AddAuthentication(x =>
{
    x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(x =>
{
    x.RequireHttpsMetadata = false;
    x.SaveToken = true;
    x.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = new SymmetricSecurityKey(key),
        ValidateIssuer = false,
        ValidateAudience = false
    };
});


// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();



// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseHttpsRedirection();
app.UseCors("AllowAll");
app.UseAuthentication();
app.UseAuthorization();
app.MapControllers();
app.Run();

