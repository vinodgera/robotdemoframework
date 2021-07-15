***setting***
Library  SeleniumLibrary

Test setup   Test case start    ${url}
Test Teardown   Test case end
Resource  ../resources/keyword.robot
Resource  ../resources/object_repository.robot

***variable***
${value}     ber
${sum1}       0
${sum}      0
${url}     https://rahulshettyacademy.com/seleniumPractise/#/


***Test Case***
verify opening of test url


   Search bar   ${value}
   sleep   2s
   @{products}=   Get WebElements    css:h4.product-name

   FOR   ${productname}  IN   @{products}
         ${Text}=   Get Text   ${productname}
         Log TO Console   ${Text}
   END
   @{button}=   Get WebElements    //div[@class='product-action']/button

   FOR   ${buttons}   IN   @{button}
         ${addtocart}=   Click Button   ${buttons}
    END
   sleep   3s
   Click Element   css :a.cart-icon    RETURN
   Click button    //div[@class='cart-preview active']/div[2]/button

   @{postproductname}   Get WebElements   //p[@class='product-name']

   FOR   ${verfiname}   IN   @{postproductname}
         ${verifypage}=   Get Text   ${verfiname}
         Log TO Console   ${verifypage}
    END
#    Should Be Equal As Strings   ${Text}   ${verifypage}
    @{total}=   Get WebElements   //tr/td[5]/p
    ${sum} =   Convert to Integer   ${sum1}
    FOR   ${amount}   IN   @{total}
          ${sum}   =   ${sum}+  Convert To Integer    Get Text   ${amount}
          Log To Console   ${sum}
    END









