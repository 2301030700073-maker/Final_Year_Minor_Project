.class public Landroidx/activity/EdgeToEdgeApi29;
.super Landroidx/activity/EdgeToEdgeApi28;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public setUp(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p3, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 28
    .line 29
    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 p2, 0x23

    .line 33
    .line 34
    if-lt p1, p2, :cond_0

    .line 35
    .line 36
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 p2, 0x1e

    .line 43
    .line 44
    if-lt p1, p2, :cond_1

    .line 45
    .line 46
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 47
    .line 48
    invoke-direct {p1, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 p2, 0x1a

    .line 53
    .line 54
    if-lt p1, p2, :cond_2

    .line 55
    .line 56
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 57
    .line 58
    invoke-direct {p1, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 63
    .line 64
    invoke-direct {p1, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    xor-int/lit8 p2, p5, 0x1

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lkotlin/math/MathKt;->setAppearanceLightStatusBars(Z)V

    .line 70
    .line 71
    .line 72
    xor-int/2addr p0, p6

    .line 73
    invoke-virtual {p1, p0}, Lkotlin/math/MathKt;->setAppearanceLightNavigationBars(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
