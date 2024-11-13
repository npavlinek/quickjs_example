#include <string.h>

#include "quickjs/quickjs-libc.h"
#include "quickjs/quickjs.h"

int main(void)
{
    JSRuntime *rt = JS_NewRuntime();
    JSContext *ctx = JS_NewContext(rt);

    // @note: Defines `console.log`, among other things, but it's optional.
    js_std_add_helpers(ctx, 0, NULL);

    const char script[] = "console.log('Hello, world!')";
    JSValue value = JS_Eval(ctx, script, strlen(script), "dummy", JS_EVAL_TYPE_GLOBAL);

    // @note: This is optional, it's just showing how to print exception's error
    // message.
    if (JS_IsException(value)) js_std_dump_error(ctx);

    JS_FreeContext(ctx);
    JS_FreeRuntime(rt);
    return 0;
}
