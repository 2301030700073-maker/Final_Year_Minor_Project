.class public abstract Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ANIMATABLE_NAMES:Lcoil3/svg/internal/AndroidSvg;

.field public static final NAMES:Lcoil3/svg/internal/AndroidSvg;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v10, "rx"

    .line 2
    .line 3
    const-string v11, "ry"

    .line 4
    .line 5
    const-string v0, "a"

    .line 6
    .line 7
    const-string v1, "p"

    .line 8
    .line 9
    const-string v2, "s"

    .line 10
    .line 11
    const-string v3, "rz"

    .line 12
    .line 13
    const-string v4, "r"

    .line 14
    .line 15
    const-string v5, "o"

    .line 16
    .line 17
    const-string v6, "so"

    .line 18
    .line 19
    const-string v7, "eo"

    .line 20
    .line 21
    const-string v8, "sk"

    .line 22
    .line 23
    const-string v9, "sa"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 34
    .line 35
    const-string v0, "k"

    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 46
    .line 47
    return-void
.end method

.method public static ensureValidRotationKeyframes(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    move-result-object v3

    .line 6
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 17
    .line 18
    iget v0, p1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v4, v3

    .line 27
    move-object v2, p1

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    move-object v2, p1

    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 48
    .line 49
    iget v0, v2, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v4, v3

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->isStatic()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v0, 0x0

    .line 29
    cmpl-float p0, p0, v0

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return v1

    .line 35
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v4

    .line 17
    :goto_0
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    move-object v5, v3

    .line 24
    move-object v6, v5

    .line 25
    move-object v7, v6

    .line 26
    move-object v8, v7

    .line 27
    move-object v9, v8

    .line 28
    move-object v10, v9

    .line 29
    move-object v11, v10

    .line 30
    move-object v12, v11

    .line 31
    move-object v13, v12

    .line 32
    move-object/from16 v19, v13

    .line 33
    .line 34
    move-object/from16 v20, v19

    .line 35
    .line 36
    move-object/from16 v21, v20

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    const/high16 v15, 0x3f800000    # 1.0f

    .line 43
    .line 44
    if-eqz v14, :cond_4

    .line 45
    .line 46
    sget-object v14, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 47
    .line 48
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    packed-switch v14, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-static {v12, v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ensureValidRotationKeyframes(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/LottieComposition;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_1
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-static {v11, v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ensureValidRotationKeyframes(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/LottieComposition;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_2
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    goto :goto_1

    .line 83
    :pswitch_3
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    goto :goto_1

    .line 88
    :pswitch_4
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 89
    .line 90
    .line 91
    move-result-object v21

    .line 92
    goto :goto_1

    .line 93
    :pswitch_5
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 94
    .line 95
    .line 96
    move-result-object v20

    .line 97
    goto :goto_1

    .line 98
    :pswitch_6
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 99
    .line 100
    .line 101
    move-result-object v19

    .line 102
    goto :goto_1

    .line 103
    :pswitch_7
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v7, v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ensureValidRotationKeyframes(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/LottieComposition;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_8
    invoke-static {v0, v1, v4}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-static {v13, v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ensureValidRotationKeyframes(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/LottieComposition;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_9
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 120
    .line 121
    sget-object v14, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$5:Lcom/airbnb/lottie/parser/PathParser;

    .line 122
    .line 123
    invoke-static {v0, v1, v15, v14, v4}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    const/4 v15, 0x5

    .line 128
    invoke-direct {v8, v14, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    goto :goto_1

    .line 137
    :pswitch_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_3

    .line 145
    .line 146
    sget-object v14, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 147
    .line 148
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    if-eqz v14, :cond_2

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lokhttp3/Headers$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_4
    if-eqz v2, :cond_5

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 174
    .line 175
    .line 176
    :cond_5
    const/4 v0, 0x0

    .line 177
    if-eqz v5, :cond_6

    .line 178
    .line 179
    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->isStatic()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    iget-object v1, v5, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 192
    .line 193
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Landroid/graphics/PointF;

    .line 196
    .line 197
    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->equals(FF)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    :cond_6
    move-object v5, v3

    .line 204
    :cond_7
    if-eqz v6, :cond_9

    .line 205
    .line 206
    instance-of v1, v6, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    .line 207
    .line 208
    if-nez v1, :cond_8

    .line 209
    .line 210
    invoke-interface {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    invoke-interface {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Landroid/graphics/PointF;

    .line 229
    .line 230
    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->equals(FF)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    move-object/from16 v16, v6

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    :goto_3
    move-object/from16 v16, v3

    .line 241
    .line 242
    :goto_4
    invoke-static {v7}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    move-object/from16 v18, v3

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_a
    move-object/from16 v18, v7

    .line 252
    .line 253
    :goto_5
    if-eqz v8, :cond_c

    .line 254
    .line 255
    invoke-virtual {v8}, Lorg/wikipedia/settings/BasePreferenceLoader;->isStatic()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    iget-object v1, v8, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Ljava/util/List;

    .line 264
    .line 265
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 270
    .line 271
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 274
    .line 275
    iget v2, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 276
    .line 277
    cmpl-float v2, v2, v15

    .line 278
    .line 279
    if-nez v2, :cond_b

    .line 280
    .line 281
    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 282
    .line 283
    cmpl-float v1, v1, v15

    .line 284
    .line 285
    if-nez v1, :cond_b

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    move-object/from16 v17, v8

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_c
    :goto_6
    move-object/from16 v17, v3

    .line 292
    .line 293
    :goto_7
    if-eqz v9, :cond_e

    .line 294
    .line 295
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->isStatic()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_d

    .line 300
    .line 301
    iget-object v1, v9, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v1, Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 310
    .line 311
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v1, Ljava/lang/Float;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    cmpl-float v1, v1, v0

    .line 320
    .line 321
    if-nez v1, :cond_d

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_d
    move-object/from16 v22, v9

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_e
    :goto_8
    move-object/from16 v22, v3

    .line 328
    .line 329
    :goto_9
    if-eqz v10, :cond_10

    .line 330
    .line 331
    invoke-virtual {v10}, Lorg/wikipedia/settings/BasePreferenceLoader;->isStatic()Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_f

    .line 336
    .line 337
    iget-object v1, v10, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v1, Ljava/util/List;

    .line 340
    .line 341
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 346
    .line 347
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Ljava/lang/Float;

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    cmpl-float v0, v1, v0

    .line 356
    .line 357
    if-nez v0, :cond_f

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_f
    move-object/from16 v23, v10

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_10
    :goto_a
    move-object/from16 v23, v3

    .line 364
    .line 365
    :goto_b
    invoke-static {v11}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_11

    .line 370
    .line 371
    move-object/from16 v24, v3

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_11
    move-object/from16 v24, v11

    .line 375
    .line 376
    :goto_c
    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_12

    .line 381
    .line 382
    move-object/from16 v25, v3

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_12
    move-object/from16 v25, v12

    .line 386
    .line 387
    :goto_d
    invoke-static {v13}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_13

    .line 392
    .line 393
    move-object/from16 v26, v3

    .line 394
    .line 395
    goto :goto_e

    .line 396
    :cond_13
    move-object/from16 v26, v13

    .line 397
    .line 398
    :goto_e
    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 399
    .line 400
    move-object v15, v5

    .line 401
    invoke-direct/range {v14 .. v26}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lokhttp3/Headers$Builder;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 402
    .line 403
    .line 404
    return-object v14

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
