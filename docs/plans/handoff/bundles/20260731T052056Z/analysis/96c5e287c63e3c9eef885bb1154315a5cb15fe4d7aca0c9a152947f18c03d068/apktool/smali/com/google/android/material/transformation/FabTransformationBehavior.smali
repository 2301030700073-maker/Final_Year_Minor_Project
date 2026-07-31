.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public dependencyOriginalTranslationX:F

.field public dependencyOriginalTranslationY:F

.field public final tmpArray:[I

.field public final tmpRect:Landroid/graphics/Rect;

.field public final tmpRectF1:Landroid/graphics/RectF;

.field public final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 34
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 35
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public static calculateMotionTiming(FFZLokhttp3/FormBody$Builder;)Landroid/util/Pair;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p0, p0, v0

    .line 3
    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    cmpl-float p0, p1, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    cmpg-float p1, p1, v0

    .line 14
    .line 15
    if-ltz p1, :cond_2

    .line 16
    .line 17
    :cond_1
    if-nez p2, :cond_3

    .line 18
    .line 19
    if-lez p0, :cond_3

    .line 20
    .line 21
    :cond_2
    iget-object p0, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    .line 24
    .line 25
    const-string/jumbo p1, "translationXCurveUpwards"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lcom/google/android/material/animation/MotionSpec;

    .line 35
    .line 36
    const-string/jumbo p2, "translationYCurveUpwards"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object p0, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    .line 47
    .line 48
    const-string/jumbo p1, "translationXCurveDownwards"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p1, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lcom/google/android/material/animation/MotionSpec;

    .line 58
    .line 59
    const-string/jumbo p2, "translationYCurveDownwards"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    iget-object p0, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    .line 70
    .line 71
    const-string/jumbo p1, "translationXLinear"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p1, p3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/google/android/material/animation/MotionSpec;

    .line 81
    .line 82
    const-string/jumbo p2, "translationYLinear"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    new-instance p2, Landroid/util/Pair;

    .line 90
    .line 91
    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object p2
.end method

.method public static calculateValueOfAnimationAtEndOfExpansion(Lokhttp3/FormBody$Builder;Lcom/google/android/material/animation/MotionTiming;F)F
    .locals 8

    .line 1
    iget-wide v0, p1, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    .line 8
    .line 9
    const-string v4, "expansion"

    .line 10
    .line 11
    invoke-virtual {p0, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-wide v4, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 16
    .line 17
    iget-wide v6, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 18
    .line 19
    add-long/2addr v4, v6

    .line 20
    const-wide/16 v6, 0x11

    .line 21
    .line 22
    add-long/2addr v4, v6

    .line 23
    sub-long/2addr v4, v0

    .line 24
    long-to-float p0, v4

    .line 25
    long-to-float v0, v2

    .line 26
    div-float/2addr p0, v0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p2, p1, p0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method


# virtual methods
.method public final calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-float/2addr p0, p1

    .line 30
    const/4 p1, 0x0

    .line 31
    add-float/2addr p0, p1

    .line 32
    return p0
.end method

.method public final calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-float/2addr p0, p1

    .line 30
    const/4 p1, 0x0

    .line 31
    add-float/2addr p0, p1

    .line 32
    return p0
.end method

.method public final calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aget v0, p0, v0

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    const/4 v1, 0x1

    .line 25
    aget p0, p0, v1

    .line 26
    .line 27
    int-to-float p0, p0

    .line 28
    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    neg-float p0, p0

    .line 36
    float-to-int p0, p0

    .line 37
    int-to-float p0, p0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    neg-float p1, p1

    .line 43
    float-to-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne p0, p1, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    const-string p0, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    .line 32
    .line 33
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1
.end method

.method public final onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 1
    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x50

    .line 6
    .line 7
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 10
    .line 11
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v0, v6, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lokhttp3/FormBody$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 34
    .line 35
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v8, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    sub-float/2addr v9, v10

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x1

    .line 56
    const/4 v12, 0x0

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    if-nez p4, :cond_1

    .line 60
    .line 61
    neg-float v9, v9

    .line 62
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 66
    .line 67
    new-array v13, v11, [F

    .line 68
    .line 69
    aput v12, v13, v10

    .line 70
    .line 71
    invoke-static {v2, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 77
    .line 78
    neg-float v9, v9

    .line 79
    new-array v14, v11, [F

    .line 80
    .line 81
    aput v9, v14, v10

    .line 82
    .line 83
    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    :goto_0
    iget-object v13, v6, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v13, Lcom/google/android/material/animation/MotionSpec;

    .line 90
    .line 91
    const-string v14, "elevation"

    .line 92
    .line 93
    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v13, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-object v9, v6, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v9, Landroidx/collection/internal/Lock;

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iget-object v13, v6, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v13, Landroidx/collection/internal/Lock;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-static {v9, v13, v3, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLokhttp3/FormBody$Builder;)Landroid/util/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v15, Lcom/google/android/material/animation/MotionTiming;

    .line 126
    .line 127
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v14, Lcom/google/android/material/animation/MotionTiming;

    .line 130
    .line 131
    move/from16 v16, v10

    .line 132
    .line 133
    iget-object v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 134
    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    move/from16 v17, v12

    .line 138
    .line 139
    if-nez p4, :cond_3

    .line 140
    .line 141
    neg-float v12, v9

    .line 142
    invoke-virtual {v2, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    .line 144
    .line 145
    neg-float v12, v13

    .line 146
    invoke-virtual {v2, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    .line 148
    .line 149
    :cond_3
    new-array v12, v11, [F

    .line 150
    .line 151
    aput v17, v12, v16

    .line 152
    .line 153
    invoke-static {v2, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    move-object/from16 v18, v12

    .line 158
    .line 159
    new-array v12, v11, [F

    .line 160
    .line 161
    aput v17, v12, v16

    .line 162
    .line 163
    invoke-static {v2, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    neg-float v9, v9

    .line 168
    neg-float v13, v13

    .line 169
    invoke-static {v6, v15, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lokhttp3/FormBody$Builder;Lcom/google/android/material/animation/MotionTiming;F)F

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    invoke-static {v6, v14, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lokhttp3/FormBody$Builder;Lcom/google/android/material/animation/MotionTiming;F)F

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    iget-object v11, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {v2, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 183
    .line 184
    .line 185
    iget-object v11, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 186
    .line 187
    invoke-virtual {v0, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11, v9, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v10}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 197
    .line 198
    .line 199
    move-object v9, v12

    .line 200
    move-object/from16 v12, v18

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    move/from16 v17, v12

    .line 204
    .line 205
    neg-float v9, v9

    .line 206
    const/4 v11, 0x1

    .line 207
    new-array v12, v11, [F

    .line 208
    .line 209
    aput v9, v12, v16

    .line 210
    .line 211
    invoke-static {v2, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    neg-float v9, v13

    .line 216
    new-array v13, v11, [F

    .line 217
    .line 218
    aput v9, v13, v16

    .line 219
    .line 220
    invoke-static {v2, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    :goto_1
    invoke-virtual {v15, v12}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v14, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 240
    .line 241
    .line 242
    iget-object v9, v6, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v9, Landroidx/collection/internal/Lock;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    iget-object v10, v6, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v10, Landroidx/collection/internal/Lock;

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroidx/collection/internal/Lock;)F

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    invoke-static {v9, v10, v3, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLokhttp3/FormBody$Builder;)Landroid/util/Pair;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v12, Lcom/google/android/material/animation/MotionTiming;

    .line 265
    .line 266
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v11, Lcom/google/android/material/animation/MotionTiming;

    .line 269
    .line 270
    if-eqz v3, :cond_5

    .line 271
    .line 272
    :goto_2
    const/4 v13, 0x1

    .line 273
    goto :goto_3

    .line 274
    :cond_5
    iget v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :goto_3
    new-array v14, v13, [F

    .line 278
    .line 279
    aput v9, v14, v16

    .line 280
    .line 281
    invoke-static {v1, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    if-eqz v3, :cond_6

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_6
    iget v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 289
    .line 290
    :goto_4
    new-array v0, v13, [F

    .line 291
    .line 292
    aput v10, v0, v16

    .line 293
    .line 294
    invoke-static {v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v12, v5}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v11, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    instance-of v0, v2, Landroid/view/ViewGroup;

    .line 311
    .line 312
    if-nez v0, :cond_7

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_7
    const v0, 0x7f090426

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_9

    .line 323
    .line 324
    instance-of v4, v0, Landroid/view/ViewGroup;

    .line 325
    .line 326
    if-eqz v4, :cond_8

    .line 327
    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_8
    const/4 v0, 0x0

    .line 332
    goto :goto_5

    .line 333
    :cond_9
    move-object v0, v2

    .line 334
    check-cast v0, Landroid/view/ViewGroup;

    .line 335
    .line 336
    :goto_5
    if-nez v0, :cond_a

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_a
    if-eqz v3, :cond_c

    .line 340
    .line 341
    if-nez p4, :cond_b

    .line 342
    .line 343
    sget-object v4, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 344
    .line 345
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v4, v0, v5}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_b
    sget-object v4, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 353
    .line 354
    const/4 v11, 0x1

    .line 355
    new-array v5, v11, [F

    .line 356
    .line 357
    const/high16 v9, 0x3f800000    # 1.0f

    .line 358
    .line 359
    aput v9, v5, v16

    .line 360
    .line 361
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    goto :goto_6

    .line 366
    :cond_c
    const/4 v11, 0x1

    .line 367
    sget-object v4, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 368
    .line 369
    new-array v5, v11, [F

    .line 370
    .line 371
    aput v17, v5, v16

    .line 372
    .line 373
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    :goto_6
    iget-object v4, v6, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v4, Lcom/google/android/material/animation/MotionSpec;

    .line 380
    .line 381
    const-string v5, "contentFade"

    .line 382
    .line 383
    invoke-virtual {v4, v5}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v4, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/ObjectAnimator;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :goto_7
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 394
    .line 395
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v7}, Lkotlin/text/RegexKt;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 399
    .line 400
    .line 401
    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    .line 402
    .line 403
    invoke-direct {v4, v3, v2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    move/from16 v10, v16

    .line 414
    .line 415
    :goto_8
    if-ge v10, v1, :cond_d

    .line 416
    .line 417
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    .line 425
    .line 426
    add-int/lit8 v10, v10, 0x1

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_d
    return-object v0
.end method

.method public abstract onCreateMotionSpec(Landroid/content/Context;Z)Lokhttp3/FormBody$Builder;
.end method
