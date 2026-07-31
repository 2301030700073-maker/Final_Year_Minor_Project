.class public final Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field public static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field public final mAnchor:Landroid/view/View;

.field public mAnchorX:I

.field public mAnchorY:I

.field public mForceNextChangeSignificant:Z

.field public mFromTouch:Z

.field public final mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

.field public final mHoverSlop:I

.field public mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field public final mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

.field public final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x1c

    .line 37
    .line 38
    if-lt v0, v2, :cond_0

    .line 39
    .line 40
    invoke-static {p2}, Landroidx/webkit/internal/ApiHelperForP;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    div-int/lit8 p2, p2, 0x2

    .line 50
    .line 51
    :goto_0
    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 52
    .line 53
    iput-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v1, v1

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, p0, :cond_2

    .line 7
    .line 8
    sput-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/content/Context;

    .line 27
    .line 28
    const-string/jumbo v4, "window"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/WindowManager;

    .line 36
    .line 37
    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iput-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "TooltipCompatHandler"

    .line 50
    .line 51
    const-string v3, "sActiveHandler.mPopup == null"

    .line 52
    .line 53
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 57
    .line 58
    if-ne v0, p0, :cond_3

    .line 59
    .line 60
    invoke-static {v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "accessibility"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x7

    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    const/16 p1, 0xa

    .line 46
    .line 47
    if-eq v1, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    float-to-int p1, p1

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    float-to-int p2, p2

    .line 77
    iget-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 82
    .line 83
    sub-int v1, p1, v1

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 90
    .line 91
    if-gt v1, v2, :cond_4

    .line 92
    .line 93
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 94
    .line 95
    sub-int v1, p2, v1

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-le v1, v2, :cond_5

    .line 102
    .line 103
    :cond_4
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 104
    .line 105
    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 106
    .line 107
    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    .line 108
    .line 109
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_0
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    div-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final show(Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sput-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 24
    .line 25
    move/from16 v3, p1

    .line 26
    .line 27
    iput-boolean v3, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 28
    .line 29
    new-instance v3, Landroidx/appcompat/widget/TooltipPopup;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v5, v3, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance v6, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v6, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    new-array v7, v6, [I

    .line 54
    .line 55
    iput-object v7, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 56
    .line 57
    new-array v7, v6, [I

    .line 58
    .line 59
    iput-object v7, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v4, v3, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const v8, 0x7f0c001b

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, v3, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    .line 75
    .line 76
    const v7, 0x7f09028f

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v2, v3, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 86
    .line 87
    const-string v2, "TooltipPopup"

    .line 88
    .line 89
    invoke-virtual {v5, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iput-object v4, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    const/16 v4, 0x3ea

    .line 99
    .line 100
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 101
    .line 102
    const/4 v4, -0x2

    .line 103
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    .line 105
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    .line 107
    const/4 v4, -0x3

    .line 108
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 109
    .line 110
    const v4, 0x7f130004

    .line 111
    .line 112
    .line 113
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 114
    .line 115
    const/16 v4, 0x18

    .line 116
    .line 117
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    .line 119
    iget-object v4, v3, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v4, Landroid/view/View;

    .line 122
    .line 123
    iget-object v5, v3, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v5, Landroid/content/Context;

    .line 126
    .line 127
    iput-object v3, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 128
    .line 129
    iget v7, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 130
    .line 131
    iget v8, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 132
    .line 133
    iget-boolean v9, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 134
    .line 135
    iget-object v10, v3, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const-string/jumbo v12, "window"

    .line 144
    .line 145
    .line 146
    if-eqz v11, :cond_2

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    if-eqz v11, :cond_2

    .line 153
    .line 154
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    check-cast v11, Landroid/view/WindowManager;

    .line 159
    .line 160
    invoke-interface {v11, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    iget-object v11, v3, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v11, Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v13, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 168
    .line 169
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object v11, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v11, [I

    .line 175
    .line 176
    iget-object v13, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v13, [I

    .line 179
    .line 180
    iget-object v3, v3, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    iput-object v14, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    const v15, 0x7f0704c2

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    if-lt v15, v14, :cond_3

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    div-int/2addr v7, v6

    .line 213
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    if-lt v15, v14, :cond_4

    .line 218
    .line 219
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    const v15, 0x7f0704c1

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    add-int v15, v8, v14

    .line 231
    .line 232
    sub-int/2addr v8, v14

    .line 233
    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    const/4 v8, 0x0

    .line 239
    :goto_1
    const/16 v14, 0x31

    .line 240
    .line 241
    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    .line 243
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    if-eqz v9, :cond_5

    .line 248
    .line 249
    const v16, 0x7f0704c5

    .line 250
    .line 251
    .line 252
    :goto_2
    move/from16 v6, v16

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_5
    const v16, 0x7f0704c4

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :goto_3
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    move/from16 v16, v6

    .line 268
    .line 269
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    move/from16 v17, v7

    .line 274
    .line 275
    instance-of v7, v6, Landroid/view/WindowManager$LayoutParams;

    .line 276
    .line 277
    if-eqz v7, :cond_6

    .line 278
    .line 279
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 280
    .line 281
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 282
    .line 283
    const/4 v7, 0x2

    .line 284
    if-ne v6, v7, :cond_6

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    :goto_4
    instance-of v7, v6, Landroid/content/ContextWrapper;

    .line 292
    .line 293
    if-eqz v7, :cond_8

    .line 294
    .line 295
    instance-of v7, v6, Landroid/app/Activity;

    .line 296
    .line 297
    if-eqz v7, :cond_7

    .line 298
    .line 299
    check-cast v6, Landroid/app/Activity;

    .line 300
    .line 301
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    goto :goto_5

    .line 310
    :cond_7
    check-cast v6, Landroid/content/ContextWrapper;

    .line 311
    .line 312
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    goto :goto_4

    .line 317
    :cond_8
    :goto_5
    if-nez v14, :cond_9

    .line 318
    .line 319
    const-string v3, "Cannot find app view"

    .line 320
    .line 321
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    const/16 v18, 0x1

    .line 325
    .line 326
    goto/16 :goto_8

    .line 327
    .line 328
    :cond_9
    invoke-virtual {v14, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 329
    .line 330
    .line 331
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 332
    .line 333
    if-gez v2, :cond_b

    .line 334
    .line 335
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 336
    .line 337
    if-gez v2, :cond_b

    .line 338
    .line 339
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    const-string v7, "dimen"

    .line 344
    .line 345
    const/16 v18, 0x1

    .line 346
    .line 347
    const-string v6, "android"

    .line 348
    .line 349
    move/from16 v19, v8

    .line 350
    .line 351
    const-string v8, "status_bar_height"

    .line 352
    .line 353
    invoke-virtual {v2, v8, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_a

    .line 358
    .line 359
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    goto :goto_6

    .line 364
    :cond_a
    const/4 v6, 0x0

    .line 365
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 370
    .line 371
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 372
    .line 373
    const/4 v8, 0x0

    .line 374
    invoke-virtual {v3, v8, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_b
    move/from16 v19, v8

    .line 379
    .line 380
    const/4 v8, 0x0

    .line 381
    const/16 v18, 0x1

    .line 382
    .line 383
    :goto_7
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 387
    .line 388
    .line 389
    aget v2, v13, v8

    .line 390
    .line 391
    aget v6, v11, v8

    .line 392
    .line 393
    sub-int/2addr v2, v6

    .line 394
    aput v2, v13, v8

    .line 395
    .line 396
    aget v6, v13, v18

    .line 397
    .line 398
    aget v7, v11, v18

    .line 399
    .line 400
    sub-int/2addr v6, v7

    .line 401
    aput v6, v13, v18

    .line 402
    .line 403
    add-int v2, v2, v17

    .line 404
    .line 405
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    const/4 v7, 0x2

    .line 410
    div-int/2addr v6, v7

    .line 411
    sub-int/2addr v2, v6

    .line 412
    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 413
    .line 414
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    aget v6, v13, v18

    .line 426
    .line 427
    add-int v8, v6, v19

    .line 428
    .line 429
    sub-int v8, v8, v16

    .line 430
    .line 431
    sub-int/2addr v8, v2

    .line 432
    add-int/2addr v6, v15

    .line 433
    add-int v6, v6, v16

    .line 434
    .line 435
    if-eqz v9, :cond_d

    .line 436
    .line 437
    if-ltz v8, :cond_c

    .line 438
    .line 439
    iput v8, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_c
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_d
    add-int/2addr v2, v6

    .line 446
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-gt v2, v3, :cond_e

    .line 451
    .line 452
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_e
    iput v8, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 456
    .line 457
    :goto_8
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Landroid/view/WindowManager;

    .line 462
    .line 463
    invoke-interface {v2, v4, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 467
    .line 468
    .line 469
    iget-boolean v2, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 470
    .line 471
    if-eqz v2, :cond_f

    .line 472
    .line 473
    const-wide/16 v2, 0x9c4

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_f
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    and-int/lit8 v2, v2, 0x1

    .line 483
    .line 484
    move/from16 v3, v18

    .line 485
    .line 486
    if-ne v2, v3, :cond_10

    .line 487
    .line 488
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    int-to-long v2, v2

    .line 493
    const-wide/16 v4, 0xbb8

    .line 494
    .line 495
    :goto_9
    sub-long v2, v4, v2

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    int-to-long v2, v2

    .line 503
    const-wide/16 v4, 0x3a98

    .line 504
    .line 505
    goto :goto_9

    .line 506
    :goto_a
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    .line 507
    .line 508
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    .line 513
    .line 514
    return-void
.end method
