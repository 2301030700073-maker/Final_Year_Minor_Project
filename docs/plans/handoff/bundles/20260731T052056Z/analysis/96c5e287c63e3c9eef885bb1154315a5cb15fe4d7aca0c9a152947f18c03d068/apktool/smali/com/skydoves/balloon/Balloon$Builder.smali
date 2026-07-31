.class public final Lcom/skydoves/balloon/Balloon$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public arrowAlignAnchorPadding:I

.field public arrowDrawable:Landroid/graphics/drawable/Drawable;

.field public arrowHeight:I

.field public arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

.field public arrowOrientationRules:Lcom/skydoves/balloon/ArrowOrientationRules;

.field public arrowPositionRules:Lcom/skydoves/balloon/ArrowPositionRules;

.field public arrowSize:I

.field public arrowWidth:I

.field public backgroundColor:I

.field public balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

.field public balloonHighlightAnimation:Lcom/skydoves/balloon/BalloonHighlightAnimation;

.field public balloonOverlayAnimation:Lcom/skydoves/balloon/overlay/BalloonOverlayAnimation;

.field public cornerRadius:F

.field public dismissWhenTouchOutside:Z

.field public elevation:F

.field public height:I

.field public iconGravity:Lcom/skydoves/balloon/IconGravity;

.field public isFocusable:Z

.field public isRtlLayout:Z

.field public layout:Landroid/widget/LinearLayout;

.field public lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public marginBottom:I

.field public marginLeft:I

.field public marginRight:I

.field public marginTop:I

.field public maxWidth:I

.field public supportRtlLayoutFactor:I

.field public width:I


# virtual methods
.method public final synthetic getEffectiveArrowHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowHeight:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p0, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 9
    .line 10
    return p0
.end method

.method public final synthetic getEffectiveArrowWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowWidth:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p0, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 9
    .line 10
    return p0
.end method
