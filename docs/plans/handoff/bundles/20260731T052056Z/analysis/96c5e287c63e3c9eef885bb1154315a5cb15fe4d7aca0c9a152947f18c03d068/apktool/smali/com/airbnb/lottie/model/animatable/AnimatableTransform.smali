.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final anchorPoint:Lokhttp3/Headers$Builder;

.field public autoOrient:Z

.field public final endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

.field public final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

.field public final rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final scale:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

.field public final skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 32
    invoke-direct/range {v0 .. v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lokhttp3/Headers$Builder;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Headers$Builder;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lokhttp3/Headers$Builder;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 20
    .line 21
    iput-object p8, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 22
    .line 23
    iput-object p9, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 24
    .line 25
    iput-object p10, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 26
    .line 27
    iput-object p11, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 28
    .line 29
    iput-object p12, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
