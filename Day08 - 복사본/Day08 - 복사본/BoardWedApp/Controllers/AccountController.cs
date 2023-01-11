using BoardWebApp.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Scaffolding;

namespace BoardWebApp.Controllers
{
    public class AccountController : Controller
    {

        private readonly UserManager<IdentityUser> userManager;
        private readonly SignInManager<IdentityUser> signInManager;

        public AccountController(UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager)
        {
            this.userManager = userManager ?? throw new ArgumentNullException(nameof(userManager));
            this.signInManager = signInManager ?? throw new ArgumentNullException(nameof(signInManager));

        }

        //회원가입 첫화면 들어갈때 액션(매서드)
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        //회원가입 버튼 누른 후 DB 처리 액션(매서드)
        //비동기할 떄는 async await 필수
        [HttpPost]
        //async 비동기 처리
        public async Task<IActionResult> Register(RegisterModel model)
        {
            ModelState.Remove("PhoneNumber");
            if (ModelState.IsValid) // 입력필수값이 다 입력되었으면 true 아니면 false
            {
                var user = new IdentityUser
                {
                    Id = model.Id,
                    UserName = model.UserName,
                    Email = model.Email,
                    PhoneNumber = model.PhoneNumber,
                };
                // 회원정보를 AspNetUsers 테이블 저장

                var result = await userManager.CreateAsync(user, model.Password);
                
                if (result.Succeeded)
                {
                    // 로그인 처리
                    await signInManager.SignInAsync(user, isPersistent: false);

                    TempData["success"] = "회원가입 완료!";
                    return RedirectToAction("Index", "Home");
                }

                //에러발생했으면 에러를 출력
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);

                }

            }

            return View(model);
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

    }
}