.class public final Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic $$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic $mCurRootViewField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW;Ljava/lang/reflect/Field;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$mCurRootViewField:Ljava/lang/reflect/Field;

    .line 5
    .line 6
    iput-object p3, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 7
    .line 8
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 p3, 0x1

    .line 15
    new-array p3, p3, [Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aput-object p1, p3, v0

    .line 19
    .line 20
    sget-object p1, Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;->INSTANCE:Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;

    .line 21
    .line 22
    invoke-static {p2, p3, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 29
    .line 30
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    .line 34
    .line 35
    const-string p1, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$mCurRootViewField:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-ne v4, v1, :cond_0

    .line 36
    .line 37
    move v4, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v4, v2

    .line 40
    :goto_0
    const/4 v5, 0x0

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    move-object v6, v1

    .line 50
    :goto_1
    instance-of v7, v6, Landroid/app/Application;

    .line 51
    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    instance-of v7, v6, Landroid/app/Activity;

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    check-cast v6, Landroid/app/Activity;

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    instance-of v7, v6, Landroid/content/ContextWrapper;

    .line 63
    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    check-cast v6, Landroid/content/ContextWrapper;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-ne v6, v1, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    :goto_2
    move-object v6, v5

    .line 80
    :goto_3
    if-ne v6, p1, :cond_5

    .line 81
    .line 82
    move v2, v3

    .line 83
    :cond_5
    if-nez v4, :cond_6

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    :cond_6
    invoke-virtual {p0, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :catchall_0
    :cond_7
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

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
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

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
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

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
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

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
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;->$$delegate_0:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
