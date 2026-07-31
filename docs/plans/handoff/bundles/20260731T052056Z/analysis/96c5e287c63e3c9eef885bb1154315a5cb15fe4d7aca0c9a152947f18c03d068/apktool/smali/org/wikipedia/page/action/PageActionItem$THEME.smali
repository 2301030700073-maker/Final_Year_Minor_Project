.class public final Lorg/wikipedia/page/action/PageActionItem$THEME;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 5
    .line 6
    iget-object p0, p1, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v0, "theme"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lokio/Okio__OkioKt;->leadImageHeightForDevice(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-ge p1, v0, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lorg/wikipedia/page/PageFragment;->scrolledUpForThemeChange:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lokio/Okio__OkioKt;->leadImageHeightForDevice(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    filled-new-array {v0, v2}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "scrollY"

    .line 64
    .line 65
    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-wide/16 v2, 0xfa

    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v2, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;

    .line 79
    .line 80
    invoke-direct {v2, v1, p0}, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->scrolledUpForThemeChange:Z

    .line 91
    .line 92
    sget p1, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 93
    .line 94
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

    .line 95
    .line 96
    invoke-static {p1, v1}, Lorg/wikipedia/login/LoginClient;->newInstance(Lorg/wikipedia/Constants$InvokeSource;Z)Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
