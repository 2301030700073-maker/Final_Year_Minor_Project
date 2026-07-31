.class public final Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic $$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final synthetic $finishInputLockedMethod:Ljava/lang/reflect/Method;

.field public final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic $mHField:Ljava/lang/reflect/Field;

.field public final synthetic $mServedViewField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 5
    .line 6
    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$mHField:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    iput-object p3, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$mServedViewField:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    iput-object p4, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$finishInputLockedMethod:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x1

    .line 19
    new-array p3, p3, [Ljava/lang/Class;

    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    aput-object p1, p3, p4

    .line 23
    .line 24
    sget-object p1, Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;->INSTANCE:Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;

    .line 25
    .line 26
    invoke-static {p2, p3, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 33
    .line 34
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    .line 38
    .line 39
    const-string p1, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p2, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    invoke-direct {v1, v2, p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    new-instance p0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1, v1}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of p2, p1, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    check-cast p1, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p1}, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;-><init>(Landroid/view/Window$Callback;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 55
    .line 56
    .line 57
    move-object p1, p2

    .line 58
    :goto_0
    iget-object p1, p1, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;->onContentChangedCallbacks:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
