.class public final Lorg/wikipedia/page/ViewHideHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnClickListener;


# instance fields
.field public enabled:Z

.field public final gravity:I

.field public final hideableView:Landroid/view/View;

.field public final shouldAlwaysShow:Lkotlin/jvm/functions/Function0;

.field public final updateElevation:Z

.field public webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method public constructor <init>(Landroid/view/View;IZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/page/ViewHideHandler;->gravity:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/page/ViewHideHandler;->updateElevation:Z

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/page/ViewHideHandler;->shouldAlwaysShow:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final ensureDisplayed()V
    .locals 2

    .line 1
    sget v0, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final ensureHidden()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/ViewHideHandler;->gravity:I

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    neg-int v0, v0

    .line 19
    :goto_0
    sget v1, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p0, v0, v1}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onClick()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    cmpg-float v1, v1, v2

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x50

    .line 17
    .line 18
    iget v2, p0, Lorg/wikipedia/page/ViewHideHandler;->gravity:I

    .line 19
    .line 20
    if-eq v2, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x30

    .line 23
    .line 24
    if-ne v2, v1, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lorg/wikipedia/page/ViewHideHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-le v1, v0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo p0, "webView"

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureHidden()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public final onScrollChanged(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    const/16 v0, 0x30

    .line 8
    .line 9
    iget v1, p0, Lorg/wikipedia/page/ViewHideHandler;->gravity:I

    .line 10
    .line 11
    if-ne v1, v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lorg/wikipedia/page/ViewHideHandler;->shouldAlwaysShow:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sub-int v2, p2, p1

    .line 32
    .line 33
    const/16 v3, 0x50

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iget-object v5, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 37
    .line 38
    if-ne v1, v3, :cond_4

    .line 39
    .line 40
    if-ge p1, p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    float-to-int v1, v1

    .line 51
    add-int/2addr v1, v2

    .line 52
    if-le v0, v1, :cond_3

    .line 53
    .line 54
    :goto_0
    move v0, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    add-int/2addr v0, v2

    .line 62
    if-lez v0, :cond_6

    .line 63
    .line 64
    :cond_3
    :goto_1
    move v4, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    if-ne v1, v0, :cond_6

    .line 67
    .line 68
    if-le p1, p2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    sub-int/2addr v0, v2

    .line 76
    if-gez v0, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    neg-int v0, v0

    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    float-to-int v1, v1

    .line 89
    sub-int/2addr v1, v2

    .line 90
    if-ge v0, v1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    :goto_2
    int-to-float v0, v4

    .line 94
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 95
    .line 96
    .line 97
    iget-boolean p0, p0, Lorg/wikipedia/page/ViewHideHandler;->updateElevation:Z

    .line 98
    .line 99
    if-eqz p0, :cond_9

    .line 100
    .line 101
    if-nez p2, :cond_7

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    const p0, 0x7f0704a0

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-static {p0}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    cmpg-float p1, p0, p1

    .line 123
    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    invoke-virtual {v5, p0}, Landroid/view/View;->setElevation(F)V

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_4
    return-void
.end method

.method public final onUpOrCancelMotionEvent()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/ViewHideHandler;->hideableView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    float-to-int v1, v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x50

    .line 18
    .line 19
    iget v4, p0, Lorg/wikipedia/page/ViewHideHandler;->gravity:I

    .line 20
    .line 21
    if-ne v4, v3, :cond_2

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    div-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureHidden()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const/16 v3, 0x30

    .line 40
    .line 41
    if-ne v4, v3, :cond_5

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    neg-int v2, v2

    .line 46
    if-le v1, v2, :cond_5

    .line 47
    .line 48
    div-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    if-gt v1, v2, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/page/ViewHideHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-le v1, v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureHidden()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    const-string/jumbo p0, "webView"

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    throw p0

    .line 78
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_0
    return-void
.end method
