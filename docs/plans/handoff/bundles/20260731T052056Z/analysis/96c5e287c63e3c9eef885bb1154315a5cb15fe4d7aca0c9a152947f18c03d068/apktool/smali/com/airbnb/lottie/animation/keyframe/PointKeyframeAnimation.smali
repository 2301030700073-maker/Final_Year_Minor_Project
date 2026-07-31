.class public final Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final point:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/graphics/PointF;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 21
    .line 22
    const/high16 p2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-direct {p1, p2, p2}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    move v0, p2

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ge p2, v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 54
    .line 55
    array-length v1, v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 64
    .line 65
    new-array p2, v0, [F

    .line 66
    .line 67
    new-array v0, v0, [I

    .line 68
    .line 69
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;FF)Landroid/graphics/PointF;
    .locals 3

    .line 188
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 189
    check-cast v0, Landroid/graphics/PointF;

    .line 190
    check-cast p1, Landroid/graphics/PointF;

    .line 191
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v1, p2, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    move-result p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, p3, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p0

    .line 192
    :cond_0
    const-string p0, "Missing values for keyframe."

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lcom/airbnb/lottie/value/ScaleXY;

    .line 10
    .line 11
    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 20
    .line 21
    check-cast p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 22
    .line 23
    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 24
    .line 25
    iget v1, p1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 26
    .line 27
    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget p0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 32
    .line 33
    iget p1, p1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 34
    .line 35
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput v0, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 40
    .line 41
    iput p0, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p0, "Missing values for keyframe."

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object v1

    .line 51
    :pswitch_0
    check-cast v2, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 52
    .line 53
    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 60
    .line 61
    iget-object v0, v2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 62
    .line 63
    iget-object v3, v2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    move-object v1, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_2
    const/4 v4, 0x0

    .line 79
    cmpg-float v4, p2, v4

    .line 80
    .line 81
    if-gtz v4, :cond_3

    .line 82
    .line 83
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 88
    .line 89
    cmpl-float v4, p2, v4

    .line 90
    .line 91
    if-ltz v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    array-length v4, v5

    .line 98
    iget-object v6, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 99
    .line 100
    array-length v7, v6

    .line 101
    if-ne v4, v7, :cond_6

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    :goto_2
    array-length v4, v5

    .line 105
    if-ge v1, v4, :cond_5

    .line 106
    .line 107
    iget-object v4, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 108
    .line 109
    aget v4, v4, v1

    .line 110
    .line 111
    iget-object v7, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 112
    .line 113
    aget v7, v7, v1

    .line 114
    .line 115
    invoke-static {v4, v7, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    aput v4, v3, v1

    .line 120
    .line 121
    aget v4, v5, v1

    .line 122
    .line 123
    aget v7, v6, v1

    .line 124
    .line 125
    invoke-static {v4, p2, v7}, Lkotlin/uuid/UuidKt;->evaluate(IFI)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    aput v4, v0, v1

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    array-length p0, v5

    .line 135
    :goto_3
    array-length p1, v3

    .line 136
    if-ge p0, p1, :cond_1

    .line 137
    .line 138
    array-length p1, v5

    .line 139
    add-int/lit8 p1, p1, -0x1

    .line 140
    .line 141
    aget p1, v3, p1

    .line 142
    .line 143
    aput p1, v3, p0

    .line 144
    .line 145
    array-length p1, v5

    .line 146
    add-int/lit8 p1, p1, -0x1

    .line 147
    .line 148
    aget p1, v0, p1

    .line 149
    .line 150
    aput p1, v0, p0

    .line 151
    .line 152
    add-int/lit8 p0, p0, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string p1, "Cannot interpolate between gradients. Lengths vary ("

    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    array-length p1, v5

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p1, " vs "

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    array-length p1, v6

    .line 172
    const-string p2, ")"

    .line 173
    .line 174
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_4
    return-object v1

    .line 182
    :pswitch_1
    invoke-virtual {p0, p1, p2, p2}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FF)Landroid/graphics/PointF;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
