.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

.field public static final INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

.field public static final INSTANCE$2:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

.field public static final INSTANCE$3:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

.field public static final INSTANCE$4:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

.field public static final INSTANCE$5:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$2:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$3:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$4:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;-><init>(II)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$5:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->$r8$classId:I

    .line 2
    .line 3
    const-wide v0, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    const/4 p1, 0x7

    .line 18
    invoke-static {p0, p0, v3, p1}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 24
    .line 25
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 26
    .line 27
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    int-to-long v3, p0

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-long p0, p0

    .line 39
    shl-long v2, v3, v2

    .line 40
    .line 41
    and-long/2addr p0, v0

    .line 42
    or-long/2addr p0, v2

    .line 43
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 50
    .line 51
    iget-wide p0, p1, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    .line 52
    .line 53
    new-instance v3, Landroidx/compose/animation/core/AnimationVector2D;

    .line 54
    .line 55
    shr-long v4, p0, v2

    .line 56
    .line 57
    long-to-int v2, v4

    .line 58
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    and-long/2addr p0, v0

    .line 63
    long-to-int p0, p0

    .line 64
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-direct {v3, v2, p0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 73
    .line 74
    iget-wide p0, p1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 75
    .line 76
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 77
    .line 78
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 79
    .line 80
    .line 81
    move-result-wide p0

    .line 82
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    new-instance p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 99
    .line 100
    invoke-direct {p1, p0, v0, v1, v2}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 101
    .line 102
    .line 103
    :pswitch_3
    return-object p1

    .line 104
    :pswitch_4
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 105
    .line 106
    const/16 p0, 0xdc

    .line 107
    .line 108
    const/4 p1, 0x4

    .line 109
    invoke-static {p0, p1, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0, p1, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    sget-wide v1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 122
    .line 123
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 124
    .line 125
    new-instance v4, Landroidx/compose/animation/TransitionData;

    .line 126
    .line 127
    new-instance v5, Landroidx/compose/animation/Scale;

    .line 128
    .line 129
    const v6, 0x3f6b851f    # 0.92f

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, v6, v1, v2, p0}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 133
    .line 134
    .line 135
    const/16 p0, 0x77

    .line 136
    .line 137
    invoke-direct {v4, v3, v5, v3, p0}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v4}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const/4 p1, 0x6

    .line 148
    const/16 v0, 0x5a

    .line 149
    .line 150
    invoke-static {v0, p1, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 159
    .line 160
    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
