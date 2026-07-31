.class public final Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public amount:F

.field public final type:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 20
    iput p2, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    .line 5
    return-object p0
.end method

.method public getEndProgress()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getStartDelayProgress()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isValueChanged(F)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method
