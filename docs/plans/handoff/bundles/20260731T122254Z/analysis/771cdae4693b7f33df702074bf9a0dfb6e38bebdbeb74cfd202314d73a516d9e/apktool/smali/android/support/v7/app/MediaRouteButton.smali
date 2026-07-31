.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouteButton"


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

.field private mCheatSheetEnabled:Z

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 104
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 109
    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 91
    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 126
    new-instance v0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$1;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    .line 128
    sget-object v0, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    .line 134
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    .line 139
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setLongClickable(Z)V

    .line 140
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteButton;

    .line 79
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 265
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 266
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 268
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .line 254
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 256
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private refreshRoute()V
    .locals 7

    .line 488
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_5

    .line 489
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 490
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 491
    .local v1, "isRemote":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    nop

    .line 493
    .local v2, "isConnecting":Z
    :cond_1
    const/4 v4, 0x0

    .line 494
    .local v4, "needsRefresh":Z
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v1, :cond_2

    .line 495
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    .line 496
    const/4 v4, 0x1

    .line 498
    :cond_2
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v2, :cond_3

    .line 499
    iput-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    .line 500
    const/4 v4, 0x1

    .line 503
    :cond_3
    if-eqz v4, :cond_4

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 507
    :cond_4
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v5, v6, v3}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    .line 510
    .end local v0    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v1    # "isRemote":Z
    .end local v2    # "isConnecting":Z
    .end local v4    # "needsRefresh":Z
    :cond_5
    return-void
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 360
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 365
    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 368
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 371
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 372
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 350
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 352
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 354
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 355
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    .line 357
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 404
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 407
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 410
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 411
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 334
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 340
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 341
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 342
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_1

    .line 343
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 345
    :cond_1
    :goto_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 416
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 420
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 421
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 472
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 473
    .local v1, "right":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 474
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 476
    .local v3, "bottom":I
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 477
    .local v4, "drawWidth":I
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 478
    .local v5, "drawHeight":I
    sub-int v6, v1, v0

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    .line 479
    .local v6, "drawLeft":I
    sub-int v7, v3, v2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 481
    .local v7, "drawTop":I
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v6, v4

    add-int v10, v7, v5

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 485
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v4    # "drawWidth":I
    .end local v5    # "drawHeight":I
    .end local v6    # "drawLeft":I
    .end local v7    # "drawTop":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 425
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 426
    .local v0, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 427
    .local v1, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 428
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 430
    .local v3, "heightMode":I
    iget v4, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 432
    .local v4, "minWidth":I
    iget v5, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    nop

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 436
    .local v5, "minHeight":I
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    .line 445
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 445
    .local v8, "width":I
    goto :goto_1

    .line 438
    .end local v8    # "width":I
    :cond_2
    move v8, v0

    .line 439
    .restart local v8    # "width":I
    goto :goto_1

    .line 441
    .end local v8    # "width":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 442
    .restart local v8    # "width":I
    nop

    .line 450
    :goto_1
    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    .line 459
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 459
    .local v6, "height":I
    goto :goto_2

    .line 452
    .end local v6    # "height":I
    :cond_4
    move v6, v1

    .line 453
    .restart local v6    # "height":I
    goto :goto_2

    .line 455
    .end local v6    # "height":I
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 456
    .restart local v6    # "height":I
    nop

    .line 463
    :goto_2
    invoke-virtual {p0, v8, v6}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 464
    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 284
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 285
    .local v0, "handled":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public performLongClick()Z
    .locals 14

    .line 293
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 294
    return v1

    .line 297
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mCheatSheetEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 298
    return v2

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 302
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    return v2

    .line 307
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 308
    .local v3, "screenPos":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 309
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteButton;->getLocationOnScreen([I)V

    .line 310
    invoke-virtual {p0, v4}, Landroid/support/v7/app/MediaRouteButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 313
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v6

    .line 314
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v7

    .line 315
    .local v7, "height":I
    aget v8, v3, v1

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 316
    .local v8, "midy":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 318
    .local v9, "screenWidth":I
    invoke-static {v5, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 319
    .local v10, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 321
    const v11, 0x800035

    aget v12, v3, v2

    sub-int v12, v9, v12

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    invoke-virtual {v10, v11, v12, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 325
    :cond_3
    const/16 v11, 0x51

    invoke-virtual {v10, v11, v2, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 327
    :goto_0
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->performHapticFeedback(I)Z

    .line 329
    return v1
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 278
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteButton;->mCheatSheetEnabled:Z

    .line 279
    return-void
.end method

.method public setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V
    .locals 2
    .param p1, "factory"    # Landroid/support/v7/app/MediaRouteDialogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 201
    return-void
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 2
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 173
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 174
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 176
    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 395
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_1
    return-void
.end method

.method public showDialog()Z
    .locals 5

    .line 222
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 227
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    if-nez v0, :cond_1

    .line 228
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 232
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    const-string v3, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 243
    const-string v3, "MediaRouteButton"

    const-string v4, "showDialog(): Route controller dialog already showing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1

    .line 246
    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    .line 248
    .local v1, "f":Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    const-string v3, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    .end local v1    # "f":Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    goto :goto_1

    .line 233
    :cond_4
    :goto_0
    const-string v3, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 234
    const-string v3, "MediaRouteButton"

    const-string v4, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v1

    .line 237
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    move-result-object v1

    .line 239
    .local v1, "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 240
    const-string v3, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 241
    .end local v1    # "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    nop

    .line 250
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 376
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
