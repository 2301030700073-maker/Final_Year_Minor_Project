.class public final Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW;
.super Lleakcanary/AndroidLeakFixes;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "IMM_CUR_ROOT_VIEW"

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Landroid/app/Application;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "input_method"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    const-string v2, "mCurRootView"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    new-instance v2, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;

    .line 31
    .line 32
    invoke-direct {v2, p0, v1, v0}, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1;-><init>(Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW;Ljava/lang/reflect/Field;Landroid/view/inputmethod/InputMethodManager;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcurtains/Curtains;->rootViewsSpy$delegate:Lkotlin/Lazy;

    .line 39
    .line 40
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcurtains/internal/RootViewsSpy;

    .line 45
    .line 46
    iget-object p0, p0, Lcurtains/internal/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    new-instance p1, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;

    .line 49
    .line 50
    invoke-direct {p1, v1, v0}, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;-><init>(Ljava/lang/reflect/Field;Landroid/view/inputmethod/InputMethodManager;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_1
    new-instance p0, Lkotlin/TypeCastException;

    .line 58
    .line 59
    const-string p1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :catchall_0
    :goto_0
    return-void
.end method
