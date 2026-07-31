.class public final synthetic Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onValueChanged()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p0, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    cmpl-float v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 41
    .line 42
    if-eq v1, v0, :cond_1

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
