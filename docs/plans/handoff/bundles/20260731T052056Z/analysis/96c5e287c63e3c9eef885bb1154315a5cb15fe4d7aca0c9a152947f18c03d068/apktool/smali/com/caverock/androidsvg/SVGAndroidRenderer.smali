.class public final Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;


# static fields
.field public static supportedFeatures:Ljava/util/HashSet;


# instance fields
.field public canvas:Ljava/lang/Object;

.field public document:Ljava/lang/Object;

.field public matrixStack:Ljava/lang/Object;

.field public parentStack:Ljava/lang/Object;

.field public state:Ljava/lang/Object;

.field public stateStack:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0800b1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f080067

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0800b3

    .line 14
    .line 15
    .line 16
    filled-new-array {v1, p1, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 p1, 0x7

    .line 23
    new-array v0, p1, [I

    .line 24
    .line 25
    fill-array-data v0, :array_0

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 29
    .line 30
    new-array p1, p1, [I

    .line 31
    .line 32
    fill-array-data p1, :array_1

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 36
    .line 37
    const p1, 0x7f080076

    .line 38
    .line 39
    .line 40
    const v0, 0x7f080097

    .line 41
    .line 42
    .line 43
    const v1, 0x7f080098

    .line 44
    .line 45
    .line 46
    filled-new-array {v1, p1, v0}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 51
    .line 52
    const p1, 0x7f0800aa

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0800b4

    .line 56
    .line 57
    .line 58
    filled-new-array {p1, v0}, [I

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 63
    .line 64
    const p1, 0x7f08006b

    .line 65
    .line 66
    .line 67
    const v0, 0x7f080071

    .line 68
    .line 69
    .line 70
    const v1, 0x7f08006a

    .line 71
    .line 72
    .line 73
    const v2, 0x7f080070

    .line 74
    .line 75
    .line 76
    filled-new-array {v1, v2, p1, v0}, [I

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 93
    .line 94
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 101
    .line 102
    const-string p1, "PublicSuffixDatabase.list"

    .line 103
    .line 104
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_0
    .array-data 4
        0x7f08007f
        0x7f0800a2
        0x7f080086
        0x7f080081
        0x7f080082
        0x7f080085
        0x7f080084
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 4
        0x7f0800b0
        0x7f0800b2
        0x7f080078
        0x7f0800ac
        0x7f0800ad
        0x7f0800ae
        0x7f0800af
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    iput-object p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    iput-object p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    iput-object p5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    iput-object p6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    iput-object p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    iput-object p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    iput-object p5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    iput-object p6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    iput-object p7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 110
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    return-void
.end method

.method public static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 36

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    move/from16 v3, p8

    .line 6
    .line 7
    cmpl-float v4, p0, p7

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    cmpl-float v4, p1, v3

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    cmpl-float v5, p2, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    cmpl-float v4, p3, v4

    .line 23
    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    :cond_1
    move/from16 v2, p7

    .line 27
    .line 28
    move-object/from16 v0, p9

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    float-to-double v6, v0

    .line 41
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    rem-double/2addr v6, v8

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    sub-float v10, p0, p7

    .line 60
    .line 61
    float-to-double v10, v10

    .line 62
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 63
    .line 64
    div-double/2addr v10, v12

    .line 65
    sub-float v14, p1, v3

    .line 66
    .line 67
    float-to-double v14, v14

    .line 68
    div-double/2addr v14, v12

    .line 69
    mul-double v16, v8, v10

    .line 70
    .line 71
    mul-double v18, v6, v14

    .line 72
    .line 73
    move-wide/from16 p2, v12

    .line 74
    .line 75
    add-double v12, v18, v16

    .line 76
    .line 77
    move-wide/from16 v16, v8

    .line 78
    .line 79
    neg-double v8, v6

    .line 80
    mul-double/2addr v8, v10

    .line 81
    mul-double v10, v16, v14

    .line 82
    .line 83
    add-double/2addr v10, v8

    .line 84
    mul-float v8, v4, v4

    .line 85
    .line 86
    float-to-double v8, v8

    .line 87
    mul-float v14, v5, v5

    .line 88
    .line 89
    float-to-double v14, v14

    .line 90
    mul-double v18, v12, v12

    .line 91
    .line 92
    mul-double v20, v10, v10

    .line 93
    .line 94
    div-double v22, v18, v8

    .line 95
    .line 96
    div-double v24, v20, v14

    .line 97
    .line 98
    add-double v24, v24, v22

    .line 99
    .line 100
    const-wide v22, 0x3fefffeb074a771dL    # 0.99999

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmpl-double v22, v24, v22

    .line 106
    .line 107
    if-lez v22, :cond_3

    .line 108
    .line 109
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    const-wide v14, 0x3ff0000a7c5ac472L    # 1.00001

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    mul-double/2addr v8, v14

    .line 119
    float-to-double v14, v4

    .line 120
    mul-double/2addr v14, v8

    .line 121
    double-to-float v4, v14

    .line 122
    float-to-double v14, v5

    .line 123
    mul-double/2addr v8, v14

    .line 124
    double-to-float v5, v8

    .line 125
    mul-float v8, v4, v4

    .line 126
    .line 127
    float-to-double v8, v8

    .line 128
    mul-float v14, v5, v5

    .line 129
    .line 130
    float-to-double v14, v14

    .line 131
    :cond_3
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 132
    .line 133
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 134
    .line 135
    move-wide/from16 v26, v6

    .line 136
    .line 137
    move/from16 v6, p5

    .line 138
    .line 139
    if-ne v6, v1, :cond_4

    .line 140
    .line 141
    move-wide/from16 v6, v22

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    move-wide/from16 v6, v24

    .line 145
    .line 146
    :goto_0
    mul-double v28, v8, v14

    .line 147
    .line 148
    mul-double v8, v8, v20

    .line 149
    .line 150
    sub-double v28, v28, v8

    .line 151
    .line 152
    mul-double v14, v14, v18

    .line 153
    .line 154
    sub-double v28, v28, v14

    .line 155
    .line 156
    add-double/2addr v8, v14

    .line 157
    div-double v28, v28, v8

    .line 158
    .line 159
    const-wide/16 v8, 0x0

    .line 160
    .line 161
    cmpg-double v14, v28, v8

    .line 162
    .line 163
    if-gez v14, :cond_5

    .line 164
    .line 165
    move-wide/from16 v28, v8

    .line 166
    .line 167
    :cond_5
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v14

    .line 171
    mul-double/2addr v14, v6

    .line 172
    float-to-double v6, v4

    .line 173
    mul-double v18, v6, v10

    .line 174
    .line 175
    move-wide/from16 v20, v8

    .line 176
    .line 177
    float-to-double v8, v5

    .line 178
    div-double v18, v18, v8

    .line 179
    .line 180
    mul-double v18, v18, v14

    .line 181
    .line 182
    mul-double v28, v8, v12

    .line 183
    .line 184
    move-wide/from16 v30, v6

    .line 185
    .line 186
    div-double v6, v28, v30

    .line 187
    .line 188
    neg-double v6, v6

    .line 189
    mul-double/2addr v14, v6

    .line 190
    add-float v6, p0, p7

    .line 191
    .line 192
    float-to-double v6, v6

    .line 193
    div-double v6, v6, p2

    .line 194
    .line 195
    add-float v1, p1, v3

    .line 196
    .line 197
    move-wide/from16 v28, v6

    .line 198
    .line 199
    float-to-double v6, v1

    .line 200
    div-double v6, v6, p2

    .line 201
    .line 202
    mul-double v32, v16, v18

    .line 203
    .line 204
    mul-double v34, v26, v14

    .line 205
    .line 206
    sub-double v32, v32, v34

    .line 207
    .line 208
    move-wide/from16 p0, v6

    .line 209
    .line 210
    add-double v6, v32, v28

    .line 211
    .line 212
    mul-double v26, v26, v18

    .line 213
    .line 214
    mul-double v16, v16, v14

    .line 215
    .line 216
    add-double v16, v16, v26

    .line 217
    .line 218
    move-wide/from16 v26, v8

    .line 219
    .line 220
    add-double v8, v16, p0

    .line 221
    .line 222
    sub-double v16, v12, v18

    .line 223
    .line 224
    div-double v16, v16, v30

    .line 225
    .line 226
    sub-double v28, v10, v14

    .line 227
    .line 228
    div-double v28, v28, v26

    .line 229
    .line 230
    neg-double v12, v12

    .line 231
    sub-double v12, v12, v18

    .line 232
    .line 233
    div-double v12, v12, v30

    .line 234
    .line 235
    neg-double v10, v10

    .line 236
    sub-double/2addr v10, v14

    .line 237
    div-double v10, v10, v26

    .line 238
    .line 239
    mul-double v14, v16, v16

    .line 240
    .line 241
    mul-double v18, v28, v28

    .line 242
    .line 243
    add-double v18, v18, v14

    .line 244
    .line 245
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    .line 246
    .line 247
    .line 248
    move-result-wide v14

    .line 249
    cmpg-double v1, v28, v20

    .line 250
    .line 251
    if-gez v1, :cond_6

    .line 252
    .line 253
    move-wide/from16 v26, v22

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_6
    move-wide/from16 v26, v24

    .line 257
    .line 258
    :goto_1
    div-double v14, v16, v14

    .line 259
    .line 260
    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    .line 261
    .line 262
    .line 263
    move-result-wide v14

    .line 264
    mul-double v14, v14, v26

    .line 265
    .line 266
    mul-double v26, v12, v12

    .line 267
    .line 268
    mul-double v30, v10, v10

    .line 269
    .line 270
    add-double v30, v30, v26

    .line 271
    .line 272
    mul-double v30, v30, v18

    .line 273
    .line 274
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    .line 275
    .line 276
    .line 277
    move-result-wide v18

    .line 278
    mul-double v26, v16, v12

    .line 279
    .line 280
    mul-double v30, v28, v10

    .line 281
    .line 282
    add-double v30, v30, v26

    .line 283
    .line 284
    mul-double v16, v16, v10

    .line 285
    .line 286
    mul-double v28, v28, v12

    .line 287
    .line 288
    sub-double v16, v16, v28

    .line 289
    .line 290
    cmpg-double v1, v16, v20

    .line 291
    .line 292
    if-gez v1, :cond_7

    .line 293
    .line 294
    move-wide/from16 v10, v22

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_7
    move-wide/from16 v10, v24

    .line 298
    .line 299
    :goto_2
    div-double v30, v30, v18

    .line 300
    .line 301
    cmpg-double v1, v30, v22

    .line 302
    .line 303
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    if-gez v1, :cond_8

    .line 309
    .line 310
    move-wide/from16 v16, v12

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    cmpl-double v1, v30, v24

    .line 314
    .line 315
    if-lez v1, :cond_9

    .line 316
    .line 317
    move-wide/from16 v16, v20

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_9
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->acos(D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v16

    .line 324
    :goto_3
    mul-double v10, v10, v16

    .line 325
    .line 326
    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    if-nez p6, :cond_a

    .line 332
    .line 333
    cmpl-double v1, v10, v20

    .line 334
    .line 335
    if-lez v1, :cond_a

    .line 336
    .line 337
    sub-double v10, v10, v16

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_a
    if-eqz p6, :cond_b

    .line 341
    .line 342
    cmpg-double v1, v10, v20

    .line 343
    .line 344
    if-gez v1, :cond_b

    .line 345
    .line 346
    add-double v10, v10, v16

    .line 347
    .line 348
    :cond_b
    :goto_4
    rem-double v10, v10, v16

    .line 349
    .line 350
    rem-double v14, v14, v16

    .line 351
    .line 352
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 353
    .line 354
    .line 355
    move-result-wide v16

    .line 356
    mul-double v16, v16, p2

    .line 357
    .line 358
    div-double v16, v16, v12

    .line 359
    .line 360
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    double-to-int v1, v12

    .line 365
    int-to-double v12, v1

    .line 366
    div-double/2addr v10, v12

    .line 367
    div-double v12, v10, p2

    .line 368
    .line 369
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 370
    .line 371
    .line 372
    move-result-wide v16

    .line 373
    const-wide v18, 0x3ff5555555555555L    # 1.3333333333333333

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    mul-double v16, v16, v18

    .line 379
    .line 380
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 381
    .line 382
    .line 383
    move-result-wide v12

    .line 384
    add-double v12, v12, v24

    .line 385
    .line 386
    div-double v16, v16, v12

    .line 387
    .line 388
    mul-int/lit8 v12, v1, 0x6

    .line 389
    .line 390
    new-array v13, v12, [F

    .line 391
    .line 392
    const/16 v18, 0x0

    .line 393
    .line 394
    move-wide/from16 p0, v10

    .line 395
    .line 396
    move/from16 v10, v18

    .line 397
    .line 398
    move v11, v10

    .line 399
    :goto_5
    if-ge v10, v1, :cond_c

    .line 400
    .line 401
    move-wide/from16 p2, v14

    .line 402
    .line 403
    int-to-double v14, v10

    .line 404
    mul-double v14, v14, p0

    .line 405
    .line 406
    add-double v14, v14, p2

    .line 407
    .line 408
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 409
    .line 410
    .line 411
    move-result-wide v19

    .line 412
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 413
    .line 414
    .line 415
    move-result-wide v21

    .line 416
    add-int/lit8 v23, v11, 0x1

    .line 417
    .line 418
    mul-double v24, v16, v21

    .line 419
    .line 420
    move/from16 v26, v10

    .line 421
    .line 422
    move/from16 p5, v11

    .line 423
    .line 424
    sub-double v10, v19, v24

    .line 425
    .line 426
    double-to-float v10, v10

    .line 427
    aput v10, v13, p5

    .line 428
    .line 429
    add-int/lit8 v11, p5, 0x2

    .line 430
    .line 431
    mul-double v19, v19, v16

    .line 432
    .line 433
    move/from16 p6, v11

    .line 434
    .line 435
    add-double v10, v19, v21

    .line 436
    .line 437
    double-to-float v10, v10

    .line 438
    aput v10, v13, v23

    .line 439
    .line 440
    add-double v14, v14, p0

    .line 441
    .line 442
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 443
    .line 444
    .line 445
    move-result-wide v10

    .line 446
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 447
    .line 448
    .line 449
    move-result-wide v14

    .line 450
    add-int/lit8 v19, p5, 0x3

    .line 451
    .line 452
    mul-double v20, v16, v14

    .line 453
    .line 454
    move/from16 v22, v1

    .line 455
    .line 456
    add-double v1, v20, v10

    .line 457
    .line 458
    double-to-float v1, v1

    .line 459
    aput v1, v13, p6

    .line 460
    .line 461
    add-int/lit8 v1, p5, 0x4

    .line 462
    .line 463
    mul-double v20, v16, v10

    .line 464
    .line 465
    move/from16 p6, v1

    .line 466
    .line 467
    sub-double v1, v14, v20

    .line 468
    .line 469
    double-to-float v1, v1

    .line 470
    aput v1, v13, v19

    .line 471
    .line 472
    add-int/lit8 v1, p5, 0x5

    .line 473
    .line 474
    double-to-float v2, v10

    .line 475
    aput v2, v13, p6

    .line 476
    .line 477
    add-int/lit8 v11, p5, 0x6

    .line 478
    .line 479
    double-to-float v2, v14

    .line 480
    aput v2, v13, v1

    .line 481
    .line 482
    add-int/lit8 v10, v26, 0x1

    .line 483
    .line 484
    move-wide/from16 v14, p2

    .line 485
    .line 486
    move/from16 v1, v22

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_c
    new-instance v1, Landroid/graphics/Matrix;

    .line 490
    .line 491
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 498
    .line 499
    .line 500
    double-to-float v0, v6

    .line 501
    double-to-float v2, v8

    .line 502
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v0, v12, -0x2

    .line 509
    .line 510
    aput p7, v13, v0

    .line 511
    .line 512
    add-int/lit8 v0, v12, -0x1

    .line 513
    .line 514
    aput v3, v13, v0

    .line 515
    .line 516
    move/from16 v0, v18

    .line 517
    .line 518
    :goto_6
    if-ge v0, v12, :cond_d

    .line 519
    .line 520
    aget v1, v13, v0

    .line 521
    .line 522
    add-int/lit8 v2, v0, 0x1

    .line 523
    .line 524
    aget v2, v13, v2

    .line 525
    .line 526
    add-int/lit8 v3, v0, 0x2

    .line 527
    .line 528
    aget v3, v13, v3

    .line 529
    .line 530
    add-int/lit8 v4, v0, 0x3

    .line 531
    .line 532
    aget v4, v13, v4

    .line 533
    .line 534
    add-int/lit8 v5, v0, 0x4

    .line 535
    .line 536
    aget v5, v13, v5

    .line 537
    .line 538
    add-int/lit8 v6, v0, 0x5

    .line 539
    .line 540
    aget v6, v13, v6

    .line 541
    .line 542
    move-object/from16 p0, p9

    .line 543
    .line 544
    move/from16 p1, v1

    .line 545
    .line 546
    move/from16 p2, v2

    .line 547
    .line 548
    move/from16 p3, v3

    .line 549
    .line 550
    move/from16 p4, v4

    .line 551
    .line 552
    move/from16 p5, v5

    .line 553
    .line 554
    move/from16 p6, v6

    .line 555
    .line 556
    invoke-interface/range {p0 .. p6}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 557
    .line 558
    .line 559
    add-int/lit8 v0, v0, 0x6

    .line 560
    .line 561
    goto :goto_6

    .line 562
    :cond_d
    :goto_7
    return-void

    .line 563
    :goto_8
    invoke-interface {v0, v2, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 564
    .line 565
    .line 566
    return-void
.end method

.method public static arrayContains([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/caverock/androidsvg/SVG$Box;

    .line 11
    .line 12
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_5

    .line 7
    .line 8
    iget-object v1, p2, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 15
    .line 16
    iget v3, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 17
    .line 18
    div-float/2addr v2, v3

    .line 19
    iget v3, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 20
    .line 21
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 22
    .line 23
    div-float/2addr v3, v4

    .line 24
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 25
    .line 26
    neg-float v4, v4

    .line 27
    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 28
    .line 29
    neg-float v5, v5

    .line 30
    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 31
    .line 32
    invoke-virtual {p2, v6}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    iget p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 39
    .line 40
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 41
    .line 42
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    iget-object p2, p2, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 53
    .line 54
    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 55
    .line 56
    if-ne p2, v6, :cond_2

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    :goto_0
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 68
    .line 69
    div-float/2addr v2, p2

    .line 70
    iget v3, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 71
    .line 72
    div-float/2addr v3, p2

    .line 73
    sget-object v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    aget v7, v6, v7

    .line 80
    .line 81
    const/high16 v8, 0x40000000    # 2.0f

    .line 82
    .line 83
    packed-switch v7, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :pswitch_0
    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 88
    .line 89
    sub-float/2addr v7, v2

    .line 90
    :goto_1
    sub-float/2addr v4, v7

    .line 91
    goto :goto_2

    .line 92
    :pswitch_1
    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 93
    .line 94
    sub-float/2addr v7, v2

    .line 95
    div-float/2addr v7, v8

    .line 96
    goto :goto_1

    .line 97
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    aget v1, v6, v1

    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    if-eq v1, v2, :cond_4

    .line 105
    .line 106
    const/4 v2, 0x3

    .line 107
    if-eq v1, v2, :cond_3

    .line 108
    .line 109
    const/4 v2, 0x5

    .line 110
    if-eq v1, v2, :cond_4

    .line 111
    .line 112
    const/4 v2, 0x6

    .line 113
    if-eq v1, v2, :cond_3

    .line 114
    .line 115
    const/4 v2, 0x7

    .line 116
    if-eq v1, v2, :cond_4

    .line 117
    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    if-eq v1, v2, :cond_3

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 124
    .line 125
    sub-float/2addr p1, v3

    .line 126
    :goto_3
    sub-float/2addr v5, p1

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 129
    .line 130
    sub-float/2addr p1, v3

    .line 131
    div-float/2addr p1, v8

    .line 132
    goto :goto_3

    .line 133
    :goto_4
    iget p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 134
    .line 135
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 136
    .line 137
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_5
    return-object v0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 5

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    move p2, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x1f4

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x3

    .line 18
    if-le p1, v0, :cond_2

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    move p1, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move p1, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    if-eqz p2, :cond_3

    .line 27
    .line 28
    move p1, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move p1, v1

    .line 31
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 v0, -0x1

    .line 39
    sparse-switch p2, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    :goto_2
    move v1, v0

    .line 43
    goto :goto_3

    .line 44
    :sswitch_0
    const-string p2, "cursive"

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/4 v1, 0x4

    .line 54
    goto :goto_3

    .line 55
    :sswitch_1
    const-string p2, "serif"

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move v1, v4

    .line 65
    goto :goto_3

    .line 66
    :sswitch_2
    const-string p2, "fantasy"

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_6

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    move v1, v3

    .line 76
    goto :goto_3

    .line 77
    :sswitch_3
    const-string p2, "monospace"

    .line 78
    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    move v1, v2

    .line 87
    goto :goto_3

    .line 88
    :sswitch_4
    const-string p2, "sans-serif"

    .line 89
    .line 90
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_8

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_8
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    return-object p0

    .line 102
    :pswitch_0
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_1
    sget-object p0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_2
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 117
    .line 118
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_3
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 124
    .line 125
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_4
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 131
    .line 132
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x5b97f43d -> :sswitch_4
        -0x5559f3fd -> :sswitch_3
        -0x407a00da -> :sswitch_2
        0x684317d -> :sswitch_1
        0x432c41c5 -> :sswitch_0
    .end sparse-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static colourWithOpacity(IF)I
    .locals 2

    .line 1
    shr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float/2addr v0, p1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-le p1, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v1, p1

    .line 20
    :goto_0
    shl-int/lit8 p1, v1, 0x18

    .line 21
    .line 22
    const v0, 0xffffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, v0

    .line 26
    or-int/2addr p0, p1

    .line 27
    return p0
.end method

.method public static createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    const v0, 0x7f040126

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f040121

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [[I

    .line 25
    .line 26
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v3, v2, v4

    .line 45
    .line 46
    filled-new-array {p0, v1, v0, p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "SVGAndroidRenderer"

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Gradient reference \'"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "\' not found"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "SVGAndroidRenderer"

    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string p0, "Gradient href attributes must point to other gradient elements"

    .line 40
    .line 41
    new-array p1, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-ne v0, p0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    new-array p0, p0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, p0, v2

    .line 53
    .line 54
    const-string p1, "Circular reference in gradient href attribute \'%s\'"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    move-object p1, v0

    .line 61
    check-cast p1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 78
    .line 79
    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 86
    .line 87
    :cond_5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 98
    .line 99
    :cond_6
    :try_start_0
    instance-of v1, p0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 100
    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    move-object v1, p0

    .line 104
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 105
    .line 106
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 107
    .line 108
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 109
    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 113
    .line 114
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 115
    .line 116
    :cond_7
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 117
    .line 118
    if-nez v2, :cond_8

    .line 119
    .line 120
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 121
    .line 122
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 123
    .line 124
    :cond_8
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 125
    .line 126
    if-nez v2, :cond_9

    .line 127
    .line 128
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 129
    .line 130
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 131
    .line 132
    :cond_9
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 133
    .line 134
    if-nez v2, :cond_b

    .line 135
    .line 136
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 137
    .line 138
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_a
    move-object v1, p0

    .line 142
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 143
    .line 144
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 145
    .line 146
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    :catch_0
    :cond_b
    :goto_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 150
    .line 151
    if-eqz p1, :cond_c

    .line 152
    .line 153
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_c
    return-void
.end method

.method public static fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    .line 166
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    :cond_4
    return-void
.end method

.method public static fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Pattern reference \'"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "\' not found"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "SVGAndroidRenderer"

    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string p0, "Pattern href attributes must point to other pattern elements"

    .line 40
    .line 41
    new-array p1, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-ne v0, p0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    new-array p0, p0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, p0, v2

    .line 53
    .line 54
    const-string p1, "Circular reference in pattern href attribute \'%s\'"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 69
    .line 70
    :cond_3
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 79
    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 87
    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 93
    .line 94
    :cond_6
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 101
    .line 102
    :cond_7
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 109
    .line 110
    :cond_8
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 111
    .line 112
    if-nez p1, :cond_9

    .line 113
    .line 114
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 117
    .line 118
    :cond_9
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_a

    .line 125
    .line 126
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 127
    .line 128
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 129
    .line 130
    :cond_a
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 131
    .line 132
    if-nez p1, :cond_b

    .line 133
    .line 134
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 137
    .line 138
    :cond_b
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 139
    .line 140
    if-nez p1, :cond_c

    .line 141
    .line 142
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 145
    .line 146
    :cond_c
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p1, :cond_d

    .line 149
    .line 150
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    return-void
.end method

.method public static synthetic findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    move v5, v0

    .line 10
    :goto_0
    and-int/lit8 v0, p5, 0x10

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    :cond_1
    move-object v7, p3

    .line 16
    and-int/lit8 p3, p5, 0x20

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move v8, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v8, p4

    .line 23
    :goto_1
    const/4 v6, 0x0

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    .line 13
    .line 14
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 15
    .line 16
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmConstructorSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lkotlin/UnsignedKt;->fromJvmMemberSignature(Landroidx/work/Operation$State;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    .line 34
    .line 35
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 36
    .line 37
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmMethodSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    invoke-static {p0}, Lkotlin/UnsignedKt;->fromJvmMemberSignature(Landroidx/work/Operation$State;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 51
    .line 52
    if-eqz v0, :cond_9

    .line 53
    .line 54
    move-object v0, p0

    .line 55
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 56
    .line 57
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->propertySignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->getExtensionOrNull(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    aget p3, v2, p3

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    if-eq p3, v2, :cond_8

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    if-eq p3, v2, :cond_6

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    if-eq p3, v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    move-object v2, p0

    .line 90
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    const/4 v6, 0x1

    .line 94
    move-object v3, p1

    .line 95
    move-object v4, p2

    .line 96
    move v7, p4

    .line 97
    invoke-static/range {v2 .. v7}, Lcoil3/util/ContextsKt;->getPropertySignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_6
    move-object v3, p1

    .line 103
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    .line 104
    .line 105
    const/16 p1, 0x8

    .line 106
    .line 107
    and-int/2addr p0, p1

    .line 108
    if-ne p0, p1, :cond_7

    .line 109
    .line 110
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->setter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->name_:I

    .line 116
    .line 117
    invoke-interface {v3, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->desc_:I

    .line 122
    .line 123
    invoke-interface {v3, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object p2

    .line 137
    :cond_7
    return-object v1

    .line 138
    :cond_8
    move-object v3, p1

    .line 139
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    .line 140
    .line 141
    const/4 p1, 0x4

    .line 142
    and-int/2addr p0, p1

    .line 143
    if-ne p0, p1, :cond_9

    .line 144
    .line 145
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->name_:I

    .line 151
    .line 152
    invoke-interface {v3, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->desc_:I

    .line 157
    .line 158
    invoke-interface {v3, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object p2

    .line 172
    :cond_9
    :goto_0
    return-object v1
.end method

.method public static getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const v0, 0x7f0800a6

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0800a7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v2

    .line 80
    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, p2, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ne v2, p2, :cond_1

    .line 100
    .line 101
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .line 106
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Landroid/graphics/Canvas;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 127
    .line 128
    const/4 v2, 0x3

    .line 129
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    aput-object v0, v2, v1

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object p0, v2, v0

    .line 135
    .line 136
    const/4 p0, 0x2

    .line 137
    aput-object p1, v2, p0

    .line 138
    .line 139
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p1, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p1, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2
    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p0, p1, v0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5

    .line 248
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 251
    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 252
    :cond_0
    instance-of v1, p0, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_2

    .line 255
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2
    return-object v0
.end method

.method public static setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    instance-of v1, p2, Lcom/caverock/androidsvg/SVG$Colour;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast p2, Lcom/caverock/androidsvg/SVG$Colour;

    .line 19
    .line 20
    iget p2, p2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    instance-of p2, p2, Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 30
    .line 31
    iget p2, p2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 32
    .line 33
    :goto_1
    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V
    .locals 13

    .line 1
    move/from16 v1, p7

    .line 2
    .line 3
    and-int/lit8 v2, v1, 0x2

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v2, p2

    .line 11
    :goto_0
    and-int/lit8 v4, v1, 0x4

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    move-object v4, v3

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v4, p3

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v5, v1, 0x8

    .line 20
    .line 21
    if-eqz v5, :cond_2

    .line 22
    .line 23
    move-object v5, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v5, p4

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v6, v1, 0x20

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    move-object v6, v3

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v6, p5

    .line 34
    .line 35
    :goto_3
    and-int/lit16 v1, v1, 0x80

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v1, p6

    .line 42
    .line 43
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, Lorg/wikimedia/testkitchen/instrument/Funnel;

    .line 54
    .line 55
    if-eqz v8, :cond_5

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    iget-wide v11, v8, Lorg/wikimedia/testkitchen/instrument/Funnel;->startTime:J

    .line 62
    .line 63
    sub-long/2addr v9, v11

    .line 64
    long-to-int v8, v9

    .line 65
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const-string v9, "time_spent_ms"

    .line 70
    .line 71
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_5
    if-eqz v1, :cond_7

    .line 75
    .line 76
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_6

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 133
    .line 134
    if-nez v2, :cond_8

    .line 135
    .line 136
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    :cond_8
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    const/4 v9, 0x1

    .line 145
    if-nez v8, :cond_9

    .line 146
    .line 147
    sget-object v8, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v10, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 153
    .line 154
    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 155
    .line 156
    invoke-direct {v10, v11, v11, v9}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v10, v7}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    goto :goto_6

    .line 164
    :cond_9
    move-object v7, v3

    .line 165
    :goto_6
    new-instance v8, Lokhttp3/Request$Builder;

    .line 166
    .line 167
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, v8, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v4, v8, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v2, v8, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v7, v8, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v5, v8, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 183
    .line 184
    iget-object v4, v1, Lorg/wikimedia/testkitchen/TestKitchenClient;->logger:Lokio/ByteString$Companion;

    .line 185
    .line 186
    iget-object v5, v1, Lorg/wikimedia/testkitchen/TestKitchenClient;->sourceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    check-cast v7, Lorg/wikimedia/testkitchen/config/SourceConfig;

    .line 193
    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    iget-object v7, v7, Lorg/wikimedia/testkitchen/config/SourceConfig;->streamConfigs:Ljava/util/Map;

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move-object v7, v3

    .line 200
    :goto_7
    if-eqz v7, :cond_e

    .line 201
    .line 202
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_b

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lorg/wikimedia/testkitchen/config/SourceConfig;

    .line 214
    .line 215
    if-eqz v5, :cond_c

    .line 216
    .line 217
    iget-object v5, v5, Lorg/wikimedia/testkitchen/config/SourceConfig;->streamConfigs:Ljava/util/Map;

    .line 218
    .line 219
    const-string v7, "product_metrics.app_base"

    .line 220
    .line 221
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lorg/wikimedia/testkitchen/config/StreamConfig;

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    move-object v5, v3

    .line 229
    :goto_8
    const/4 v7, 0x0

    .line 230
    if-nez v5, :cond_d

    .line 231
    .line 232
    const-string v1, "No stream config exists for this stream, the event is ignored and dropped."

    .line 233
    .line 234
    new-array v2, v7, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {v4, v1, v2}, Lokio/ByteString$Companion;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_d
    iget-object v10, v1, Lorg/wikimedia/testkitchen/TestKitchenClient;->samplingController:Lokhttp3/ConnectionPool;

    .line 241
    .line 242
    invoke-virtual {v10, v5}, Lokhttp3/ConnectionPool;->isInSample(Lorg/wikimedia/testkitchen/config/StreamConfig;)Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-nez v10, :cond_f

    .line 247
    .line 248
    const-string v1, "Not in sample, the event is ignored and dropped."

    .line 249
    .line 250
    new-array v2, v7, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-virtual {v4, v1, v2}, Lokio/ByteString$Companion;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_e
    :goto_9
    move-object v5, v3

    .line 257
    :cond_f
    new-instance v4, Lorg/wikimedia/testkitchen/event/Event;

    .line 258
    .line 259
    sget-object v7, Lj$/time/format/DateTimeFormatter;->ISO_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 260
    .line 261
    sget-object v10, Lorg/wikimedia/testkitchen/TestKitchenClient;->ZONE_Z:Lj$/time/ZoneId;

    .line 262
    .line 263
    invoke-static {v10}, Lj$/time/ZonedDateTime;->now(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v7, v10}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    new-instance v10, Lorg/wikimedia/testkitchen/context/ClientData;

    .line 272
    .line 273
    invoke-static {}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getAgentData()Lorg/wikimedia/testkitchen/context/AgentData;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    if-nez v2, :cond_10

    .line 278
    .line 279
    new-instance v2, Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 280
    .line 281
    sget-object v12, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 282
    .line 283
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v12}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-direct {v2, v12}, Lorg/wikimedia/testkitchen/context/MediawikiData;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_10
    invoke-static {}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPerformerData()Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    invoke-direct {v10, v11, v6, v2, v12}, Lorg/wikimedia/testkitchen/context/ClientData;-><init>(Lorg/wikimedia/testkitchen/context/AgentData;Lorg/wikimedia/testkitchen/context/PageData;Lorg/wikimedia/testkitchen/context/MediawikiData;Lorg/wikimedia/testkitchen/context/PerformerData;)V

    .line 303
    .line 304
    .line 305
    if-eqz v5, :cond_11

    .line 306
    .line 307
    iget-object v3, v5, Lorg/wikimedia/testkitchen/config/StreamConfig;->sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 308
    .line 309
    :cond_11
    move-object/from16 p3, p0

    .line 310
    .line 311
    move-object/from16 p6, v3

    .line 312
    .line 313
    move-object p1, v4

    .line 314
    move-object p2, v7

    .line 315
    move-object/from16 p5, v8

    .line 316
    .line 317
    move-object/from16 p4, v10

    .line 318
    .line 319
    invoke-direct/range {p1 .. p6}, Lorg/wikimedia/testkitchen/event/Event;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;Lorg/wikimedia/testkitchen/context/ClientData;Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;)V

    .line 320
    .line 321
    .line 322
    move-object v2, p1

    .line 323
    iget-object v1, v1, Lorg/wikimedia/testkitchen/TestKitchenClient;->eventProcessor:Lokhttp3/Request$Builder;

    .line 324
    .line 325
    invoke-virtual {v1, v2, v9, v9}, Lokhttp3/Request$Builder;->addToQueue(Lorg/wikimedia/testkitchen/event/Event;ZZ)V

    .line 326
    .line 327
    .line 328
    :goto_a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Lorg/wikimedia/testkitchen/instrument/Funnel;

    .line 331
    .line 332
    if-eqz v0, :cond_12

    .line 333
    .line 334
    iget v1, v0, Lorg/wikimedia/testkitchen/instrument/Funnel;->_sequence:I

    .line 335
    .line 336
    add-int/2addr v1, v9

    .line 337
    iput v1, v0, Lorg/wikimedia/testkitchen/instrument/Funnel;->_sequence:I

    .line 338
    .line 339
    :cond_12
    return-void
.end method


# virtual methods
.method public calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 26
    .line 27
    new-array p1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p0, p1, v0

    .line 30
    .line 31
    const-string p0, "ClipPath reference \'%s\' not found"

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/Stack;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    :cond_1
    move v0, v1

    .line 68
    :cond_2
    new-instance v2, Landroid/graphics/Matrix;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 76
    .line 77
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 78
    .line 79
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 80
    .line 81
    .line 82
    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 83
    .line 84
    iget p2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 85
    .line 86
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    .line 90
    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    new-instance p2, Landroid/graphics/Path;

    .line 97
    .line 98
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 118
    .line 119
    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 120
    .line 121
    if-nez v4, :cond_6

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 125
    .line 126
    invoke-virtual {p0, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 133
    .line 134
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 149
    .line 150
    if-nez v0, :cond_8

    .line 151
    .line 152
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 157
    .line 158
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-eqz p1, :cond_9

    .line 163
    .line 164
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 165
    .line 166
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {p2, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Ljava/util/Stack;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 181
    .line 182
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 183
    .line 184
    return-object p2
.end method

.method public calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 7
    .line 8
    .line 9
    iget p0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    .line 10
    .line 11
    return p0
.end method

.method public checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/graphics/Canvas;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 14
    .line 15
    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v2, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 28
    .line 29
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 34
    .line 35
    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lcom/caverock/androidsvg/SVG;

    .line 12
    .line 13
    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v4, :cond_3

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v2, "Fill"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "Stroke"

    .line 29
    .line 30
    :goto_0
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    new-array v7, v7, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v2, v7, v6

    .line 36
    .line 37
    aput-object v4, v7, v5

    .line 38
    .line 39
    const-string v2, "%s reference \'%s\' not found"

    .line 40
    .line 41
    invoke-static {v2, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    instance-of v3, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 65
    .line 66
    const/16 v8, 0xff

    .line 67
    .line 68
    sget-object v9, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    const/high16 v12, 0x3f800000    # 1.0f

    .line 72
    .line 73
    if-eqz v3, :cond_20

    .line 74
    .line 75
    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 76
    .line 77
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    move v3, v5

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    move v3, v6

    .line 97
    :goto_1
    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    iget-object v14, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    iget-object v14, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 107
    .line 108
    :goto_2
    if-eqz v3, :cond_c

    .line 109
    .line 110
    iget-object v12, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 111
    .line 112
    if-eqz v12, :cond_7

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    iget-object v12, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 116
    .line 117
    :goto_3
    iget-object v13, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 118
    .line 119
    if-eqz v13, :cond_8

    .line 120
    .line 121
    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    goto :goto_4

    .line 126
    :cond_8
    move v13, v11

    .line 127
    :goto_4
    iget-object v15, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 128
    .line 129
    if-eqz v15, :cond_9

    .line 130
    .line 131
    invoke-virtual {v15, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    :goto_5
    const/high16 p3, 0x43800000    # 256.0f

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_9
    move v15, v11

    .line 139
    goto :goto_5

    .line 140
    :goto_6
    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 141
    .line 142
    if-eqz v7, :cond_a

    .line 143
    .line 144
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    goto :goto_7

    .line 149
    :cond_a
    iget v7, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 150
    .line 151
    :goto_7
    iget-object v12, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 152
    .line 153
    if-eqz v12, :cond_b

    .line 154
    .line 155
    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    goto :goto_8

    .line 160
    :cond_b
    move v12, v11

    .line 161
    :goto_8
    move/from16 v20, v7

    .line 162
    .line 163
    move/from16 v21, v12

    .line 164
    .line 165
    move/from16 v18, v13

    .line 166
    .line 167
    move/from16 v19, v15

    .line 168
    .line 169
    goto :goto_c

    .line 170
    :cond_c
    const/high16 p3, 0x43800000    # 256.0f

    .line 171
    .line 172
    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 173
    .line 174
    if-eqz v7, :cond_d

    .line 175
    .line 176
    invoke-virtual {v7, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    move v13, v7

    .line 181
    goto :goto_9

    .line 182
    :cond_d
    move v13, v11

    .line 183
    :goto_9
    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 184
    .line 185
    if-eqz v7, :cond_e

    .line 186
    .line 187
    invoke-virtual {v7, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    move v15, v7

    .line 192
    goto :goto_a

    .line 193
    :cond_e
    move v15, v11

    .line 194
    :goto_a
    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 195
    .line 196
    if-eqz v7, :cond_f

    .line 197
    .line 198
    invoke-virtual {v7, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    goto :goto_b

    .line 203
    :cond_f
    move v7, v12

    .line 204
    :goto_b
    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 205
    .line 206
    if-eqz v10, :cond_b

    .line 207
    .line 208
    invoke-virtual {v10, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    move v12, v10

    .line 213
    goto :goto_8

    .line 214
    :goto_c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    iput-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 222
    .line 223
    new-instance v7, Landroid/graphics/Matrix;

    .line 224
    .line 225
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 226
    .line 227
    .line 228
    if-nez v3, :cond_10

    .line 229
    .line 230
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 231
    .line 232
    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 233
    .line 234
    invoke-virtual {v7, v3, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 235
    .line 236
    .line 237
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 238
    .line 239
    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 240
    .line 241
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 242
    .line 243
    .line 244
    :cond_10
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 245
    .line 246
    if-eqz v2, :cond_11

    .line 247
    .line 248
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 249
    .line 250
    .line 251
    :cond_11
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_13

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 260
    .line 261
    .line 262
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 265
    .line 266
    if-eqz v1, :cond_12

    .line 267
    .line 268
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 269
    .line 270
    return-void

    .line 271
    :cond_12
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 272
    .line 273
    return-void

    .line 274
    :cond_13
    new-array v1, v2, [I

    .line 275
    .line 276
    new-array v3, v2, [F

    .line 277
    .line 278
    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    move v12, v6

    .line 285
    const/high16 v16, -0x40800000    # -1.0f

    .line 286
    .line 287
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_18

    .line 292
    .line 293
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    check-cast v13, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 298
    .line 299
    check-cast v13, Lcom/caverock/androidsvg/SVG$Stop;

    .line 300
    .line 301
    iget-object v15, v13, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    .line 302
    .line 303
    if-eqz v15, :cond_14

    .line 304
    .line 305
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    goto :goto_e

    .line 310
    :cond_14
    move v15, v11

    .line 311
    :goto_e
    if-eqz v12, :cond_16

    .line 312
    .line 313
    cmpl-float v17, v15, v16

    .line 314
    .line 315
    if-ltz v17, :cond_15

    .line 316
    .line 317
    goto :goto_f

    .line 318
    :cond_15
    aput v16, v3, v12

    .line 319
    .line 320
    goto :goto_10

    .line 321
    :cond_16
    :goto_f
    aput v15, v3, v12

    .line 322
    .line 323
    move/from16 v16, v15

    .line 324
    .line 325
    :goto_10
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 326
    .line 327
    .line 328
    iget-object v15, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 331
    .line 332
    invoke-virtual {v0, v15, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 333
    .line 334
    .line 335
    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 338
    .line 339
    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 340
    .line 341
    iget-object v15, v13, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 342
    .line 343
    check-cast v15, Lcom/caverock/androidsvg/SVG$Colour;

    .line 344
    .line 345
    if-nez v15, :cond_17

    .line 346
    .line 347
    move-object v15, v9

    .line 348
    :cond_17
    iget v15, v15, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 349
    .line 350
    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 351
    .line 352
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    invoke-static {v15, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    aput v13, v1, v12

    .line 361
    .line 362
    add-int/lit8 v12, v12, 0x1

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 365
    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_18
    cmpl-float v9, v18, v20

    .line 369
    .line 370
    if-nez v9, :cond_19

    .line 371
    .line 372
    cmpl-float v9, v19, v21

    .line 373
    .line 374
    if-eqz v9, :cond_1a

    .line 375
    .line 376
    :cond_19
    if-ne v2, v5, :cond_1b

    .line 377
    .line 378
    :cond_1a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 379
    .line 380
    .line 381
    sub-int/2addr v2, v5

    .line 382
    aget v0, v1, v2

    .line 383
    .line 384
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    :cond_1b
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 389
    .line 390
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 391
    .line 392
    if-eqz v4, :cond_1c

    .line 393
    .line 394
    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 395
    .line 396
    if-ne v4, v5, :cond_1d

    .line 397
    .line 398
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 399
    .line 400
    :cond_1c
    :goto_11
    move-object/from16 v24, v2

    .line 401
    .line 402
    goto :goto_12

    .line 403
    :cond_1d
    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 404
    .line 405
    if-ne v4, v5, :cond_1c

    .line 406
    .line 407
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 408
    .line 409
    goto :goto_11

    .line 410
    :goto_12
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 411
    .line 412
    .line 413
    new-instance v17, Landroid/graphics/LinearGradient;

    .line 414
    .line 415
    move-object/from16 v22, v1

    .line 416
    .line 417
    move-object/from16 v23, v3

    .line 418
    .line 419
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 420
    .line 421
    .line 422
    move-object/from16 v1, v17

    .line 423
    .line 424
    invoke-virtual {v1, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 435
    .line 436
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    mul-float v0, v0, p3

    .line 443
    .line 444
    float-to-int v0, v0

    .line 445
    if-gez v0, :cond_1e

    .line 446
    .line 447
    goto :goto_13

    .line 448
    :cond_1e
    if-le v0, v8, :cond_1f

    .line 449
    .line 450
    move v6, v8

    .line 451
    goto :goto_13

    .line 452
    :cond_1f
    move v6, v0

    .line 453
    :goto_13
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :cond_20
    const/high16 p3, 0x43800000    # 256.0f

    .line 458
    .line 459
    instance-of v3, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 460
    .line 461
    if-eqz v3, :cond_3a

    .line 462
    .line 463
    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 464
    .line 465
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 466
    .line 467
    if-eqz v3, :cond_21

    .line 468
    .line 469
    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :cond_21
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 473
    .line 474
    if-eqz v3, :cond_22

    .line 475
    .line 476
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-eqz v3, :cond_22

    .line 481
    .line 482
    move v3, v5

    .line 483
    goto :goto_14

    .line 484
    :cond_22
    move v3, v6

    .line 485
    :goto_14
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 488
    .line 489
    if-eqz v1, :cond_23

    .line 490
    .line 491
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 492
    .line 493
    goto :goto_15

    .line 494
    :cond_23
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 495
    .line 496
    :goto_15
    if-eqz v3, :cond_27

    .line 497
    .line 498
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    .line 499
    .line 500
    const/high16 v12, 0x42480000    # 50.0f

    .line 501
    .line 502
    sget-object v13, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 503
    .line 504
    invoke-direct {v10, v12, v13}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 505
    .line 506
    .line 507
    iget-object v12, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 508
    .line 509
    if-eqz v12, :cond_24

    .line 510
    .line 511
    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 512
    .line 513
    .line 514
    move-result v12

    .line 515
    goto :goto_16

    .line 516
    :cond_24
    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 517
    .line 518
    .line 519
    move-result v12

    .line 520
    :goto_16
    iget-object v13, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 521
    .line 522
    if-eqz v13, :cond_25

    .line 523
    .line 524
    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 525
    .line 526
    .line 527
    move-result v13

    .line 528
    goto :goto_17

    .line 529
    :cond_25
    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 530
    .line 531
    .line 532
    move-result v13

    .line 533
    :goto_17
    iget-object v14, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 534
    .line 535
    if-eqz v14, :cond_26

    .line 536
    .line 537
    invoke-virtual {v14, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    goto :goto_18

    .line 542
    :cond_26
    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    :goto_18
    move/from16 v20, v10

    .line 547
    .line 548
    move/from16 v18, v12

    .line 549
    .line 550
    move/from16 v19, v13

    .line 551
    .line 552
    goto :goto_1c

    .line 553
    :cond_27
    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 554
    .line 555
    const/high16 v13, 0x3f000000    # 0.5f

    .line 556
    .line 557
    if-eqz v10, :cond_28

    .line 558
    .line 559
    invoke-virtual {v10, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 560
    .line 561
    .line 562
    move-result v10

    .line 563
    goto :goto_19

    .line 564
    :cond_28
    move v10, v13

    .line 565
    :goto_19
    iget-object v14, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 566
    .line 567
    if-eqz v14, :cond_29

    .line 568
    .line 569
    invoke-virtual {v14, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 570
    .line 571
    .line 572
    move-result v14

    .line 573
    goto :goto_1a

    .line 574
    :cond_29
    move v14, v13

    .line 575
    :goto_1a
    iget-object v15, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 576
    .line 577
    if-eqz v15, :cond_2a

    .line 578
    .line 579
    invoke-virtual {v15, v0, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 580
    .line 581
    .line 582
    move-result v12

    .line 583
    goto :goto_1b

    .line 584
    :cond_2a
    move v12, v13

    .line 585
    :goto_1b
    move/from16 v18, v10

    .line 586
    .line 587
    move/from16 v20, v12

    .line 588
    .line 589
    move/from16 v19, v14

    .line 590
    .line 591
    :goto_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 595
    .line 596
    .line 597
    move-result-object v10

    .line 598
    iput-object v10, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 599
    .line 600
    new-instance v10, Landroid/graphics/Matrix;

    .line 601
    .line 602
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 603
    .line 604
    .line 605
    if-nez v3, :cond_2b

    .line 606
    .line 607
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 608
    .line 609
    iget v12, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 610
    .line 611
    invoke-virtual {v10, v3, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 612
    .line 613
    .line 614
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 615
    .line 616
    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 617
    .line 618
    invoke-virtual {v10, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 619
    .line 620
    .line 621
    :cond_2b
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 622
    .line 623
    if-eqz v2, :cond_2c

    .line 624
    .line 625
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 626
    .line 627
    .line 628
    :cond_2c
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-nez v2, :cond_2e

    .line 635
    .line 636
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 637
    .line 638
    .line 639
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 642
    .line 643
    if-eqz v1, :cond_2d

    .line 644
    .line 645
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 646
    .line 647
    return-void

    .line 648
    :cond_2d
    iput-boolean v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 649
    .line 650
    return-void

    .line 651
    :cond_2e
    new-array v1, v2, [I

    .line 652
    .line 653
    new-array v3, v2, [F

    .line 654
    .line 655
    iget-object v12, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object v12

    .line 661
    move v13, v6

    .line 662
    const/high16 v16, -0x40800000    # -1.0f

    .line 663
    .line 664
    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 665
    .line 666
    .line 667
    move-result v14

    .line 668
    if-eqz v14, :cond_33

    .line 669
    .line 670
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v14

    .line 674
    check-cast v14, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 675
    .line 676
    check-cast v14, Lcom/caverock/androidsvg/SVG$Stop;

    .line 677
    .line 678
    iget-object v15, v14, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    .line 679
    .line 680
    if-eqz v15, :cond_2f

    .line 681
    .line 682
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 683
    .line 684
    .line 685
    move-result v15

    .line 686
    goto :goto_1e

    .line 687
    :cond_2f
    move v15, v11

    .line 688
    :goto_1e
    if-eqz v13, :cond_31

    .line 689
    .line 690
    cmpl-float v17, v15, v16

    .line 691
    .line 692
    if-ltz v17, :cond_30

    .line 693
    .line 694
    goto :goto_1f

    .line 695
    :cond_30
    aput v16, v3, v13

    .line 696
    .line 697
    goto :goto_20

    .line 698
    :cond_31
    :goto_1f
    aput v15, v3, v13

    .line 699
    .line 700
    move/from16 v16, v15

    .line 701
    .line 702
    :goto_20
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 703
    .line 704
    .line 705
    iget-object v15, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 708
    .line 709
    invoke-virtual {v0, v15, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 710
    .line 711
    .line 712
    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 715
    .line 716
    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 717
    .line 718
    iget-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 719
    .line 720
    check-cast v15, Lcom/caverock/androidsvg/SVG$Colour;

    .line 721
    .line 722
    if-nez v15, :cond_32

    .line 723
    .line 724
    move-object v15, v9

    .line 725
    :cond_32
    iget v15, v15, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 726
    .line 727
    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 728
    .line 729
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 730
    .line 731
    .line 732
    move-result v14

    .line 733
    invoke-static {v15, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    .line 734
    .line 735
    .line 736
    move-result v14

    .line 737
    aput v14, v1, v13

    .line 738
    .line 739
    add-int/lit8 v13, v13, 0x1

    .line 740
    .line 741
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 742
    .line 743
    .line 744
    goto :goto_1d

    .line 745
    :cond_33
    cmpl-float v9, v20, v11

    .line 746
    .line 747
    if-eqz v9, :cond_34

    .line 748
    .line 749
    if-ne v2, v5, :cond_35

    .line 750
    .line 751
    :cond_34
    move-object/from16 v21, v1

    .line 752
    .line 753
    goto :goto_24

    .line 754
    :cond_35
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 755
    .line 756
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 757
    .line 758
    if-eqz v4, :cond_36

    .line 759
    .line 760
    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 761
    .line 762
    if-ne v4, v5, :cond_37

    .line 763
    .line 764
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 765
    .line 766
    :cond_36
    :goto_21
    move-object/from16 v23, v2

    .line 767
    .line 768
    goto :goto_22

    .line 769
    :cond_37
    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 770
    .line 771
    if-ne v4, v5, :cond_36

    .line 772
    .line 773
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 774
    .line 775
    goto :goto_21

    .line 776
    :goto_22
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 777
    .line 778
    .line 779
    new-instance v17, Landroid/graphics/RadialGradient;

    .line 780
    .line 781
    move-object/from16 v21, v1

    .line 782
    .line 783
    move-object/from16 v22, v3

    .line 784
    .line 785
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 786
    .line 787
    .line 788
    move-object/from16 v1, v17

    .line 789
    .line 790
    invoke-virtual {v1, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 794
    .line 795
    .line 796
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 799
    .line 800
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 801
    .line 802
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    mul-float v0, v0, p3

    .line 809
    .line 810
    float-to-int v0, v0

    .line 811
    if-gez v0, :cond_38

    .line 812
    .line 813
    goto :goto_23

    .line 814
    :cond_38
    if-le v0, v8, :cond_39

    .line 815
    .line 816
    move v6, v8

    .line 817
    goto :goto_23

    .line 818
    :cond_39
    move v6, v0

    .line 819
    :goto_23
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 820
    .line 821
    .line 822
    return-void

    .line 823
    :goto_24
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 824
    .line 825
    .line 826
    sub-int/2addr v2, v5

    .line 827
    aget v0, v21, v2

    .line 828
    .line 829
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :cond_3a
    instance-of v2, v4, Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 834
    .line 835
    if-eqz v2, :cond_42

    .line 836
    .line 837
    check-cast v4, Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 838
    .line 839
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 840
    .line 841
    const-wide v7, 0x180000000L

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    const-wide v9, 0x100000000L

    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    const-wide v11, 0x80000000L

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    if-eqz v1, :cond_3e

    .line 857
    .line 858
    invoke-static {v2, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-eqz v2, :cond_3c

    .line 863
    .line 864
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 867
    .line 868
    iget-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 869
    .line 870
    iget-object v11, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 871
    .line 872
    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 873
    .line 874
    iput-object v11, v3, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 875
    .line 876
    if-eqz v11, :cond_3b

    .line 877
    .line 878
    goto :goto_25

    .line 879
    :cond_3b
    move v5, v6

    .line 880
    :goto_25
    iput-boolean v5, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 881
    .line 882
    :cond_3c
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 883
    .line 884
    invoke-static {v2, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    if-eqz v2, :cond_3d

    .line 889
    .line 890
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 893
    .line 894
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 895
    .line 896
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 897
    .line 898
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 899
    .line 900
    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 901
    .line 902
    :cond_3d
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 903
    .line 904
    invoke-static {v2, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    if-eqz v2, :cond_42

    .line 909
    .line 910
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 913
    .line 914
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 915
    .line 916
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 917
    .line 918
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 919
    .line 920
    .line 921
    return-void

    .line 922
    :cond_3e
    invoke-static {v2, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    if-eqz v2, :cond_40

    .line 927
    .line 928
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 931
    .line 932
    iget-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 933
    .line 934
    iget-object v11, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 935
    .line 936
    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 937
    .line 938
    iput-object v11, v3, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 939
    .line 940
    if-eqz v11, :cond_3f

    .line 941
    .line 942
    goto :goto_26

    .line 943
    :cond_3f
    move v5, v6

    .line 944
    :goto_26
    iput-boolean v5, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 945
    .line 946
    :cond_40
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 947
    .line 948
    invoke-static {v2, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    if-eqz v2, :cond_41

    .line 953
    .line 954
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 955
    .line 956
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 957
    .line 958
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 959
    .line 960
    iget-object v3, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 961
    .line 962
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 963
    .line 964
    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 965
    .line 966
    :cond_41
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 967
    .line 968
    invoke-static {v2, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    if-eqz v2, :cond_42

    .line 973
    .line 974
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 975
    .line 976
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 977
    .line 978
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 979
    .line 980
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 981
    .line 982
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 983
    .line 984
    .line 985
    :cond_42
    return-void
.end method

.method public display()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 22

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
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Landroid/graphics/Canvas;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 18
    .line 19
    instance-of v5, v4, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 20
    .line 21
    if-eqz v5, :cond_1d

    .line 22
    .line 23
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Lcom/caverock/androidsvg/SVG;

    .line 26
    .line 27
    check-cast v4, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v5, v4, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 36
    .line 37
    if-eqz v5, :cond_1d

    .line 38
    .line 39
    check-cast v4, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 40
    .line 41
    iget-object v5, v4, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    :goto_0
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    invoke-static {v4, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v5, v9

    .line 74
    :goto_1
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 75
    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v8, v9

    .line 84
    :goto_2
    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 85
    .line 86
    if-eqz v10, :cond_4

    .line 87
    .line 88
    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move v10, v9

    .line 94
    :goto_3
    iget-object v11, v4, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 95
    .line 96
    if-eqz v11, :cond_5

    .line 97
    .line 98
    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    goto :goto_8

    .line 103
    :cond_5
    move v11, v9

    .line 104
    goto :goto_8

    .line 105
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    .line 106
    .line 107
    if-eqz v8, :cond_7

    .line 108
    .line 109
    invoke-virtual {v8, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    goto :goto_4

    .line 114
    :cond_7
    move v8, v9

    .line 115
    :goto_4
    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 116
    .line 117
    if-eqz v10, :cond_8

    .line 118
    .line 119
    invoke-virtual {v10, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    goto :goto_5

    .line 124
    :cond_8
    move v10, v9

    .line 125
    :goto_5
    iget-object v11, v4, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 126
    .line 127
    if-eqz v11, :cond_9

    .line 128
    .line 129
    invoke-virtual {v11, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    goto :goto_6

    .line 134
    :cond_9
    move v11, v9

    .line 135
    :goto_6
    iget-object v12, v4, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 136
    .line 137
    if-eqz v12, :cond_a

    .line 138
    .line 139
    invoke-virtual {v12, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    goto :goto_7

    .line 144
    :cond_a
    move v5, v9

    .line 145
    :goto_7
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 146
    .line 147
    iget v13, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 148
    .line 149
    iget v14, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 150
    .line 151
    mul-float/2addr v8, v14

    .line 152
    add-float/2addr v8, v13

    .line 153
    iget v13, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 154
    .line 155
    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 156
    .line 157
    mul-float/2addr v10, v12

    .line 158
    add-float/2addr v10, v13

    .line 159
    mul-float/2addr v11, v14

    .line 160
    mul-float/2addr v5, v12

    .line 161
    move/from16 v21, v11

    .line 162
    .line 163
    move v11, v5

    .line 164
    move v5, v8

    .line 165
    move v8, v10

    .line 166
    move/from16 v10, v21

    .line 167
    .line 168
    :goto_8
    cmpl-float v12, v10, v9

    .line 169
    .line 170
    if-eqz v12, :cond_1c

    .line 171
    .line 172
    cmpl-float v12, v11, v9

    .line 173
    .line 174
    if-nez v12, :cond_b

    .line 175
    .line 176
    goto/16 :goto_13

    .line 177
    .line 178
    :cond_b
    iget-object v12, v4, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 179
    .line 180
    if-eqz v12, :cond_c

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_c
    sget-object v12, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 184
    .line 185
    :goto_9
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 189
    .line 190
    .line 191
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 192
    .line 193
    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    invoke-virtual {v0, v2, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 201
    .line 202
    .line 203
    iget-object v13, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 204
    .line 205
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 206
    .line 207
    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v0, v4, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    .line 210
    .line 211
    .line 212
    iput-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 213
    .line 214
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 215
    .line 216
    iget-object v13, v4, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 217
    .line 218
    if-eqz v13, :cond_12

    .line 219
    .line 220
    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 221
    .line 222
    .line 223
    new-instance v13, Landroid/graphics/Matrix;

    .line 224
    .line 225
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v14, v4, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 229
    .line 230
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    if-eqz v14, :cond_12

    .line 235
    .line 236
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 237
    .line 238
    iget v14, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 239
    .line 240
    iget v15, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    const/16 v16, 0x1

    .line 247
    .line 248
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 249
    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    iget v7, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 253
    .line 254
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 259
    .line 260
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    move/from16 p2, v2

    .line 265
    .line 266
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 267
    .line 268
    move/from16 v19, v5

    .line 269
    .line 270
    iget v5, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    move/from16 v20, v2

    .line 277
    .line 278
    const/16 v2, 0x8

    .line 279
    .line 280
    new-array v2, v2, [F

    .line 281
    .line 282
    aput v14, v2, v17

    .line 283
    .line 284
    aput v15, v2, v16

    .line 285
    .line 286
    const/4 v14, 0x2

    .line 287
    aput p2, v2, v14

    .line 288
    .line 289
    const/4 v15, 0x3

    .line 290
    aput v7, v2, v15

    .line 291
    .line 292
    const/4 v7, 0x4

    .line 293
    aput v6, v2, v7

    .line 294
    .line 295
    const/4 v6, 0x5

    .line 296
    aput v9, v2, v6

    .line 297
    .line 298
    const/4 v6, 0x6

    .line 299
    aput v5, v2, v6

    .line 300
    .line 301
    const/4 v5, 0x7

    .line 302
    aput v20, v2, v5

    .line 303
    .line 304
    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 305
    .line 306
    .line 307
    new-instance v5, Landroid/graphics/RectF;

    .line 308
    .line 309
    aget v7, v2, v17

    .line 310
    .line 311
    aget v9, v2, v16

    .line 312
    .line 313
    invoke-direct {v5, v7, v9, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 314
    .line 315
    .line 316
    :goto_a
    if-gt v14, v6, :cond_11

    .line 317
    .line 318
    aget v7, v2, v14

    .line 319
    .line 320
    iget v9, v5, Landroid/graphics/RectF;->left:F

    .line 321
    .line 322
    cmpg-float v9, v7, v9

    .line 323
    .line 324
    if-gez v9, :cond_d

    .line 325
    .line 326
    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 327
    .line 328
    :cond_d
    iget v9, v5, Landroid/graphics/RectF;->right:F

    .line 329
    .line 330
    cmpl-float v9, v7, v9

    .line 331
    .line 332
    if-lez v9, :cond_e

    .line 333
    .line 334
    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 335
    .line 336
    :cond_e
    add-int/lit8 v7, v14, 0x1

    .line 337
    .line 338
    aget v7, v2, v7

    .line 339
    .line 340
    iget v9, v5, Landroid/graphics/RectF;->top:F

    .line 341
    .line 342
    cmpg-float v9, v7, v9

    .line 343
    .line 344
    if-gez v9, :cond_f

    .line 345
    .line 346
    iput v7, v5, Landroid/graphics/RectF;->top:F

    .line 347
    .line 348
    :cond_f
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    .line 349
    .line 350
    cmpl-float v9, v7, v9

    .line 351
    .line 352
    if-lez v9, :cond_10

    .line 353
    .line 354
    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    .line 355
    .line 356
    :cond_10
    add-int/lit8 v14, v14, 0x2

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_11
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    .line 360
    .line 361
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 362
    .line 363
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 364
    .line 365
    iget v9, v5, Landroid/graphics/RectF;->right:F

    .line 366
    .line 367
    sub-float/2addr v9, v6

    .line 368
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 369
    .line 370
    sub-float/2addr v5, v7

    .line 371
    invoke-direct {v2, v6, v7, v9, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 372
    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_12
    move/from16 v19, v5

    .line 376
    .line 377
    const/16 v16, 0x1

    .line 378
    .line 379
    const/16 v17, 0x0

    .line 380
    .line 381
    :goto_b
    iget v5, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 382
    .line 383
    sub-float v5, v5, v19

    .line 384
    .line 385
    div-float/2addr v5, v10

    .line 386
    float-to-double v5, v5

    .line 387
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 388
    .line 389
    .line 390
    move-result-wide v5

    .line 391
    double-to-float v5, v5

    .line 392
    mul-float/2addr v5, v10

    .line 393
    add-float v5, v5, v19

    .line 394
    .line 395
    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 396
    .line 397
    sub-float/2addr v6, v8

    .line 398
    div-float/2addr v6, v11

    .line 399
    float-to-double v6, v6

    .line 400
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 401
    .line 402
    .line 403
    move-result-wide v6

    .line 404
    double-to-float v6, v6

    .line 405
    mul-float/2addr v6, v11

    .line 406
    add-float/2addr v6, v8

    .line 407
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    .line 416
    .line 417
    const/4 v9, 0x0

    .line 418
    invoke-direct {v8, v9, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 422
    .line 423
    .line 424
    move-result v9

    .line 425
    :goto_c
    cmpg-float v13, v6, v2

    .line 426
    .line 427
    if-gez v13, :cond_1a

    .line 428
    .line 429
    move v13, v5

    .line 430
    :goto_d
    cmpg-float v14, v13, v7

    .line 431
    .line 432
    if-gez v14, :cond_19

    .line 433
    .line 434
    iput v13, v8, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 435
    .line 436
    iput v6, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 439
    .line 440
    .line 441
    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 444
    .line 445
    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 446
    .line 447
    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 448
    .line 449
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 450
    .line 451
    .line 452
    move-result v14

    .line 453
    if-nez v14, :cond_13

    .line 454
    .line 455
    iget v14, v8, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 456
    .line 457
    iget v15, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 458
    .line 459
    move/from16 p2, v2

    .line 460
    .line 461
    iget v2, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 462
    .line 463
    move/from16 v18, v5

    .line 464
    .line 465
    iget v5, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 466
    .line 467
    invoke-virtual {v0, v14, v15, v2, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 468
    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_13
    move/from16 p2, v2

    .line 472
    .line 473
    move/from16 v18, v5

    .line 474
    .line 475
    :goto_e
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 476
    .line 477
    if-eqz v2, :cond_14

    .line 478
    .line 479
    invoke-static {v8, v2, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 484
    .line 485
    .line 486
    goto :goto_11

    .line 487
    :cond_14
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 488
    .line 489
    if-eqz v2, :cond_16

    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_15

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_15
    move/from16 v2, v17

    .line 499
    .line 500
    goto :goto_10

    .line 501
    :cond_16
    :goto_f
    move/from16 v2, v16

    .line 502
    .line 503
    :goto_10
    invoke-virtual {v3, v13, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 504
    .line 505
    .line 506
    if-nez v2, :cond_17

    .line 507
    .line 508
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 509
    .line 510
    iget v5, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 511
    .line 512
    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 513
    .line 514
    invoke-virtual {v3, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 515
    .line 516
    .line 517
    :cond_17
    :goto_11
    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    if-eqz v5, :cond_18

    .line 528
    .line 529
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 534
    .line 535
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 536
    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_18
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 540
    .line 541
    .line 542
    add-float/2addr v13, v10

    .line 543
    move/from16 v2, p2

    .line 544
    .line 545
    move/from16 v5, v18

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :cond_19
    move/from16 p2, v2

    .line 549
    .line 550
    move/from16 v18, v5

    .line 551
    .line 552
    add-float/2addr v6, v11

    .line 553
    goto/16 :goto_c

    .line 554
    .line 555
    :cond_1a
    if-eqz v9, :cond_1b

    .line 556
    .line 557
    iget-object v1, v4, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 560
    .line 561
    .line 562
    :cond_1b
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 563
    .line 564
    .line 565
    :cond_1c
    :goto_13
    return-void

    .line 566
    :cond_1d
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 569
    .line 570
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 571
    .line 572
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 573
    .line 574
    .line 575
    return-void
.end method

.method public doStroke(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 8
    .line 9
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Landroid/graphics/Canvas;

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Landroid/graphics/Matrix;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 55
    .line 56
    .line 57
    new-instance v4, Landroid/graphics/Matrix;

    .line 58
    .line 59
    invoke-direct {v4, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v3, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object p0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v3, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_c

    .line 8
    .line 9
    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    move v1, v0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1d

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 28
    .line 29
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    xor-int/2addr v3, v0

    .line 43
    invoke-virtual {p0, v2, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2, v1}, Landroidx/compose/ui/unit/DpKt;->processText(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :cond_1
    move-object v1, v2

    .line 53
    check-cast v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroidx/compose/ui/unit/DpKt;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_2
    instance-of v1, v2, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 64
    .line 65
    const/high16 v3, 0x40000000    # 2.0f

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v1, :cond_b

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 71
    .line 72
    .line 73
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 78
    .line 79
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 97
    .line 98
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    .line 107
    .line 108
    new-array v2, v0, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v1, v2, v4

    .line 111
    .line 112
    const-string v1, "TextPath reference \'%s\' not found"

    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    check-cast v1, Lcom/caverock/androidsvg/SVG$Path;

    .line 119
    .line 120
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    .line 121
    .line 122
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 123
    .line 124
    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 128
    .line 129
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v6, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    new-instance v1, Landroid/graphics/PathMeasure;

    .line 137
    .line 138
    invoke-direct {v1, v6, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 142
    .line 143
    if-eqz v7, :cond_7

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v7, p0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    :cond_7
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 158
    .line 159
    if-eq v1, v7, :cond_9

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 166
    .line 167
    if-ne v1, v8, :cond_8

    .line 168
    .line 169
    div-float/2addr v7, v3

    .line 170
    :cond_8
    sub-float/2addr v5, v7

    .line 171
    :cond_9
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    .line 181
    .line 182
    invoke-direct {v3, p0, v6, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;F)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 186
    .line 187
    .line 188
    if-eqz v1, :cond_a

    .line 189
    .line 190
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_b

    .line 199
    .line 200
    :cond_b
    instance-of v1, v2, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 201
    .line 202
    if-eqz v1, :cond_19

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 205
    .line 206
    .line 207
    check-cast v2, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 208
    .line 209
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 212
    .line 213
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_18

    .line 221
    .line 222
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 223
    .line 224
    if-eqz v1, :cond_c

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-lez v1, :cond_c

    .line 231
    .line 232
    move v1, v0

    .line 233
    goto :goto_2

    .line 234
    :cond_c
    move v1, v4

    .line 235
    :goto_2
    instance-of v6, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    .line 236
    .line 237
    if-eqz v6, :cond_14

    .line 238
    .line 239
    if-nez v1, :cond_d

    .line 240
    .line 241
    move-object v7, p2

    .line 242
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    .line 243
    .line 244
    iget v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_d
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    .line 254
    .line 255
    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    :goto_3
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 260
    .line 261
    if-eqz v8, :cond_f

    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-nez v8, :cond_e

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_e
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    .line 277
    .line 278
    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    goto :goto_5

    .line 283
    :cond_f
    :goto_4
    move-object v8, p2

    .line 284
    check-cast v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    .line 285
    .line 286
    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 287
    .line 288
    :goto_5
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 289
    .line 290
    if-eqz v9, :cond_11

    .line 291
    .line 292
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-nez v9, :cond_10

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_10
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    .line 306
    .line 307
    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    goto :goto_7

    .line 312
    :cond_11
    :goto_6
    move v9, v5

    .line 313
    :goto_7
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 314
    .line 315
    if-eqz v10, :cond_13

    .line 316
    .line 317
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-nez v10, :cond_12

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_12
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    check-cast v5, Lcom/caverock/androidsvg/SVG$Length;

    .line 331
    .line 332
    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    :cond_13
    :goto_8
    move v12, v7

    .line 337
    move v7, v5

    .line 338
    move v5, v12

    .line 339
    goto :goto_9

    .line 340
    :cond_14
    move v7, v5

    .line 341
    move v8, v7

    .line 342
    move v9, v8

    .line 343
    :goto_9
    if-eqz v1, :cond_16

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 350
    .line 351
    if-eq v1, v10, :cond_16

    .line 352
    .line 353
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    sget-object v11, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 358
    .line 359
    if-ne v1, v11, :cond_15

    .line 360
    .line 361
    div-float/2addr v10, v3

    .line 362
    :cond_15
    sub-float/2addr v5, v10

    .line 363
    :cond_16
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    .line 364
    .line 365
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 366
    .line 367
    .line 368
    if-eqz v6, :cond_17

    .line 369
    .line 370
    move-object v1, p2

    .line 371
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    .line 372
    .line 373
    add-float/2addr v5, v9

    .line 374
    iput v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 375
    .line 376
    add-float/2addr v8, v7

    .line 377
    iput v8, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 378
    .line 379
    :cond_17
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-virtual {p0, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 384
    .line 385
    .line 386
    if-eqz v1, :cond_18

    .line 387
    .line 388
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 389
    .line 390
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 391
    .line 392
    .line 393
    :cond_18
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 394
    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_19
    instance-of v1, v2, Lcom/caverock/androidsvg/SVG$TRef;

    .line 398
    .line 399
    if-eqz v1, :cond_1c

    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 402
    .line 403
    .line 404
    move-object v1, v2

    .line 405
    check-cast v1, Lcom/caverock/androidsvg/SVG$TRef;

    .line 406
    .line 407
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 410
    .line 411
    invoke-virtual {p0, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eqz v3, :cond_1b

    .line 419
    .line 420
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    .line 421
    .line 422
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 423
    .line 424
    .line 425
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 426
    .line 427
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    if-eqz v2, :cond_1a

    .line 434
    .line 435
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 436
    .line 437
    if-eqz v3, :cond_1a

    .line 438
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 445
    .line 446
    invoke-virtual {p0, v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-lez v2, :cond_1b

    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {p2, v1}, Landroidx/compose/ui/unit/DpKt;->processText(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto :goto_a

    .line 463
    :cond_1a
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    .line 464
    .line 465
    new-array v2, v0, [Ljava/lang/Object;

    .line 466
    .line 467
    aput-object v1, v2, v4

    .line 468
    .line 469
    const-string v1, "Tref reference \'%s\' not found"

    .line 470
    .line 471
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_1b
    :goto_a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 475
    .line 476
    .line 477
    :cond_1c
    :goto_b
    move v1, v4

    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :cond_1d
    :goto_c
    return-void
.end method

.method public extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 20
    .line 21
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 26
    .line 27
    invoke-virtual {p0, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    xor-int/2addr v3, v0

    .line 44
    invoke-virtual {p0, v2, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method

.method public findClassAndLoadMemberAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move v5, p6

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getSpecialCaseContainerClass(Landroidx/compose/runtime/AbstractApplier;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_2

    .line 12
    .line 13
    instance-of p0, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    move-object p0, v1

    .line 19
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 24
    .line 25
    instance-of p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p0, p1

    .line 33
    :goto_0
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object p0, p1

    .line 39
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget-object p1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;

    .line 51
    .line 52
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;->memberAnnotations:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/util/List;

    .line 59
    .line 60
    if-nez p0, :cond_4

    .line 61
    .line 62
    :goto_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 63
    .line 64
    :cond_4
    return-object p0
.end method

.method public findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2

    .line 57
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>()V

    .line 58
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    return-object v0
.end method

.method public findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v2, p1

    .line 12
    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 36
    .line 37
    invoke-virtual {p0, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 46
    .line 47
    iput-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 50
    .line 51
    iput-object p0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 55
    .line 56
    goto :goto_0
.end method

.method public getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 8
    .line 9
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 14
    .line 15
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 21
    .line 22
    if-ne v0, p0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 25
    .line 26
    :cond_1
    return-object p0

    .line 27
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 28
    .line 29
    return-object p0
.end method

.method public getSpecialCaseContainerClass(Landroidx/compose/runtime/AbstractApplier;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p2, :cond_4

    .line 14
    .line 15
    if-eqz p4, :cond_3

    .line 16
    .line 17
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    move-object p2, p1

    .line 22
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 23
    .line 24
    iget-object v3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 25
    .line 26
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget-object p1, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 31
    .line 32
    const-string p2, "DefaultImpls"

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 45
    .line 46
    invoke-static {v0, p1, p0}, Lkotlin/TuplesKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    instance-of p2, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    move-object p2, v1

    .line 66
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object p2, v2

    .line 70
    :goto_0
    if-eqz p2, :cond_2

    .line 71
    .line 72
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->facadeClassName:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object p2, v2

    .line 76
    :goto_1
    if-eqz p2, :cond_4

    .line 77
    .line 78
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 79
    .line 80
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->getInternalName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const/16 p3, 0x2f

    .line 88
    .line 89
    const/16 p4, 0x2e

    .line 90
    .line 91
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 108
    .line 109
    invoke-static {v0, p1, p0}, Lkotlin/TuplesKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p2, "isConst should not be null for property (container="

    .line 117
    .line 118
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 p1, 0x29

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_4
    if-eqz p3, :cond_8

    .line 144
    .line 145
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    move-object p2, p1

    .line 150
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 151
    .line 152
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 153
    .line 154
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 155
    .line 156
    if-ne p3, p4, :cond_8

    .line 157
    .line 158
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->outerClass:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 159
    .line 160
    if-eqz p2, :cond_8

    .line 161
    .line 162
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 163
    .line 164
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 165
    .line 166
    if-eq p3, p4, :cond_5

    .line 167
    .line 168
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 169
    .line 170
    if-eq p3, p4, :cond_5

    .line 171
    .line 172
    if-eqz p5, :cond_8

    .line 173
    .line 174
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 175
    .line 176
    if-eq p3, p4, :cond_5

    .line 177
    .line 178
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 179
    .line 180
    if-ne p3, p4, :cond_8

    .line 181
    .line 182
    :cond_5
    iget-object p0, p2, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 185
    .line 186
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 187
    .line 188
    if-eqz p1, :cond_6

    .line 189
    .line 190
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    move-object p0, v2

    .line 194
    :goto_2
    if-eqz p0, :cond_7

    .line 195
    .line 196
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_7
    return-object v2

    .line 200
    :cond_8
    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    .line 201
    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    .line 205
    .line 206
    if-eqz p1, :cond_a

    .line 207
    .line 208
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    .line 209
    .line 210
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->knownJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 211
    .line 212
    if-nez p1, :cond_9

    .line 213
    .line 214
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 221
    .line 222
    invoke-static {v0, p1, p0}, Lkotlin/TuplesKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :cond_9
    return-object p1

    .line 228
    :cond_a
    return-object v2
.end method

.method public getStringList(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    const v0, 0x7f08007b

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const p0, 0x7f060015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const v0, 0x7f0800a9

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    const p0, 0x7f060018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const v0, 0x7f0800a8

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    new-array p2, p0, [[I

    .line 35
    .line 36
    new-array p0, p0, [I

    .line 37
    .line 38
    const v0, 0x7f040159

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    const v4, 0x7f040125

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 59
    .line 60
    aput-object v0, p2, v1

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    aput v0, p0, v1

    .line 67
    .line 68
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 69
    .line 70
    aput-object v0, p2, v5

    .line 71
    .line 72
    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p0, v5

    .line 77
    .line 78
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 79
    .line 80
    aput-object p1, p2, v3

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p0, v3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 90
    .line 91
    aput-object v2, p2, v1

    .line 92
    .line 93
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    aput v2, p0, v1

    .line 98
    .line 99
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 100
    .line 101
    aput-object v1, p2, v5

    .line 102
    .line 103
    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p0, v5

    .line 108
    .line 109
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 110
    .line 111
    aput-object v1, p2, v3

    .line 112
    .line 113
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p0, v3

    .line 118
    .line 119
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_3
    const v0, 0x7f08006f

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_4

    .line 129
    .line 130
    const p0, 0x7f040121

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-static {p1, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_4
    const v0, 0x7f080069

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_5

    .line 146
    .line 147
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_5
    const v0, 0x7f08006e

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_6

    .line 156
    .line 157
    const p0, 0x7f04011f

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-static {p1, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_6
    const v0, 0x7f0800a4

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_c

    .line 173
    .line 174
    const v0, 0x7f0800a5

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_7

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arrayContains([II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    const p0, 0x7f040127

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arrayContains([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const p0, 0x7f060014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :cond_9
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, [I

    .line 219
    .line 220
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arrayContains([II)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_a

    .line 225
    .line 226
    const p0, 0x7f060013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    :cond_a
    const p0, 0x7f0800a1

    .line 235
    .line 236
    .line 237
    if-ne p2, p0, :cond_b

    .line 238
    .line 239
    const p0, 0x7f060016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0

    .line 247
    :cond_b
    const/4 p0, 0x0

    .line 248
    return-object p0

    .line 249
    :cond_c
    :goto_1
    const p0, 0x7f060017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0
.end method

.method public indexOfCode(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "Container"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 32
    .line 33
    invoke-static {v0, p1, p0}, Lkotlin/TuplesKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    array-length p1, p0

    .line 51
    move v0, v1

    .line 52
    move v2, v0

    .line 53
    :goto_0
    const/4 v3, 0x1

    .line 54
    if-ge v0, p1, :cond_2

    .line 55
    .line 56
    aget-object v4, p0, v0

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    move v2, v3

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-eqz v2, :cond_3

    .line 86
    .line 87
    return v3

    .line 88
    :cond_3
    :goto_1
    return v1
.end method

.method public listSource()Lokio/InputStreamSource;
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lokhttp3/internal/platform/ContextAwarePlatform;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v0, v1

    .line 28
    :goto_2
    if-nez v0, :cond_4

    .line 29
    .line 30
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-string p0, "Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    const-string p0, "Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test."

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/google/gson/GsonBuilder;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcoil3/ImageLoader$Builder;

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lcoil3/ImageLoader$Builder;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v2, Lcom/google/gson/GsonBuilder;

    .line 14
    .line 15
    move-object v3, p0

    .line 16
    move-object v5, p1

    .line 17
    move-object v7, p2

    .line 18
    move-object v6, p3

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/google/gson/GsonBuilder;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method

.method public loadAnnotationDefaultValue(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 2
    .line 3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadConstantFromProperty(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/google/gson/GsonBuilder;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/google/gson/GsonBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public loadCallableAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 5
    .line 6
    if-ne p3, v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 9
    .line 10
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadPropertyAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p2, v0, v1, p3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const/4 v7, 0x0

    .line 36
    const/16 v8, 0x3c

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v3, p0

    .line 40
    move-object v4, p1

    .line 41
    invoke-static/range {v3 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 7
    .line 8
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v0, v2

    .line 23
    :goto_1
    if-eqz v0, :cond_4

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    array-length v1, v0

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_2
    if-ge v2, v1, :cond_3

    .line 43
    .line 44
    aget-object v3, v0, v2

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    .line 62
    .line 63
    invoke-direct {v6, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v5, v6, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/google/gson/GsonBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-static {v5, v3, v4}, Lcoil3/util/UtilsKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    return-object p1

    .line 79
    :cond_4
    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 80
    .line 81
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "Class for loading annotations is not found: "

    .line 86
    .line 87
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method

.method public loadConstantFromProperty(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 2
    .line 3
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x1

    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getSpecialCaseContainerClass(Landroidx/compose/runtime/AbstractApplier;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    instance-of p0, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    move-object p0, v3

    .line 29
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 34
    .line 35
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object p0, p1

    .line 43
    :goto_0
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object p0, p1

    .line 49
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    .line 53
    .line 54
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 55
    .line 56
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->KOTLIN_1_3_RC_METADATA_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    .line 62
    .line 63
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    .line 64
    .line 65
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->patch:I

    .line 66
    .line 67
    invoke-virtual {v0, v4, v5, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->isAtLeast(III)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, v3, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 74
    .line 75
    iget-object v3, v3, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 78
    .line 79
    invoke-static {p2, v1, v3, p3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-nez p2, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object p3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    .line 89
    .line 90
    invoke-virtual {p3, p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p5, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-nez p0, :cond_5

    .line 99
    .line 100
    :goto_2
    return-object p1

    .line 101
    :cond_5
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/UnsignedTypes;->isUnsignedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_9

    .line 106
    .line 107
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    .line 108
    .line 109
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    .line 114
    .line 115
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    .line 116
    .line 117
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(B)V

    .line 126
    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_6
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    .line 134
    .line 135
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    .line 136
    .line 137
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Ljava/lang/Number;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(S)V

    .line 146
    .line 147
    .line 148
    return-object p1

    .line 149
    :cond_7
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    .line 154
    .line 155
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    .line 156
    .line 157
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p0, Ljava/lang/Number;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(I)V

    .line 166
    .line 167
    .line 168
    return-object p1

    .line 169
    :cond_8
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    .line 170
    .line 171
    if-eqz p1, :cond_9

    .line 172
    .line 173
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    .line 174
    .line 175
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    .line 176
    .line 177
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p0, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide p2

    .line 185
    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(J)V

    .line 186
    .line 187
    .line 188
    return-object p1

    .line 189
    :cond_9
    return-object p0
.end method

.method public loadEnumEntryAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 7
    .line 8
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    .line 9
    .line 10
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 16
    .line 17
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->mapClass(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 p2, 0x23

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v3, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/16 v6, 0x3c

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    move-object v1, p0

    .line 54
    move-object v2, p1

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public loadExtensionReceiverParameterAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p2, v0, v1, p3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 20
    .line 21
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    .line 22
    .line 23
    const-string p3, "@0"

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {v2, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x3c

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move-object v1, p1

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 44
    .line 45
    return-object p0
.end method

.method public loadPropertyAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 4
    .line 5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 6
    .line 7
    iget v2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    .line 18
    .line 19
    iget-object v2, p1, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 22
    .line 23
    if-ne p3, v1, :cond_1

    .line 24
    .line 25
    const/16 p3, 0x28

    .line 26
    .line 27
    invoke-static {p2, v2, v0, p3}, Lcoil3/util/ContextsKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v8, 0x8

    .line 35
    .line 36
    move-object v3, p0

    .line 37
    move-object v4, p1

    .line 38
    invoke-static/range {v3 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    move-object v3, p0

    .line 44
    move-object v4, p1

    .line 45
    const/16 p0, 0x30

    .line 46
    .line 47
    invoke-static {p2, v2, v0, p0}, Lcoil3/util/ContextsKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "$delegate"

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    .line 64
    .line 65
    if-ne p3, p1, :cond_3

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    :cond_3
    if-eq p0, p2, :cond_4

    .line 69
    .line 70
    :goto_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    move-object v8, v6

    .line 74
    const/4 v6, 0x1

    .line 75
    move v9, v7

    .line 76
    const/4 v7, 0x1

    .line 77
    invoke-virtual/range {v3 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public loadPropertyBackingFieldAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->BACKING_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadPropertyAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public loadPropertyConstant(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 2
    .line 3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadConstantFromProperty(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public loadPropertyDelegateFieldAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadPropertyAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lokhttp3/FormBody$Builder;

    .line 51
    .line 52
    invoke-virtual {v2, v1, p2}, Lokhttp3/FormBody$Builder;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method public loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeParameterAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lokhttp3/FormBody$Builder;

    .line 51
    .line 52
    invoke-virtual {v2, v1, p2}, Lokhttp3/FormBody$Builder;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method public loadValueParameterAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p5, p1, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p2, p5, v0, p3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-eqz p3, :cond_7

    .line 18
    .line 19
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    const/16 v2, 0x40

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 29
    .line 30
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    .line 31
    .line 32
    and-int/lit8 p5, p2, 0x20

    .line 33
    .line 34
    if-ne p5, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    and-int/2addr p2, v2

    .line 38
    if-ne p2, v2, :cond_5

    .line 39
    .line 40
    :goto_0
    move v1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 43
    .line 44
    if-eqz p5, :cond_3

    .line 45
    .line 46
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 47
    .line 48
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 p5, p2, 0x20

    .line 51
    .line 52
    if-ne p5, v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    and-int/2addr p2, v2

    .line 56
    if-ne p2, v2, :cond_5

    .line 57
    .line 58
    :goto_1
    goto :goto_0

    .line 59
    :cond_3
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 60
    .line 61
    if-eqz p5, :cond_6

    .line 62
    .line 63
    move-object p2, p1

    .line 64
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 65
    .line 66
    iget-object p5, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 67
    .line 68
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    .line 69
    .line 70
    if-ne p5, v0, :cond_4

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->isInner:Z

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    :goto_2
    add-int/2addr p4, v1

    .line 80
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {v5, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    const/16 v8, 0x3c

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    move-object v3, p0

    .line 107
    move-object v4, p1

    .line 108
    invoke-static/range {v3 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findClassAndLoadMemberAnnotations$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p3, "Unsupported message: "

    .line 122
    .line 123
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_7
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 138
    .line 139
    return-object p0
.end method

.method public makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 223
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v3

    .line 224
    :goto_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :cond_1
    move/from16 v16, v3

    .line 225
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    sub-float v2, v9, v0

    sub-float v8, v16, v0

    add-float v5, v9, v0

    add-float v3, v16, v0

    .line 226
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 227
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    invoke-direct {v4, v2, v8, v6, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2
    const v1, 0x3f0d6289

    mul-float/2addr v0, v1

    .line 228
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 229
    invoke-virtual {v4, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v7, v9, v0

    sub-float v14, v16, v0

    move v15, v5

    move-object v10, v4

    move v13, v5

    move v11, v7

    move v12, v8

    .line 230
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v1, v12

    move/from16 v17, v14

    add-float v14, v16, v0

    move v10, v3

    move v8, v3

    move v6, v14

    .line 231
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v7, v9, v0

    move v15, v2

    move v13, v2

    move-object v10, v4

    move v11, v7

    move v12, v8

    .line 232
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v13

    move v10, v1

    move v8, v1

    move/from16 v6, v17

    .line 233
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 234
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method public makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 235
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v3

    .line 236
    :goto_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :cond_1
    move/from16 v16, v3

    .line 237
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 238
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    sub-float v3, v9, v2

    sub-float v8, v16, v0

    add-float v5, v9, v2

    add-float v4, v16, v0

    .line 239
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_2

    .line 240
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v10, v2, v7

    mul-float/2addr v7, v0

    invoke-direct {v6, v3, v8, v10, v7}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2
    const v1, 0x3f0d6289

    mul-float/2addr v2, v1

    mul-float/2addr v0, v1

    .line 241
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 242
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v7, v9, v2

    sub-float v14, v16, v0

    move v15, v5

    move v13, v5

    move v11, v7

    move v12, v8

    .line 243
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v1, v12

    move/from16 v17, v14

    add-float v14, v16, v0

    move v8, v4

    move-object v4, v10

    move v10, v8

    move v6, v14

    .line 244
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v7, v9, v2

    move v15, v3

    move v13, v3

    move-object v10, v4

    move v11, v7

    move v12, v8

    .line 245
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v13

    move v10, v1

    move v8, v1

    move/from16 v6, v17

    .line 246
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 247
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method public makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    move v2, v3

    .line 15
    :goto_0
    move v4, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :goto_1
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 44
    .line 45
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/high16 v6, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v5, v6

    .line 52
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    div-float/2addr v5, v6

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    move v7, v5

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v7, v3

    .line 78
    :goto_2
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    move v10, v5

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v10, v3

    .line 89
    :goto_3
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 90
    .line 91
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 96
    .line 97
    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 102
    .line 103
    if-nez v6, :cond_5

    .line 104
    .line 105
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    .line 106
    .line 107
    invoke-direct {v6, v7, v10, v5, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 108
    .line 109
    .line 110
    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 111
    .line 112
    :cond_5
    add-float/2addr v5, v7

    .line 113
    add-float v15, v10, v0

    .line 114
    .line 115
    new-instance v6, Landroid/graphics/Path;

    .line 116
    .line 117
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 118
    .line 119
    .line 120
    cmpl-float v0, v2, v3

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    cmpl-float v0, v4, v3

    .line 125
    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    :cond_6
    move v11, v5

    .line 129
    goto :goto_4

    .line 130
    :cond_7
    const v0, 0x3f0d6289

    .line 131
    .line 132
    .line 133
    mul-float v1, v2, v0

    .line 134
    .line 135
    mul-float/2addr v0, v4

    .line 136
    add-float v14, v10, v4

    .line 137
    .line 138
    invoke-virtual {v6, v7, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    .line 140
    .line 141
    sub-float v8, v14, v0

    .line 142
    .line 143
    add-float v11, v7, v2

    .line 144
    .line 145
    sub-float v9, v11, v1

    .line 146
    .line 147
    move v12, v10

    .line 148
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 149
    .line 150
    .line 151
    move/from16 v18, v9

    .line 152
    .line 153
    move v3, v11

    .line 154
    sub-float v2, v5, v2

    .line 155
    .line 156
    invoke-virtual {v6, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    .line 158
    .line 159
    add-float v9, v2, v1

    .line 160
    .line 161
    move v13, v5

    .line 162
    move v11, v5

    .line 163
    move v12, v8

    .line 164
    move-object v8, v6

    .line 165
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 166
    .line 167
    .line 168
    move v1, v14

    .line 169
    move v14, v9

    .line 170
    sub-float v4, v15, v4

    .line 171
    .line 172
    invoke-virtual {v6, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    .line 174
    .line 175
    add-float v10, v4, v0

    .line 176
    .line 177
    move/from16 v17, v15

    .line 178
    .line 179
    move/from16 v16, v2

    .line 180
    .line 181
    move v13, v10

    .line 182
    move v12, v11

    .line 183
    move-object v11, v6

    .line 184
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v3, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    .line 189
    .line 190
    move v11, v7

    .line 191
    move v12, v4

    .line 192
    move v9, v7

    .line 193
    move v8, v15

    .line 194
    move/from16 v7, v18

    .line 195
    .line 196
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 197
    .line 198
    .line 199
    move v7, v9

    .line 200
    invoke-virtual {v6, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :goto_4
    invoke-virtual {v6, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    .line 218
    .line 219
    :goto_5
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 220
    .line 221
    .line 222
    return-object v6
.end method

.method public makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 19
    .line 20
    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 26
    .line 27
    :goto_1
    if-eqz p3, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iget p2, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 35
    .line 36
    :goto_2
    if-eqz p4, :cond_4

    .line 37
    .line 38
    invoke-virtual {p4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    iget p0, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 44
    .line 45
    :goto_3
    new-instance p3, Lcom/caverock/androidsvg/SVG$Box;

    .line 46
    .line 47
    invoke-direct {p3, p1, v0, p2, p0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 48
    .line 49
    .line 50
    return-object p3
.end method

.method public objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Stack;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_22

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    .line 50
    .line 51
    new-array v0, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    move-object p2, p1

    .line 57
    check-cast p2, Lcom/caverock/androidsvg/SVG$Use;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 60
    .line 61
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 70
    .line 71
    new-array p2, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p1, p2, v3

    .line 74
    .line 75
    const-string p1, "Use reference \'%s\' not found"

    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Ljava/util/Stack;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_2
    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Ljava/util/Stack;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_3
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 111
    .line 112
    invoke-virtual {p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_4
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 121
    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iput-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 129
    .line 130
    :cond_5
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    .line 131
    .line 132
    if-eqz p2, :cond_1f

    .line 133
    .line 134
    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_b

    .line 138
    .line 139
    :cond_6
    instance-of p2, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .line 140
    .line 141
    if-eqz p2, :cond_11

    .line 142
    .line 143
    move-object p2, p1

    .line 144
    check-cast p2, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .line 145
    .line 146
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    .line 152
    .line 153
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 156
    .line 157
    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 161
    .line 162
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    .line 163
    .line 164
    if-nez v0, :cond_7

    .line 165
    .line 166
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 171
    .line 172
    :cond_7
    move-object v0, v2

    .line 173
    goto :goto_0

    .line 174
    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto :goto_0

    .line 186
    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    .line 187
    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    move-object v0, p1

    .line 191
    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_0

    .line 198
    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 199
    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    move-object v0, p1

    .line 203
    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_0

    .line 210
    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    move-object v0, p1

    .line 215
    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto :goto_0

    .line 222
    :cond_c
    move-object v0, v1

    .line 223
    :goto_0
    if-nez v0, :cond_d

    .line 224
    .line 225
    :goto_1
    return-object v1

    .line 226
    :cond_d
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 227
    .line 228
    if-nez v1, :cond_e

    .line 229
    .line 230
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iput-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 235
    .line 236
    :cond_e
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 237
    .line 238
    if-eqz p2, :cond_f

    .line 239
    .line 240
    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 241
    .line 242
    .line 243
    :cond_f
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 246
    .line 247
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 248
    .line 249
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 250
    .line 251
    if-eqz p2, :cond_10

    .line 252
    .line 253
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 254
    .line 255
    if-ne p2, v1, :cond_10

    .line 256
    .line 257
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_10
    sget-object p2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 261
    .line 262
    :goto_2
    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_b

    .line 266
    .line 267
    :cond_11
    instance-of p2, p1, Lcom/caverock/androidsvg/SVG$Text;

    .line 268
    .line 269
    if-eqz p2, :cond_21

    .line 270
    .line 271
    move-object p2, p1

    .line 272
    check-cast p2, Lcom/caverock/androidsvg/SVG$Text;

    .line 273
    .line 274
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 275
    .line 276
    const/4 v1, 0x0

    .line 277
    if-eqz v0, :cond_13

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_12

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_12
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 293
    .line 294
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    goto :goto_4

    .line 299
    :cond_13
    :goto_3
    move v0, v1

    .line 300
    :goto_4
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 301
    .line 302
    if-eqz v2, :cond_15

    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_14

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_14
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    .line 318
    .line 319
    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    goto :goto_6

    .line 324
    :cond_15
    :goto_5
    move v2, v1

    .line 325
    :goto_6
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 326
    .line 327
    if-eqz v4, :cond_17

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-nez v4, :cond_16

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_16
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    .line 343
    .line 344
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    goto :goto_8

    .line 349
    :cond_17
    :goto_7
    move v4, v1

    .line 350
    :goto_8
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 351
    .line 352
    if-eqz v5, :cond_19

    .line 353
    .line 354
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-nez v5, :cond_18

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_18
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    .line 368
    .line 369
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    :cond_19
    :goto_9
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 376
    .line 377
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 378
    .line 379
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 380
    .line 381
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 382
    .line 383
    if-eq v3, v5, :cond_1b

    .line 384
    .line 385
    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 392
    .line 393
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 394
    .line 395
    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 396
    .line 397
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 398
    .line 399
    if-ne v5, v6, :cond_1a

    .line 400
    .line 401
    const/high16 v5, 0x40000000    # 2.0f

    .line 402
    .line 403
    div-float/2addr v3, v5

    .line 404
    :cond_1a
    sub-float/2addr v0, v3

    .line 405
    :cond_1b
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 406
    .line 407
    if-nez v3, :cond_1c

    .line 408
    .line 409
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    .line 410
    .line 411
    invoke-direct {v3, p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 415
    .line 416
    .line 417
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    .line 418
    .line 419
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Ljava/lang/Object;

    .line 420
    .line 421
    move-object v6, v3

    .line 422
    check-cast v6, Landroid/graphics/RectF;

    .line 423
    .line 424
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .line 425
    .line 426
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 427
    .line 428
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    check-cast v3, Landroid/graphics/RectF;

    .line 433
    .line 434
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-direct {v5, v7, v8, v6, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 439
    .line 440
    .line 441
    iput-object v5, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 442
    .line 443
    :cond_1c
    new-instance v3, Landroid/graphics/Path;

    .line 444
    .line 445
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 446
    .line 447
    .line 448
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    .line 449
    .line 450
    add-float/2addr v0, v4

    .line 451
    add-float/2addr v2, v1

    .line 452
    invoke-direct {v5, p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, p2, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    .line 459
    .line 460
    if-eqz p2, :cond_1d

    .line 461
    .line 462
    invoke-virtual {v3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 463
    .line 464
    .line 465
    :cond_1d
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 468
    .line 469
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 470
    .line 471
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 472
    .line 473
    if-eqz p2, :cond_1e

    .line 474
    .line 475
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 476
    .line 477
    if-ne p2, v0, :cond_1e

    .line 478
    .line 479
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 480
    .line 481
    goto :goto_a

    .line 482
    :cond_1e
    sget-object p2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 483
    .line 484
    :goto_a
    invoke-virtual {v3, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 485
    .line 486
    .line 487
    move-object v0, v3

    .line 488
    :cond_1f
    :goto_b
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 491
    .line 492
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 493
    .line 494
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 495
    .line 496
    if-eqz p2, :cond_20

    .line 497
    .line 498
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 499
    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    if-eqz p1, :cond_20

    .line 505
    .line 506
    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 507
    .line 508
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 509
    .line 510
    .line 511
    :cond_20
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast p1, Ljava/util/Stack;

    .line 514
    .line 515
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 520
    .line 521
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 522
    .line 523
    return-object v0

    .line 524
    :cond_21
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    new-array p1, v2, [Ljava/lang/Object;

    .line 529
    .line 530
    aput-object p0, p1, v3

    .line 531
    .line 532
    const-string p0, "Invalid %s element found in clipPath definition"

    .line 533
    .line 534
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    return-object v1

    .line 538
    :cond_22
    :goto_c
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast p1, Ljava/util/Stack;

    .line 541
    .line 542
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 547
    .line 548
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 549
    .line 550
    return-object v1
.end method

.method public popLayer(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Canvas;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 21
    .line 22
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/16 v4, 0x1f

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroid/graphics/ColorMatrix;

    .line 42
    .line 43
    const/16 v6, 0x14

    .line 44
    .line 45
    new-array v6, v6, [F

    .line 46
    .line 47
    fill-array-data v6, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    .line 54
    .line 55
    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lcom/caverock/androidsvg/SVG;

    .line 67
    .line 68
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 71
    .line 72
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 73
    .line 74
    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/caverock/androidsvg/SVG$Mask;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 86
    .line 87
    .line 88
    new-instance v5, Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 94
    .line 95
    invoke-direct {v6, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v5, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59ce07    # 0.2127f
        0x3f3710cb    # 0.7151f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
    .end array-data
.end method

.method public pushLayer()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    cmpg-float v0, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v1

    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/graphics/Canvas;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/high16 v3, 0x43800000    # 256.0f

    .line 49
    .line 50
    mul-float/2addr v2, v3

    .line 51
    float-to-int v2, v2

    .line 52
    if-gez v2, :cond_2

    .line 53
    .line 54
    move v2, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 v3, 0xff

    .line 57
    .line 58
    if-le v2, v3, :cond_3

    .line 59
    .line 60
    move v2, v3

    .line 61
    :cond_3
    :goto_1
    const/16 v3, 0x1f

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/util/Stack;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 83
    .line 84
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Lcom/caverock/androidsvg/SVG;

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Mask;

    .line 107
    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 117
    .line 118
    new-array v3, v2, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object v0, v3, v1

    .line 121
    .line 122
    const-string v0, "Mask reference \'%s\' not found"

    .line 123
    .line 124
    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 132
    .line 133
    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 134
    .line 135
    :cond_5
    return v2
.end method

.method public readTheList()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->listSource()Lokio/InputStreamSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lokio/RealBufferedSource;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v1}, Lokio/RealBufferedSource;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-long v2, v0

    .line 15
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1}, Lokio/RealBufferedSource;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-long v2, v2

    .line 24
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 29
    .line 30
    .line 31
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_5
    monitor-exit p0

    .line 55
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    :catchall_2
    move-exception v0

    .line 57
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 58
    :catchall_3
    move-exception v2

    .line 59
    :try_start_7
    invoke-static {v1, v0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 3

    .line 2189
    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p4, :cond_2

    .line 2190
    iget-object p4, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 2191
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 2192
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 2193
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 2194
    iget-object p2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2195
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget p2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 2196
    :cond_4
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 2197
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    if-eqz p3, :cond_5

    .line 2198
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2199
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p3, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object p3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 2200
    :cond_5
    iget-object p3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget p4, p3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget p3, p3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2201
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result p2

    .line 2202
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    const/4 p3, 0x1

    .line 2203
    invoke-virtual {p0, p1, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz p2, :cond_6

    .line 2204
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 2205
    :cond_6
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 13

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 30
    .line 31
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 38
    .line 39
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1d

    .line 57
    .line 58
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_16

    .line 65
    .line 66
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/graphics/Canvas;

    .line 71
    .line 72
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 73
    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_7f

    .line 81
    .line 82
    :cond_4
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    goto/16 :goto_1d

    .line 93
    .line 94
    :cond_5
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 97
    .line 98
    invoke-virtual {p0, v5, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_6

    .line 106
    .line 107
    goto/16 :goto_1d

    .line 108
    .line 109
    :cond_6
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 110
    .line 111
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v5, :cond_7

    .line 118
    .line 119
    const-string v0, "Use reference \'%s\' not found"

    .line 120
    .line 121
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 122
    .line 123
    new-array v2, v3, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object p1, v2, v1

    .line 126
    .line 127
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1d

    .line 131
    .line 132
    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 140
    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    goto :goto_1

    .line 148
    :cond_9
    move v1, v4

    .line 149
    :goto_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 150
    .line 151
    if-eqz v6, :cond_a

    .line 152
    .line 153
    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    goto :goto_2

    .line 158
    :cond_a
    move v6, v4

    .line 159
    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 163
    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v6, Ljava/util/Stack;

    .line 174
    .line 175
    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v6, Ljava/util/Stack;

    .line 181
    .line 182
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v7, Landroid/graphics/Canvas;

    .line 185
    .line 186
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    instance-of v6, v5, Lcom/caverock/androidsvg/SVG$Svg;

    .line 194
    .line 195
    if-eqz v6, :cond_b

    .line 196
    .line 197
    check-cast v5, Lcom/caverock/androidsvg/SVG$Svg;

    .line 198
    .line 199
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 200
    .line 201
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 202
    .line 203
    invoke-virtual {p0, v2, v2, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 208
    .line 209
    .line 210
    iget-object v2, v5, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 211
    .line 212
    iget-object v3, v5, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 213
    .line 214
    invoke-virtual {p0, v5, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_8

    .line 221
    .line 222
    :cond_b
    instance-of v6, v5, Lcom/caverock/androidsvg/SVG$Symbol;

    .line 223
    .line 224
    if-eqz v6, :cond_14

    .line 225
    .line 226
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 227
    .line 228
    const/high16 v7, 0x42c80000    # 100.0f

    .line 229
    .line 230
    if-eqz v6, :cond_c

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_c
    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    .line 234
    .line 235
    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 236
    .line 237
    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 241
    .line 242
    if-eqz v8, :cond_d

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_d
    new-instance v8, Lcom/caverock/androidsvg/SVG$Length;

    .line 246
    .line 247
    sget-object v9, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 248
    .line 249
    invoke-direct {v8, v7, v9}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-virtual {p0, v2, v2, v6, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 257
    .line 258
    .line 259
    check-cast v5, Lcom/caverock/androidsvg/SVG$Symbol;

    .line 260
    .line 261
    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 262
    .line 263
    cmpl-float v6, v6, v4

    .line 264
    .line 265
    if-eqz v6, :cond_13

    .line 266
    .line 267
    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 268
    .line 269
    cmpl-float v4, v6, v4

    .line 270
    .line 271
    if-nez v4, :cond_e

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_e
    iget-object v4, v5, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 275
    .line 276
    if-eqz v4, :cond_f

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_f
    sget-object v4, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 280
    .line 281
    :goto_5
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 284
    .line 285
    invoke-virtual {p0, v6, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 286
    .line 287
    .line 288
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 291
    .line 292
    iput-object v2, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 293
    .line 294
    iget-object v2, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 295
    .line 296
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_10

    .line 303
    .line 304
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 307
    .line 308
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 309
    .line 310
    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 311
    .line 312
    iget v7, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 313
    .line 314
    iget v8, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 315
    .line 316
    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 317
    .line 318
    invoke-virtual {p0, v6, v7, v8, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 319
    .line 320
    .line 321
    :cond_10
    iget-object v2, v5, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 322
    .line 323
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 326
    .line 327
    if-eqz v2, :cond_11

    .line 328
    .line 329
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 330
    .line 331
    invoke-static {v6, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 341
    .line 342
    iget-object v2, v5, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 343
    .line 344
    iput-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_11
    iget-object v2, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 348
    .line 349
    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 350
    .line 351
    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 352
    .line 353
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 354
    .line 355
    .line 356
    :goto_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-virtual {p0, v5, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 361
    .line 362
    .line 363
    if-eqz v0, :cond_12

    .line 364
    .line 365
    iget-object v0, v5, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 366
    .line 367
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 368
    .line 369
    .line 370
    :cond_12
    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 371
    .line 372
    .line 373
    :cond_13
    :goto_7
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_14
    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 378
    .line 379
    .line 380
    :goto_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Ljava/util/Stack;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Ljava/util/Stack;

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    if-eqz v1, :cond_15

    .line 395
    .line 396
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 397
    .line 398
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 399
    .line 400
    .line 401
    :cond_15
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_1d

    .line 405
    .line 406
    :cond_16
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    .line 407
    .line 408
    if-eqz v0, :cond_23

    .line 409
    .line 410
    check-cast p1, Lcom/caverock/androidsvg/SVG$Switch;

    .line 411
    .line 412
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 415
    .line 416
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-nez v0, :cond_17

    .line 424
    .line 425
    goto/16 :goto_1d

    .line 426
    .line 427
    :cond_17
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    .line 428
    .line 429
    if-eqz v0, :cond_18

    .line 430
    .line 431
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v1, Landroid/graphics/Canvas;

    .line 434
    .line 435
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 436
    .line 437
    .line 438
    :cond_18
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 439
    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    :cond_19
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_21

    .line 466
    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 472
    .line 473
    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 474
    .line 475
    if-nez v4, :cond_1a

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_1a
    move-object v4, v3

    .line 479
    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 480
    .line 481
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    if-eqz v5, :cond_1b

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_1b
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    if-eqz v5, :cond_1c

    .line 493
    .line 494
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 495
    .line 496
    .line 497
    move-result v6

    .line 498
    if-nez v6, :cond_19

    .line 499
    .line 500
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-nez v5, :cond_1c

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_1c
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    if-eqz v5, :cond_1e

    .line 512
    .line 513
    sget-object v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 514
    .line 515
    if-nez v6, :cond_1d

    .line 516
    .line 517
    const-class v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 518
    .line 519
    monitor-enter v6

    .line 520
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    .line 521
    .line 522
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 523
    .line 524
    .line 525
    sput-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 526
    .line 527
    const-string v8, "Structure"

    .line 528
    .line 529
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 533
    .line 534
    const-string v8, "BasicStructure"

    .line 535
    .line 536
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 540
    .line 541
    const-string v8, "ConditionalProcessing"

    .line 542
    .line 543
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 547
    .line 548
    const-string v8, "Image"

    .line 549
    .line 550
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 554
    .line 555
    const-string v8, "Style"

    .line 556
    .line 557
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 561
    .line 562
    const-string v8, "ViewportAttribute"

    .line 563
    .line 564
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 568
    .line 569
    const-string v8, "Shape"

    .line 570
    .line 571
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 575
    .line 576
    const-string v8, "BasicText"

    .line 577
    .line 578
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 582
    .line 583
    const-string v8, "PaintAttribute"

    .line 584
    .line 585
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 589
    .line 590
    const-string v8, "BasicPaintAttribute"

    .line 591
    .line 592
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 596
    .line 597
    const-string v8, "OpacityAttribute"

    .line 598
    .line 599
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 603
    .line 604
    const-string v8, "BasicGraphicsAttribute"

    .line 605
    .line 606
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 610
    .line 611
    const-string v8, "Marker"

    .line 612
    .line 613
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 617
    .line 618
    const-string v8, "Gradient"

    .line 619
    .line 620
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 624
    .line 625
    const-string v8, "Pattern"

    .line 626
    .line 627
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 631
    .line 632
    const-string v8, "Clip"

    .line 633
    .line 634
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 638
    .line 639
    const-string v8, "BasicClip"

    .line 640
    .line 641
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 645
    .line 646
    const-string v8, "Mask"

    .line 647
    .line 648
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 652
    .line 653
    const-string v8, "View"

    .line 654
    .line 655
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .line 657
    .line 658
    monitor-exit v6

    .line 659
    goto :goto_a

    .line 660
    :catchall_0
    move-exception p0

    .line 661
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    throw p0

    .line 663
    :cond_1d
    :goto_a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    if-nez v6, :cond_19

    .line 668
    .line 669
    sget-object v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 670
    .line 671
    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    if-nez v5, :cond_1e

    .line 676
    .line 677
    goto/16 :goto_9

    .line 678
    .line 679
    :cond_1e
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    if-eqz v5, :cond_1f

    .line 684
    .line 685
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 686
    .line 687
    .line 688
    goto/16 :goto_9

    .line 689
    .line 690
    :cond_1f
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    if-eqz v4, :cond_20

    .line 695
    .line 696
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 697
    .line 698
    .line 699
    goto/16 :goto_9

    .line 700
    .line 701
    :cond_20
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 702
    .line 703
    .line 704
    :cond_21
    if-eqz v0, :cond_22

    .line 705
    .line 706
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 707
    .line 708
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 709
    .line 710
    .line 711
    :cond_22
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_1d

    .line 715
    .line 716
    :cond_23
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    .line 717
    .line 718
    if-eqz v0, :cond_27

    .line 719
    .line 720
    check-cast p1, Lcom/caverock/androidsvg/SVG$Group;

    .line 721
    .line 722
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 725
    .line 726
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-nez v0, :cond_24

    .line 734
    .line 735
    goto/16 :goto_1d

    .line 736
    .line 737
    :cond_24
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    .line 738
    .line 739
    if-eqz v0, :cond_25

    .line 740
    .line 741
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v1, Landroid/graphics/Canvas;

    .line 744
    .line 745
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 746
    .line 747
    .line 748
    :cond_25
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 749
    .line 750
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    invoke-virtual {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 758
    .line 759
    .line 760
    if-eqz v0, :cond_26

    .line 761
    .line 762
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 763
    .line 764
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 765
    .line 766
    .line 767
    :cond_26
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_1d

    .line 771
    .line 772
    :cond_27
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    .line 773
    .line 774
    const/4 v5, 0x2

    .line 775
    if-eqz v0, :cond_37

    .line 776
    .line 777
    check-cast p1, Lcom/caverock/androidsvg/SVG$Image;

    .line 778
    .line 779
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v0, Landroid/graphics/Canvas;

    .line 782
    .line 783
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 784
    .line 785
    if-eqz v6, :cond_7f

    .line 786
    .line 787
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 788
    .line 789
    .line 790
    move-result v6

    .line 791
    if-nez v6, :cond_7f

    .line 792
    .line 793
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 794
    .line 795
    if-eqz v6, :cond_7f

    .line 796
    .line 797
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 798
    .line 799
    .line 800
    move-result v6

    .line 801
    if-eqz v6, :cond_28

    .line 802
    .line 803
    goto/16 :goto_1d

    .line 804
    .line 805
    :cond_28
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    .line 806
    .line 807
    if-nez v6, :cond_29

    .line 808
    .line 809
    goto/16 :goto_1d

    .line 810
    .line 811
    :cond_29
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 812
    .line 813
    if-eqz v7, :cond_2a

    .line 814
    .line 815
    goto :goto_b

    .line 816
    :cond_2a
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 817
    .line 818
    :goto_b
    const-string v8, "data:"

    .line 819
    .line 820
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 821
    .line 822
    .line 823
    move-result v8

    .line 824
    if-nez v8, :cond_2b

    .line 825
    .line 826
    goto :goto_c

    .line 827
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    const/16 v9, 0xe

    .line 832
    .line 833
    if-ge v8, v9, :cond_2c

    .line 834
    .line 835
    goto :goto_c

    .line 836
    :cond_2c
    const/16 v8, 0x2c

    .line 837
    .line 838
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    const/16 v9, 0xc

    .line 843
    .line 844
    if-ge v8, v9, :cond_2d

    .line 845
    .line 846
    goto :goto_c

    .line 847
    :cond_2d
    const-string v9, ";base64"

    .line 848
    .line 849
    add-int/lit8 v10, v8, -0x7

    .line 850
    .line 851
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v10

    .line 855
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v9

    .line 859
    if-nez v9, :cond_2e

    .line 860
    .line 861
    goto :goto_c

    .line 862
    :cond_2e
    add-int/2addr v8, v3

    .line 863
    :try_start_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    array-length v6, v3

    .line 872
    invoke-static {v3, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 873
    .line 874
    .line 875
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 876
    goto :goto_c

    .line 877
    :catch_0
    move-exception v3

    .line 878
    const-string v6, "SVGAndroidRenderer"

    .line 879
    .line 880
    const-string v8, "Could not decode bad Data URL"

    .line 881
    .line 882
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .line 884
    .line 885
    :goto_c
    if-nez v2, :cond_2f

    .line 886
    .line 887
    goto/16 :goto_1d

    .line 888
    .line 889
    :cond_2f
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    .line 890
    .line 891
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 892
    .line 893
    .line 894
    move-result v6

    .line 895
    int-to-float v6, v6

    .line 896
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 897
    .line 898
    .line 899
    move-result v8

    .line 900
    int-to-float v8, v8

    .line 901
    invoke-direct {v3, v4, v4, v6, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 902
    .line 903
    .line 904
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 907
    .line 908
    invoke-virtual {p0, v6, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 912
    .line 913
    .line 914
    move-result v6

    .line 915
    if-nez v6, :cond_30

    .line 916
    .line 917
    goto/16 :goto_1d

    .line 918
    .line 919
    :cond_30
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 920
    .line 921
    .line 922
    move-result v6

    .line 923
    if-nez v6, :cond_31

    .line 924
    .line 925
    goto/16 :goto_1d

    .line 926
    .line 927
    :cond_31
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    .line 928
    .line 929
    if-eqz v6, :cond_32

    .line 930
    .line 931
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 932
    .line 933
    .line 934
    :cond_32
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 935
    .line 936
    if-eqz v6, :cond_33

    .line 937
    .line 938
    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 939
    .line 940
    .line 941
    move-result v6

    .line 942
    goto :goto_d

    .line 943
    :cond_33
    move v6, v4

    .line 944
    :goto_d
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 945
    .line 946
    if-eqz v8, :cond_34

    .line 947
    .line 948
    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 949
    .line 950
    .line 951
    move-result v8

    .line 952
    goto :goto_e

    .line 953
    :cond_34
    move v8, v4

    .line 954
    :goto_e
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 955
    .line 956
    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 957
    .line 958
    .line 959
    move-result v9

    .line 960
    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 961
    .line 962
    invoke-virtual {v10, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 963
    .line 964
    .line 965
    move-result v10

    .line 966
    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 969
    .line 970
    new-instance v12, Lcom/caverock/androidsvg/SVG$Box;

    .line 971
    .line 972
    invoke-direct {v12, v6, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 973
    .line 974
    .line 975
    iput-object v12, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 976
    .line 977
    iget-object v6, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 978
    .line 979
    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 980
    .line 981
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 982
    .line 983
    .line 984
    move-result v6

    .line 985
    if-nez v6, :cond_35

    .line 986
    .line 987
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 988
    .line 989
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 990
    .line 991
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 992
    .line 993
    iget v8, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 994
    .line 995
    iget v9, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 996
    .line 997
    iget v10, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 998
    .line 999
    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1000
    .line 1001
    invoke-virtual {p0, v8, v9, v10, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1002
    .line 1003
    .line 1004
    :cond_35
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1005
    .line 1006
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1007
    .line 1008
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1009
    .line 1010
    iput-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1011
    .line 1012
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1016
    .line 1017
    invoke-virtual {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v6

    .line 1024
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1028
    .line 1029
    .line 1030
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1033
    .line 1034
    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1035
    .line 1036
    invoke-static {v8, v3, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v3

    .line 1040
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1041
    .line 1042
    .line 1043
    new-instance v3, Landroid/graphics/Paint;

    .line 1044
    .line 1045
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1046
    .line 1047
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1048
    .line 1049
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 1050
    .line 1051
    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 1052
    .line 1053
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 1054
    .line 1055
    if-ne v7, v8, :cond_36

    .line 1056
    .line 1057
    goto :goto_f

    .line 1058
    :cond_36
    move v1, v5

    .line 1059
    :goto_f
    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1066
    .line 1067
    .line 1068
    if-eqz v6, :cond_7f

    .line 1069
    .line 1070
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1071
    .line 1072
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_1d

    .line 1076
    .line 1077
    :cond_37
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    .line 1078
    .line 1079
    if-eqz v0, :cond_41

    .line 1080
    .line 1081
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .line 1082
    .line 1083
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1084
    .line 1085
    if-nez v0, :cond_38

    .line 1086
    .line 1087
    goto/16 :goto_1d

    .line 1088
    .line 1089
    :cond_38
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1092
    .line 1093
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    if-nez v0, :cond_39

    .line 1101
    .line 1102
    goto/16 :goto_1d

    .line 1103
    .line 1104
    :cond_39
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v0

    .line 1108
    if-nez v0, :cond_3a

    .line 1109
    .line 1110
    goto/16 :goto_1d

    .line 1111
    .line 1112
    :cond_3a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1115
    .line 1116
    iget-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1117
    .line 1118
    if-nez v1, :cond_3b

    .line 1119
    .line 1120
    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1121
    .line 1122
    if-nez v0, :cond_3b

    .line 1123
    .line 1124
    goto/16 :goto_1d

    .line 1125
    .line 1126
    :cond_3b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1127
    .line 1128
    if-eqz v0, :cond_3c

    .line 1129
    .line 1130
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast v1, Landroid/graphics/Canvas;

    .line 1133
    .line 1134
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_3c
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    .line 1138
    .line 1139
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1140
    .line 1141
    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    .line 1145
    .line 1146
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1147
    .line 1148
    if-nez v1, :cond_3d

    .line 1149
    .line 1150
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1155
    .line 1156
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1160
    .line 1161
    .line 1162
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1163
    .line 1164
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v1

    .line 1171
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1172
    .line 1173
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1174
    .line 1175
    iget-boolean v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1176
    .line 1177
    if-eqz v3, :cond_3f

    .line 1178
    .line 1179
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 1180
    .line 1181
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1182
    .line 1183
    if-eqz v2, :cond_3e

    .line 1184
    .line 1185
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1186
    .line 1187
    if-ne v2, v3, :cond_3e

    .line 1188
    .line 1189
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1190
    .line 1191
    goto :goto_10

    .line 1192
    :cond_3e
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1193
    .line 1194
    :goto_10
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1198
    .line 1199
    .line 1200
    :cond_3f
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1203
    .line 1204
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1205
    .line 1206
    if-eqz v2, :cond_40

    .line 1207
    .line 1208
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1209
    .line 1210
    .line 1211
    :cond_40
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1212
    .line 1213
    .line 1214
    if-eqz v1, :cond_7f

    .line 1215
    .line 1216
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1217
    .line 1218
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_1d

    .line 1222
    .line 1223
    :cond_41
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    .line 1224
    .line 1225
    if-eqz v0, :cond_48

    .line 1226
    .line 1227
    check-cast p1, Lcom/caverock/androidsvg/SVG$Rect;

    .line 1228
    .line 1229
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1230
    .line 1231
    if-eqz v0, :cond_7f

    .line 1232
    .line 1233
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1234
    .line 1235
    if-eqz v1, :cond_7f

    .line 1236
    .line 1237
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v0

    .line 1241
    if-nez v0, :cond_7f

    .line 1242
    .line 1243
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1244
    .line 1245
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-eqz v0, :cond_42

    .line 1250
    .line 1251
    goto/16 :goto_1d

    .line 1252
    .line 1253
    :cond_42
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1254
    .line 1255
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1256
    .line 1257
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v0

    .line 1264
    if-nez v0, :cond_43

    .line 1265
    .line 1266
    goto/16 :goto_1d

    .line 1267
    .line 1268
    :cond_43
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v0

    .line 1272
    if-nez v0, :cond_44

    .line 1273
    .line 1274
    goto/16 :goto_1d

    .line 1275
    .line 1276
    :cond_44
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1277
    .line 1278
    if-eqz v0, :cond_45

    .line 1279
    .line 1280
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1281
    .line 1282
    check-cast v1, Landroid/graphics/Canvas;

    .line 1283
    .line 1284
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1285
    .line 1286
    .line 1287
    :cond_45
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1298
    .line 1299
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v1

    .line 1306
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1307
    .line 1308
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1309
    .line 1310
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1311
    .line 1312
    if-eqz v2, :cond_46

    .line 1313
    .line 1314
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1315
    .line 1316
    .line 1317
    :cond_46
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1320
    .line 1321
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1322
    .line 1323
    if-eqz v2, :cond_47

    .line 1324
    .line 1325
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_47
    if-eqz v1, :cond_7f

    .line 1329
    .line 1330
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1331
    .line 1332
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_1d

    .line 1336
    .line 1337
    :cond_48
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    .line 1338
    .line 1339
    if-eqz v0, :cond_4f

    .line 1340
    .line 1341
    check-cast p1, Lcom/caverock/androidsvg/SVG$Circle;

    .line 1342
    .line 1343
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1344
    .line 1345
    if-eqz v0, :cond_7f

    .line 1346
    .line 1347
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-eqz v0, :cond_49

    .line 1352
    .line 1353
    goto/16 :goto_1d

    .line 1354
    .line 1355
    :cond_49
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1358
    .line 1359
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    if-nez v0, :cond_4a

    .line 1367
    .line 1368
    goto/16 :goto_1d

    .line 1369
    .line 1370
    :cond_4a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-nez v0, :cond_4b

    .line 1375
    .line 1376
    goto/16 :goto_1d

    .line 1377
    .line 1378
    :cond_4b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1379
    .line 1380
    if-eqz v0, :cond_4c

    .line 1381
    .line 1382
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v1, Landroid/graphics/Canvas;

    .line 1385
    .line 1386
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1387
    .line 1388
    .line 1389
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0

    .line 1393
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1397
    .line 1398
    .line 1399
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1400
    .line 1401
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1409
    .line 1410
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1411
    .line 1412
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1413
    .line 1414
    if-eqz v2, :cond_4d

    .line 1415
    .line 1416
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1417
    .line 1418
    .line 1419
    :cond_4d
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1420
    .line 1421
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1422
    .line 1423
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1424
    .line 1425
    if-eqz v2, :cond_4e

    .line 1426
    .line 1427
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1428
    .line 1429
    .line 1430
    :cond_4e
    if-eqz v1, :cond_7f

    .line 1431
    .line 1432
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1433
    .line 1434
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1435
    .line 1436
    .line 1437
    goto/16 :goto_1d

    .line 1438
    .line 1439
    :cond_4f
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 1440
    .line 1441
    if-eqz v0, :cond_56

    .line 1442
    .line 1443
    check-cast p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 1444
    .line 1445
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1446
    .line 1447
    if-eqz v0, :cond_7f

    .line 1448
    .line 1449
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1450
    .line 1451
    if-eqz v1, :cond_7f

    .line 1452
    .line 1453
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    if-nez v0, :cond_7f

    .line 1458
    .line 1459
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1460
    .line 1461
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    .line 1462
    .line 1463
    .line 1464
    move-result v0

    .line 1465
    if-eqz v0, :cond_50

    .line 1466
    .line 1467
    goto/16 :goto_1d

    .line 1468
    .line 1469
    :cond_50
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1470
    .line 1471
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1472
    .line 1473
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v0

    .line 1480
    if-nez v0, :cond_51

    .line 1481
    .line 1482
    goto/16 :goto_1d

    .line 1483
    .line 1484
    :cond_51
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1485
    .line 1486
    .line 1487
    move-result v0

    .line 1488
    if-nez v0, :cond_52

    .line 1489
    .line 1490
    goto/16 :goto_1d

    .line 1491
    .line 1492
    :cond_52
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1493
    .line 1494
    if-eqz v0, :cond_53

    .line 1495
    .line 1496
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1497
    .line 1498
    check-cast v1, Landroid/graphics/Canvas;

    .line 1499
    .line 1500
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1501
    .line 1502
    .line 1503
    :cond_53
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1511
    .line 1512
    .line 1513
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1514
    .line 1515
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v1

    .line 1522
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1523
    .line 1524
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1525
    .line 1526
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1527
    .line 1528
    if-eqz v2, :cond_54

    .line 1529
    .line 1530
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1531
    .line 1532
    .line 1533
    :cond_54
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1536
    .line 1537
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1538
    .line 1539
    if-eqz v2, :cond_55

    .line 1540
    .line 1541
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1542
    .line 1543
    .line 1544
    :cond_55
    if-eqz v1, :cond_7f

    .line 1545
    .line 1546
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1547
    .line 1548
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_1d

    .line 1552
    .line 1553
    :cond_56
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    .line 1554
    .line 1555
    if-eqz v0, :cond_60

    .line 1556
    .line 1557
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    .line 1558
    .line 1559
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1560
    .line 1561
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1562
    .line 1563
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    if-nez v0, :cond_57

    .line 1571
    .line 1572
    goto/16 :goto_1d

    .line 1573
    .line 1574
    :cond_57
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    if-nez v0, :cond_58

    .line 1579
    .line 1580
    goto/16 :goto_1d

    .line 1581
    .line 1582
    :cond_58
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1583
    .line 1584
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1585
    .line 1586
    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1587
    .line 1588
    if-nez v0, :cond_59

    .line 1589
    .line 1590
    goto/16 :goto_1d

    .line 1591
    .line 1592
    :cond_59
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1593
    .line 1594
    if-eqz v0, :cond_5a

    .line 1595
    .line 1596
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1597
    .line 1598
    check-cast v1, Landroid/graphics/Canvas;

    .line 1599
    .line 1600
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1601
    .line 1602
    .line 1603
    :cond_5a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1604
    .line 1605
    if-nez v0, :cond_5b

    .line 1606
    .line 1607
    move v0, v4

    .line 1608
    goto :goto_11

    .line 1609
    :cond_5b
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    :goto_11
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1614
    .line 1615
    if-nez v1, :cond_5c

    .line 1616
    .line 1617
    move v1, v4

    .line 1618
    goto :goto_12

    .line 1619
    :cond_5c
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 1620
    .line 1621
    .line 1622
    move-result v1

    .line 1623
    :goto_12
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1624
    .line 1625
    if-nez v2, :cond_5d

    .line 1626
    .line 1627
    move v2, v4

    .line 1628
    goto :goto_13

    .line 1629
    :cond_5d
    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 1630
    .line 1631
    .line 1632
    move-result v2

    .line 1633
    :goto_13
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1634
    .line 1635
    if-nez v3, :cond_5e

    .line 1636
    .line 1637
    goto :goto_14

    .line 1638
    :cond_5e
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 1639
    .line 1640
    .line 1641
    move-result v4

    .line 1642
    :goto_14
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1643
    .line 1644
    if-nez v3, :cond_5f

    .line 1645
    .line 1646
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    .line 1647
    .line 1648
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 1649
    .line 1650
    .line 1651
    move-result v5

    .line 1652
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 1653
    .line 1654
    .line 1655
    move-result v6

    .line 1656
    sub-float v7, v2, v0

    .line 1657
    .line 1658
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 1659
    .line 1660
    .line 1661
    move-result v7

    .line 1662
    sub-float v8, v4, v1

    .line 1663
    .line 1664
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 1665
    .line 1666
    .line 1667
    move-result v8

    .line 1668
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 1669
    .line 1670
    .line 1671
    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1672
    .line 1673
    :cond_5f
    new-instance v3, Landroid/graphics/Path;

    .line 1674
    .line 1675
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1688
    .line 1689
    .line 1690
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1691
    .line 1692
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v0

    .line 1699
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1703
    .line 1704
    .line 1705
    if-eqz v0, :cond_7f

    .line 1706
    .line 1707
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1708
    .line 1709
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1710
    .line 1711
    .line 1712
    goto/16 :goto_1d

    .line 1713
    .line 1714
    :cond_60
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    .line 1715
    .line 1716
    if-eqz v0, :cond_68

    .line 1717
    .line 1718
    check-cast p1, Lcom/caverock/androidsvg/SVG$Polygon;

    .line 1719
    .line 1720
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1721
    .line 1722
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1723
    .line 1724
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1728
    .line 1729
    .line 1730
    move-result v0

    .line 1731
    if-nez v0, :cond_61

    .line 1732
    .line 1733
    goto/16 :goto_1d

    .line 1734
    .line 1735
    :cond_61
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1736
    .line 1737
    .line 1738
    move-result v0

    .line 1739
    if-nez v0, :cond_62

    .line 1740
    .line 1741
    goto/16 :goto_1d

    .line 1742
    .line 1743
    :cond_62
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1744
    .line 1745
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1746
    .line 1747
    iget-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1748
    .line 1749
    if-nez v1, :cond_63

    .line 1750
    .line 1751
    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1752
    .line 1753
    if-nez v0, :cond_63

    .line 1754
    .line 1755
    goto/16 :goto_1d

    .line 1756
    .line 1757
    :cond_63
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1758
    .line 1759
    if-eqz v0, :cond_64

    .line 1760
    .line 1761
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1762
    .line 1763
    check-cast v1, Landroid/graphics/Canvas;

    .line 1764
    .line 1765
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1766
    .line 1767
    .line 1768
    :cond_64
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1769
    .line 1770
    array-length v0, v0

    .line 1771
    if-ge v0, v5, :cond_65

    .line 1772
    .line 1773
    goto/16 :goto_1d

    .line 1774
    .line 1775
    :cond_65
    invoke-static {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1783
    .line 1784
    .line 1785
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1786
    .line 1787
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1791
    .line 1792
    .line 1793
    move-result v1

    .line 1794
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1795
    .line 1796
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1797
    .line 1798
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1799
    .line 1800
    if-eqz v2, :cond_66

    .line 1801
    .line 1802
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1803
    .line 1804
    .line 1805
    :cond_66
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1806
    .line 1807
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1808
    .line 1809
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1810
    .line 1811
    if-eqz v2, :cond_67

    .line 1812
    .line 1813
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1814
    .line 1815
    .line 1816
    :cond_67
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1817
    .line 1818
    .line 1819
    if-eqz v1, :cond_7f

    .line 1820
    .line 1821
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1822
    .line 1823
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1824
    .line 1825
    .line 1826
    goto/16 :goto_1d

    .line 1827
    .line 1828
    :cond_68
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 1829
    .line 1830
    if-eqz v0, :cond_71

    .line 1831
    .line 1832
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 1833
    .line 1834
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1835
    .line 1836
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1837
    .line 1838
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1842
    .line 1843
    .line 1844
    move-result v0

    .line 1845
    if-nez v0, :cond_69

    .line 1846
    .line 1847
    goto/16 :goto_1d

    .line 1848
    .line 1849
    :cond_69
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    .line 1850
    .line 1851
    .line 1852
    move-result v0

    .line 1853
    if-nez v0, :cond_6a

    .line 1854
    .line 1855
    goto/16 :goto_1d

    .line 1856
    .line 1857
    :cond_6a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1858
    .line 1859
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1860
    .line 1861
    iget-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1862
    .line 1863
    if-nez v1, :cond_6b

    .line 1864
    .line 1865
    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1866
    .line 1867
    if-nez v0, :cond_6b

    .line 1868
    .line 1869
    goto/16 :goto_1d

    .line 1870
    .line 1871
    :cond_6b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 1872
    .line 1873
    if-eqz v0, :cond_6c

    .line 1874
    .line 1875
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1876
    .line 1877
    check-cast v1, Landroid/graphics/Canvas;

    .line 1878
    .line 1879
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1880
    .line 1881
    .line 1882
    :cond_6c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1883
    .line 1884
    array-length v0, v0

    .line 1885
    if-ge v0, v5, :cond_6d

    .line 1886
    .line 1887
    goto/16 :goto_1d

    .line 1888
    .line 1889
    :cond_6d
    invoke-static {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v0

    .line 1893
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1894
    .line 1895
    .line 1896
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1897
    .line 1898
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1899
    .line 1900
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 1901
    .line 1902
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1903
    .line 1904
    if-eqz v1, :cond_6e

    .line 1905
    .line 1906
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1907
    .line 1908
    if-ne v1, v2, :cond_6e

    .line 1909
    .line 1910
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1911
    .line 1912
    goto :goto_15

    .line 1913
    :cond_6e
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1914
    .line 1915
    :goto_15
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1919
    .line 1920
    .line 1921
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1922
    .line 1923
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v1

    .line 1930
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1931
    .line 1932
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1933
    .line 1934
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1935
    .line 1936
    if-eqz v2, :cond_6f

    .line 1937
    .line 1938
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1939
    .line 1940
    .line 1941
    :cond_6f
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1942
    .line 1943
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1944
    .line 1945
    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 1946
    .line 1947
    if-eqz v2, :cond_70

    .line 1948
    .line 1949
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1950
    .line 1951
    .line 1952
    :cond_70
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1953
    .line 1954
    .line 1955
    if-eqz v1, :cond_7f

    .line 1956
    .line 1957
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1958
    .line 1959
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1960
    .line 1961
    .line 1962
    goto/16 :goto_1d

    .line 1963
    .line 1964
    :cond_71
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    .line 1965
    .line 1966
    if-eqz v0, :cond_7f

    .line 1967
    .line 1968
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    .line 1969
    .line 1970
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1971
    .line 1972
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 1973
    .line 1974
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    .line 1978
    .line 1979
    .line 1980
    move-result v0

    .line 1981
    if-nez v0, :cond_72

    .line 1982
    .line 1983
    goto/16 :goto_1d

    .line 1984
    .line 1985
    :cond_72
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    .line 1986
    .line 1987
    if-eqz v0, :cond_73

    .line 1988
    .line 1989
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 1990
    .line 1991
    check-cast v2, Landroid/graphics/Canvas;

    .line 1992
    .line 1993
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1994
    .line 1995
    .line 1996
    :cond_73
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 1997
    .line 1998
    if-eqz v0, :cond_75

    .line 1999
    .line 2000
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2001
    .line 2002
    .line 2003
    move-result v0

    .line 2004
    if-nez v0, :cond_74

    .line 2005
    .line 2006
    goto :goto_16

    .line 2007
    :cond_74
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 2008
    .line 2009
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v0

    .line 2013
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 2014
    .line 2015
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 2016
    .line 2017
    .line 2018
    move-result v0

    .line 2019
    goto :goto_17

    .line 2020
    :cond_75
    :goto_16
    move v0, v4

    .line 2021
    :goto_17
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 2022
    .line 2023
    if-eqz v2, :cond_77

    .line 2024
    .line 2025
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2026
    .line 2027
    .line 2028
    move-result v2

    .line 2029
    if-nez v2, :cond_76

    .line 2030
    .line 2031
    goto :goto_18

    .line 2032
    :cond_76
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 2033
    .line 2034
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v2

    .line 2038
    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    .line 2039
    .line 2040
    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 2041
    .line 2042
    .line 2043
    move-result v2

    .line 2044
    goto :goto_19

    .line 2045
    :cond_77
    :goto_18
    move v2, v4

    .line 2046
    :goto_19
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 2047
    .line 2048
    if-eqz v3, :cond_79

    .line 2049
    .line 2050
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2051
    .line 2052
    .line 2053
    move-result v3

    .line 2054
    if-nez v3, :cond_78

    .line 2055
    .line 2056
    goto :goto_1a

    .line 2057
    :cond_78
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 2058
    .line 2059
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v3

    .line 2063
    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    .line 2064
    .line 2065
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 2066
    .line 2067
    .line 2068
    move-result v3

    .line 2069
    goto :goto_1b

    .line 2070
    :cond_79
    :goto_1a
    move v3, v4

    .line 2071
    :goto_1b
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 2072
    .line 2073
    if-eqz v5, :cond_7b

    .line 2074
    .line 2075
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2076
    .line 2077
    .line 2078
    move-result v5

    .line 2079
    if-nez v5, :cond_7a

    .line 2080
    .line 2081
    goto :goto_1c

    .line 2082
    :cond_7a
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 2083
    .line 2084
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v1

    .line 2088
    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    .line 2089
    .line 2090
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 2091
    .line 2092
    .line 2093
    move-result v4

    .line 2094
    :cond_7b
    :goto_1c
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v1

    .line 2098
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2099
    .line 2100
    if-eq v1, v5, :cond_7d

    .line 2101
    .line 2102
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    .line 2103
    .line 2104
    .line 2105
    move-result v5

    .line 2106
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2107
    .line 2108
    if-ne v1, v6, :cond_7c

    .line 2109
    .line 2110
    const/high16 v1, 0x40000000    # 2.0f

    .line 2111
    .line 2112
    div-float/2addr v5, v1

    .line 2113
    :cond_7c
    sub-float/2addr v0, v5

    .line 2114
    :cond_7d
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2115
    .line 2116
    if-nez v1, :cond_7e

    .line 2117
    .line 2118
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    .line 2119
    .line 2120
    invoke-direct {v1, p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 2124
    .line 2125
    .line 2126
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    .line 2127
    .line 2128
    iget-object v6, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Ljava/lang/Object;

    .line 2129
    .line 2130
    check-cast v6, Landroid/graphics/RectF;

    .line 2131
    .line 2132
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .line 2133
    .line 2134
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 2135
    .line 2136
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 2137
    .line 2138
    .line 2139
    move-result v6

    .line 2140
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Ljava/lang/Object;

    .line 2141
    .line 2142
    check-cast v1, Landroid/graphics/RectF;

    .line 2143
    .line 2144
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 2145
    .line 2146
    .line 2147
    move-result v1

    .line 2148
    invoke-direct {v5, v7, v8, v6, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 2149
    .line 2150
    .line 2151
    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2152
    .line 2153
    :cond_7e
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 2154
    .line 2155
    .line 2156
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 2157
    .line 2158
    .line 2159
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2160
    .line 2161
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 2165
    .line 2166
    .line 2167
    move-result v1

    .line 2168
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    .line 2169
    .line 2170
    add-float/2addr v0, v3

    .line 2171
    add-float/2addr v2, v4

    .line 2172
    invoke-direct {v5, p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Landroidx/compose/ui/unit/DpKt;)V

    .line 2176
    .line 2177
    .line 2178
    if-eqz v1, :cond_7f

    .line 2179
    .line 2180
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2181
    .line 2182
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 2183
    .line 2184
    .line 2185
    :cond_7f
    :goto_1d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 2186
    .line 2187
    .line 2188
    return-void
.end method

.method public renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Stack;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/Stack;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/graphics/Canvas;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/util/Stack;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Ljava/util/Stack;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Canvas;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 24
    .line 25
    cmpl-float v3, v1, v2

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 30
    .line 31
    cmpl-float v3, v3, v2

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    :cond_0
    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 36
    .line 37
    float-to-double v3, v3

    .line 38
    float-to-double v5, v1

    .line 39
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    double-to-float v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v1, v2

    .line 57
    :goto_0
    iget-boolean v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    :goto_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iput-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 81
    .line 82
    new-instance v4, Landroid/graphics/Matrix;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .line 86
    .line 87
    iget v5, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 88
    .line 89
    iget p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 90
    .line 91
    invoke-virtual {v4, v5, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 98
    .line 99
    .line 100
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move p2, v2

    .line 110
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move v1, v2

    .line 120
    :goto_3
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 121
    .line 122
    const/high16 v5, 0x40400000    # 3.0f

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move v3, v5

    .line 132
    :goto_4
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 133
    .line 134
    if-eqz v6, :cond_7

    .line 135
    .line 136
    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    :cond_7
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 141
    .line 142
    if-eqz v6, :cond_e

    .line 143
    .line 144
    iget v7, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 145
    .line 146
    div-float v7, v3, v7

    .line 147
    .line 148
    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 149
    .line 150
    div-float v6, v5, v6

    .line 151
    .line 152
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 153
    .line 154
    if-eqz v8, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    sget-object v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 158
    .line 159
    :goto_5
    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 160
    .line 161
    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    iget-object v10, v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 166
    .line 167
    if-nez v9, :cond_a

    .line 168
    .line 169
    iget-object v8, v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 170
    .line 171
    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 172
    .line 173
    if-ne v8, v9, :cond_9

    .line 174
    .line 175
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    :goto_6
    move v7, v6

    .line 180
    goto :goto_7

    .line 181
    :cond_9
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    goto :goto_6

    .line 186
    :goto_7
    move v6, v7

    .line 187
    :cond_a
    neg-float p2, p2

    .line 188
    mul-float/2addr p2, v7

    .line 189
    neg-float v1, v1

    .line 190
    mul-float/2addr v1, v6

    .line 191
    invoke-virtual {v4, p2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 198
    .line 199
    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 200
    .line 201
    mul-float/2addr v1, v7

    .line 202
    iget p2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 203
    .line 204
    mul-float/2addr p2, v6

    .line 205
    sget-object v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    aget v9, v8, v9

    .line 212
    .line 213
    const/high16 v11, 0x40000000    # 2.0f

    .line 214
    .line 215
    packed-switch v9, :pswitch_data_0

    .line 216
    .line 217
    .line 218
    move v1, v2

    .line 219
    goto :goto_9

    .line 220
    :pswitch_0
    sub-float v1, v3, v1

    .line 221
    .line 222
    :goto_8
    sub-float v1, v2, v1

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :pswitch_1
    sub-float v1, v3, v1

    .line 226
    .line 227
    div-float/2addr v1, v11

    .line 228
    goto :goto_8

    .line 229
    :goto_9
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    aget v8, v8, v9

    .line 234
    .line 235
    const/4 v9, 0x2

    .line 236
    if-eq v8, v9, :cond_c

    .line 237
    .line 238
    const/4 v9, 0x3

    .line 239
    if-eq v8, v9, :cond_b

    .line 240
    .line 241
    const/4 v9, 0x5

    .line 242
    if-eq v8, v9, :cond_c

    .line 243
    .line 244
    const/4 v9, 0x6

    .line 245
    if-eq v8, v9, :cond_b

    .line 246
    .line 247
    const/4 v9, 0x7

    .line 248
    if-eq v8, v9, :cond_c

    .line 249
    .line 250
    const/16 v9, 0x8

    .line 251
    .line 252
    if-eq v8, v9, :cond_b

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_b
    sub-float p2, v5, p2

    .line 256
    .line 257
    :goto_a
    sub-float/2addr v2, p2

    .line 258
    goto :goto_b

    .line 259
    :cond_c
    sub-float p2, v5, p2

    .line 260
    .line 261
    div-float/2addr p2, v11

    .line 262
    goto :goto_a

    .line 263
    :goto_b
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 266
    .line 267
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 268
    .line 269
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    if-nez p2, :cond_d

    .line 276
    .line 277
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 278
    .line 279
    .line 280
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v7, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 287
    .line 288
    .line 289
    goto :goto_c

    .line 290
    :cond_e
    neg-float p2, p2

    .line 291
    neg-float v1, v1

    .line 292
    invoke-virtual {v4, p2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 301
    .line 302
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 303
    .line 304
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    if-nez p2, :cond_f

    .line 311
    .line 312
    invoke-virtual {p0, v2, v2, v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 313
    .line 314
    .line 315
    :cond_f
    :goto_c
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 321
    .line 322
    .line 323
    if-eqz p2, :cond_10

    .line 324
    .line 325
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 326
    .line 327
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 328
    .line 329
    .line 330
    :cond_10
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_d

    .line 24
    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    const-string v4, "Marker reference \'%s\' not found"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 33
    .line 34
    invoke-virtual {v7, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v3, Lcom/caverock/androidsvg/SVG$Marker;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 50
    .line 51
    new-array v7, v6, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v3, v7, v2

    .line 54
    .line 55
    invoke-static {v4, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    move-object v3, v5

    .line 59
    :goto_0
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 62
    .line 63
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 64
    .line 65
    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 70
    .line 71
    invoke-virtual {v8, v7}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    check-cast v7, Lcom/caverock/androidsvg/SVG$Marker;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 83
    .line 84
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 85
    .line 86
    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 87
    .line 88
    new-array v8, v6, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v7, v8, v2

    .line 91
    .line 92
    invoke-static {v4, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    move-object v7, v5

    .line 96
    :goto_1
    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 99
    .line 100
    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 101
    .line 102
    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 107
    .line 108
    invoke-virtual {v9, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    if-eqz v8, :cond_5

    .line 113
    .line 114
    check-cast v8, Lcom/caverock/androidsvg/SVG$Marker;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 120
    .line 121
    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 122
    .line 123
    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 124
    .line 125
    new-array v9, v6, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object v8, v9, v2

    .line 128
    .line 129
    invoke-static {v4, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    move-object v8, v5

    .line 133
    :goto_2
    instance-of v4, v1, Lcom/caverock/androidsvg/SVG$Path;

    .line 134
    .line 135
    const/4 v9, 0x2

    .line 136
    const/4 v10, 0x0

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    .line 140
    .line 141
    check-cast v1, Lcom/caverock/androidsvg/SVG$Path;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 144
    .line 145
    invoke-direct {v4, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/ArrayList;

    .line 149
    .line 150
    move/from16 v16, v6

    .line 151
    .line 152
    :goto_3
    move/from16 v17, v10

    .line 153
    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_7
    instance-of v4, v1, Lcom/caverock/androidsvg/SVG$Line;

    .line 157
    .line 158
    if-eqz v4, :cond_c

    .line 159
    .line 160
    check-cast v1, Lcom/caverock/androidsvg/SVG$Line;

    .line 161
    .line 162
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 163
    .line 164
    if-eqz v4, :cond_8

    .line 165
    .line 166
    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    goto :goto_4

    .line 171
    :cond_8
    move v4, v10

    .line 172
    :goto_4
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 173
    .line 174
    if-eqz v11, :cond_9

    .line 175
    .line 176
    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    goto :goto_5

    .line 181
    :cond_9
    move v11, v10

    .line 182
    :goto_5
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 183
    .line 184
    if-eqz v12, :cond_a

    .line 185
    .line 186
    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    goto :goto_6

    .line 191
    :cond_a
    move v12, v10

    .line 192
    :goto_6
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 193
    .line 194
    if-eqz v1, :cond_b

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    goto :goto_7

    .line 201
    :cond_b
    move v1, v10

    .line 202
    :goto_7
    new-instance v13, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    new-instance v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 208
    .line 209
    sub-float v15, v12, v4

    .line 210
    .line 211
    move/from16 v16, v6

    .line 212
    .line 213
    sub-float v6, v1, v11

    .line 214
    .line 215
    invoke-direct {v14, v4, v11, v15, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(FFFF)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 222
    .line 223
    invoke-direct {v4, v12, v1, v15, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(FFFF)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move/from16 v17, v10

    .line 230
    .line 231
    move-object v1, v13

    .line 232
    goto/16 :goto_a

    .line 233
    .line 234
    :cond_c
    move/from16 v16, v6

    .line 235
    .line 236
    check-cast v1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 237
    .line 238
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 239
    .line 240
    array-length v4, v4

    .line 241
    if-ge v4, v9, :cond_d

    .line 242
    .line 243
    move-object v1, v5

    .line 244
    goto :goto_3

    .line 245
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 251
    .line 252
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 253
    .line 254
    aget v13, v12, v2

    .line 255
    .line 256
    aget v12, v12, v16

    .line 257
    .line 258
    invoke-direct {v11, v13, v12, v10, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(FFFF)V

    .line 259
    .line 260
    .line 261
    move v12, v9

    .line 262
    move v13, v10

    .line 263
    move v14, v13

    .line 264
    :goto_8
    iget v15, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 265
    .line 266
    move/from16 v17, v10

    .line 267
    .line 268
    iget v10, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 269
    .line 270
    if-ge v12, v4, :cond_e

    .line 271
    .line 272
    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 273
    .line 274
    aget v14, v13, v12

    .line 275
    .line 276
    add-int/lit8 v18, v12, 0x1

    .line 277
    .line 278
    aget v13, v13, v18

    .line 279
    .line 280
    invoke-virtual {v11, v14, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 287
    .line 288
    sub-float v10, v14, v10

    .line 289
    .line 290
    sub-float v15, v13, v15

    .line 291
    .line 292
    invoke-direct {v11, v14, v13, v10, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(FFFF)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v12, v12, 0x2

    .line 296
    .line 297
    move v10, v14

    .line 298
    move v14, v13

    .line 299
    move v13, v10

    .line 300
    move/from16 v10, v17

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_e
    instance-of v4, v1, Lcom/caverock/androidsvg/SVG$Polygon;

    .line 304
    .line 305
    if-eqz v4, :cond_10

    .line 306
    .line 307
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 308
    .line 309
    aget v4, v1, v2

    .line 310
    .line 311
    cmpl-float v12, v13, v4

    .line 312
    .line 313
    if-eqz v12, :cond_f

    .line 314
    .line 315
    aget v1, v1, v16

    .line 316
    .line 317
    cmpl-float v12, v14, v1

    .line 318
    .line 319
    if-eqz v12, :cond_f

    .line 320
    .line 321
    invoke-virtual {v11, v4, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 328
    .line 329
    sub-float v10, v4, v10

    .line 330
    .line 331
    sub-float v12, v1, v15

    .line 332
    .line 333
    invoke-direct {v11, v4, v1, v10, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(FFFF)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 341
    .line 342
    invoke-virtual {v11, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v2, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    :cond_f
    :goto_9
    move-object v1, v6

    .line 352
    goto :goto_a

    .line 353
    :cond_10
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :goto_a
    if-nez v1, :cond_11

    .line 358
    .line 359
    goto/16 :goto_d

    .line 360
    .line 361
    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-nez v4, :cond_12

    .line 366
    .line 367
    goto/16 :goto_d

    .line 368
    .line 369
    :cond_12
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 372
    .line 373
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 374
    .line 375
    iput-object v5, v6, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 376
    .line 377
    iput-object v5, v6, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 378
    .line 379
    iput-object v5, v6, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v3, :cond_13

    .line 382
    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 388
    .line 389
    invoke-virtual {v0, v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 390
    .line 391
    .line 392
    :cond_13
    if-eqz v7, :cond_18

    .line 393
    .line 394
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-le v3, v9, :cond_18

    .line 399
    .line 400
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 405
    .line 406
    move/from16 v3, v16

    .line 407
    .line 408
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 413
    .line 414
    move-object v3, v2

    .line 415
    move-object v2, v5

    .line 416
    const/4 v5, 0x1

    .line 417
    :goto_b
    add-int/lit8 v6, v4, -0x1

    .line 418
    .line 419
    if-ge v5, v6, :cond_18

    .line 420
    .line 421
    add-int/lit8 v5, v5, 0x1

    .line 422
    .line 423
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 428
    .line 429
    iget-boolean v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    .line 430
    .line 431
    if-eqz v9, :cond_17

    .line 432
    .line 433
    iget v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 434
    .line 435
    iget v10, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 436
    .line 437
    iget v11, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 438
    .line 439
    iget v12, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 440
    .line 441
    sub-float v12, v11, v12

    .line 442
    .line 443
    iget v13, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 444
    .line 445
    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 446
    .line 447
    sub-float v3, v13, v3

    .line 448
    .line 449
    mul-float/2addr v12, v9

    .line 450
    mul-float/2addr v3, v10

    .line 451
    add-float/2addr v3, v12

    .line 452
    cmpl-float v12, v3, v17

    .line 453
    .line 454
    if-nez v12, :cond_14

    .line 455
    .line 456
    iget v3, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 457
    .line 458
    sub-float/2addr v3, v11

    .line 459
    iget v11, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 460
    .line 461
    sub-float/2addr v11, v13

    .line 462
    mul-float/2addr v3, v9

    .line 463
    mul-float/2addr v11, v10

    .line 464
    add-float/2addr v3, v11

    .line 465
    :cond_14
    cmpl-float v3, v3, v17

    .line 466
    .line 467
    if-lez v3, :cond_15

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_15
    if-nez v3, :cond_16

    .line 471
    .line 472
    cmpl-float v3, v9, v17

    .line 473
    .line 474
    if-gtz v3, :cond_17

    .line 475
    .line 476
    cmpl-float v3, v10, v17

    .line 477
    .line 478
    if-ltz v3, :cond_16

    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_16
    neg-float v3, v9

    .line 482
    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 483
    .line 484
    neg-float v3, v10

    .line 485
    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 486
    .line 487
    :cond_17
    :goto_c
    invoke-virtual {v0, v7, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 488
    .line 489
    .line 490
    move-object v3, v2

    .line 491
    move-object v2, v6

    .line 492
    goto :goto_b

    .line 493
    :cond_18
    if-eqz v8, :cond_19

    .line 494
    .line 495
    const/16 v16, 0x1

    .line 496
    .line 497
    add-int/lit8 v4, v4, -0x1

    .line 498
    .line 499
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 504
    .line 505
    invoke-virtual {v0, v8, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 506
    .line 507
    .line 508
    :cond_19
    :goto_d
    return-void
.end method

.method public renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Canvas;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 27
    .line 28
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 41
    .line 42
    const v3, 0x3f99999a    # 1.2f

    .line 43
    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, p0, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v1, v3

    .line 53
    :goto_1
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4, p0, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :cond_4
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 62
    .line 63
    mul-float/2addr v1, v4

    .line 64
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 65
    .line 66
    mul-float/2addr v3, v4

    .line 67
    :goto_2
    const/4 v4, 0x0

    .line 68
    cmpl-float v1, v1, v4

    .line 69
    .line 70
    if-eqz v1, :cond_9

    .line 71
    .line 72
    cmpl-float v1, v3, v4

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 99
    .line 100
    .line 101
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 113
    .line 114
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 115
    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    .line 118
    .line 119
    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 120
    .line 121
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 122
    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 139
    .line 140
    .line 141
    :cond_9
    :goto_4
    return-void
.end method

.method public setClipRect(FFFF)V
    .locals 1

    .line 1
    add-float/2addr p3, p1

    .line 2
    add-float/2addr p4, p2

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-float/2addr p1, v0

    .line 22
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 29
    .line 30
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-float/2addr p2, v0

    .line 39
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 46
    .line 47
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sub-float/2addr p3, v0

    .line 56
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 63
    .line 64
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sub-float/2addr p4, v0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Landroid/graphics/Canvas;

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public startFunnel(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/instrument/Funnel;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/wikimedia/testkitchen/instrument/Funnel;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public statePop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Canvas;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public statePush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Canvas;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/Stack;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 29
    .line 30
    return-void
.end method

.method public textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 6
    .line 7
    const-string v0, " "

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "[\\n\\t]"

    .line 12
    .line 13
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "\\n"

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "\\t"

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const-string p1, "^\\s+"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const-string p1, "\\s+$"

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_2
    const-string p1, "\\s{2,}"

    .line 49
    .line 50
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/util/Stack;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_b

    .line 33
    .line 34
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 35
    .line 36
    iget v2, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 37
    .line 38
    iget v3, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 45
    .line 46
    iget v5, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 59
    .line 60
    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/16 v8, 0x8

    .line 67
    .line 68
    new-array v8, v8, [F

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    aput v2, v8, v9

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    aput v3, v8, v2

    .line 75
    .line 76
    const/4 v3, 0x2

    .line 77
    aput v1, v8, v3

    .line 78
    .line 79
    const/4 v1, 0x3

    .line 80
    aput v5, v8, v1

    .line 81
    .line 82
    const/4 v1, 0x4

    .line 83
    aput v4, v8, v1

    .line 84
    .line 85
    const/4 v1, 0x5

    .line 86
    aput v6, v8, v1

    .line 87
    .line 88
    const/4 v1, 0x6

    .line 89
    aput v7, v8, v1

    .line 90
    .line 91
    const/4 v4, 0x7

    .line 92
    aput p1, v8, v4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Landroid/graphics/Canvas;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Landroid/graphics/RectF;

    .line 109
    .line 110
    aget v0, v8, v9

    .line 111
    .line 112
    aget v2, v8, v2

    .line 113
    .line 114
    invoke-direct {p1, v0, v2, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    .line 116
    .line 117
    :goto_0
    if-gt v3, v1, :cond_6

    .line 118
    .line 119
    aget v0, v8, v3

    .line 120
    .line 121
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 122
    .line 123
    cmpg-float v2, v0, v2

    .line 124
    .line 125
    if-gez v2, :cond_2

    .line 126
    .line 127
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 128
    .line 129
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 130
    .line 131
    cmpl-float v2, v0, v2

    .line 132
    .line 133
    if-lez v2, :cond_3

    .line 134
    .line 135
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 136
    .line 137
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .line 138
    .line 139
    aget v0, v8, v0

    .line 140
    .line 141
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 142
    .line 143
    cmpg-float v2, v0, v2

    .line 144
    .line 145
    if-gez v2, :cond_4

    .line 146
    .line 147
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 148
    .line 149
    :cond_4
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 150
    .line 151
    cmpl-float v2, v0, v2

    .line 152
    .line 153
    if-lez v2, :cond_5

    .line 154
    .line 155
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 156
    .line 157
    :cond_5
    add-int/lit8 v3, v3, 0x2

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p0, Ljava/util/Stack;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 171
    .line 172
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 173
    .line 174
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 175
    .line 176
    if-nez v0, :cond_7

    .line 177
    .line 178
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 179
    .line 180
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 181
    .line 182
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    .line 183
    .line 184
    sub-float/2addr v0, v1

    .line 185
    sub-float/2addr p1, v2

    .line 186
    invoke-direct {v3, v1, v2, v0, p1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 187
    .line 188
    .line 189
    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    iget p0, p1, Landroid/graphics/RectF;->right:F

    .line 193
    .line 194
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 195
    .line 196
    sub-float/2addr p0, v1

    .line 197
    sub-float/2addr p1, v2

    .line 198
    iget v3, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 199
    .line 200
    cmpg-float v3, v1, v3

    .line 201
    .line 202
    if-gez v3, :cond_8

    .line 203
    .line 204
    iput v1, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 205
    .line 206
    :cond_8
    iget v3, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 207
    .line 208
    cmpg-float v3, v2, v3

    .line 209
    .line 210
    if-gez v3, :cond_9

    .line 211
    .line 212
    iput v2, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 213
    .line 214
    :cond_9
    add-float v3, v1, p0

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    cmpl-float v3, v3, v4

    .line 221
    .line 222
    if-lez v3, :cond_a

    .line 223
    .line 224
    add-float/2addr v1, p0

    .line 225
    iget p0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 226
    .line 227
    sub-float/2addr v1, p0

    .line 228
    iput v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 229
    .line 230
    :cond_a
    add-float p0, v2, p1

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    cmpl-float p0, p0, v1

    .line 237
    .line 238
    if-lez p0, :cond_b

    .line 239
    .line 240
    add-float/2addr v2, p1

    .line 241
    iget p0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 242
    .line 243
    sub-float/2addr v2, p0

    .line 244
    iput v2, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 245
    .line 246
    :cond_b
    :goto_1
    return-void
.end method

.method public updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 13

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 10
    .line 11
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 14
    .line 15
    :cond_0
    const-wide/16 v0, 0x800

    .line 16
    .line 17
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 24
    .line 25
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 28
    .line 29
    :cond_1
    const-wide/16 v0, 0x1

    .line 30
    .line 31
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 42
    .line 43
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 44
    .line 45
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 46
    .line 47
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    move v0, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v0, v2

    .line 56
    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 57
    .line 58
    :cond_3
    const-wide/16 v4, 0x4

    .line 59
    .line 60
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 67
    .line 68
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 69
    .line 70
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 71
    .line 72
    :cond_4
    const-wide/16 v4, 0x1805

    .line 73
    .line 74
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 83
    .line 84
    invoke-static {p1, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    const-wide/16 v4, 0x2

    .line 88
    .line 89
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 96
    .line 97
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 98
    .line 99
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 100
    .line 101
    :cond_6
    const-wide/16 v4, 0x8

    .line 102
    .line 103
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 110
    .line 111
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 112
    .line 113
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 114
    .line 115
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    if-eq v0, v1, :cond_7

    .line 120
    .line 121
    move v0, v3

    .line 122
    goto :goto_1

    .line 123
    :cond_7
    move v0, v2

    .line 124
    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 125
    .line 126
    :cond_8
    const-wide/16 v0, 0x10

    .line 127
    .line 128
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 135
    .line 136
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 137
    .line 138
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 139
    .line 140
    :cond_9
    const-wide/16 v0, 0x1818

    .line 141
    .line 142
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 151
    .line 152
    invoke-static {p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    const-wide v0, 0x800000000L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 167
    .line 168
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 169
    .line 170
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 171
    .line 172
    :cond_b
    const-wide/16 v0, 0x20

    .line 173
    .line 174
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_c

    .line 179
    .line 180
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 181
    .line 182
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 183
    .line 184
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 185
    .line 186
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 187
    .line 188
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    .line 194
    .line 195
    :cond_c
    const-wide/16 v0, 0x40

    .line 196
    .line 197
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/4 v1, 0x3

    .line 202
    const/4 v4, 0x2

    .line 203
    if-eqz v0, :cond_10

    .line 204
    .line 205
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 206
    .line 207
    iget-object v5, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 208
    .line 209
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 210
    .line 211
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 212
    .line 213
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap:[I

    .line 214
    .line 215
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    aget v0, v0, v6

    .line 222
    .line 223
    if-eq v0, v3, :cond_f

    .line 224
    .line 225
    if-eq v0, v4, :cond_e

    .line 226
    .line 227
    if-eq v0, v1, :cond_d

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_d
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 231
    .line 232
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_e
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 237
    .line 238
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_f
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 243
    .line 244
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 245
    .line 246
    .line 247
    :cond_10
    :goto_2
    const-wide/16 v5, 0x80

    .line 248
    .line 249
    invoke-static {p2, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_14

    .line 254
    .line 255
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 256
    .line 257
    iget-object v5, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 258
    .line 259
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 260
    .line 261
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 262
    .line 263
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    .line 264
    .line 265
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    aget v0, v0, v6

    .line 272
    .line 273
    if-eq v0, v3, :cond_13

    .line 274
    .line 275
    if-eq v0, v4, :cond_12

    .line 276
    .line 277
    if-eq v0, v1, :cond_11

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_11
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 281
    .line 282
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_12
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 287
    .line 288
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_13
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 293
    .line 294
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 295
    .line 296
    .line 297
    :cond_14
    :goto_3
    const-wide/16 v0, 0x100

    .line 298
    .line 299
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_15

    .line 304
    .line 305
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 306
    .line 307
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 308
    .line 309
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 310
    .line 311
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 312
    .line 313
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 320
    .line 321
    .line 322
    :cond_15
    const-wide/16 v0, 0x200

    .line 323
    .line 324
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_16

    .line 329
    .line 330
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 331
    .line 332
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 333
    .line 334
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 335
    .line 336
    :cond_16
    const-wide/16 v0, 0x400

    .line 337
    .line 338
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_17

    .line 343
    .line 344
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 345
    .line 346
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 347
    .line 348
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 349
    .line 350
    :cond_17
    const-wide/16 v0, 0x600

    .line 351
    .line 352
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    const/4 v1, 0x0

    .line 357
    if-eqz v0, :cond_1d

    .line 358
    .line 359
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 360
    .line 361
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 362
    .line 363
    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 364
    .line 365
    if-nez v5, :cond_18

    .line 366
    .line 367
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 368
    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_18
    array-length v5, v5

    .line 372
    rem-int/lit8 v6, v5, 0x2

    .line 373
    .line 374
    if-nez v6, :cond_19

    .line 375
    .line 376
    move v6, v5

    .line 377
    goto :goto_4

    .line 378
    :cond_19
    mul-int/lit8 v6, v5, 0x2

    .line 379
    .line 380
    :goto_4
    new-array v7, v6, [F

    .line 381
    .line 382
    const/4 v8, 0x0

    .line 383
    move v9, v2

    .line 384
    move v10, v8

    .line 385
    :goto_5
    if-ge v9, v6, :cond_1a

    .line 386
    .line 387
    iget-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 388
    .line 389
    rem-int v12, v9, v5

    .line 390
    .line 391
    aget-object v11, v11, v12

    .line 392
    .line 393
    invoke-virtual {v11, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    aput v11, v7, v9

    .line 398
    .line 399
    add-float/2addr v10, v11

    .line 400
    add-int/lit8 v9, v9, 0x1

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_1a
    cmpl-float v5, v10, v8

    .line 404
    .line 405
    if-nez v5, :cond_1b

    .line 406
    .line 407
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 408
    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_1b
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 412
    .line 413
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    cmpg-float v5, v0, v8

    .line 418
    .line 419
    if-gez v5, :cond_1c

    .line 420
    .line 421
    rem-float/2addr v0, v10

    .line 422
    add-float/2addr v0, v10

    .line 423
    :cond_1c
    new-instance v5, Landroid/graphics/DashPathEffect;

    .line 424
    .line 425
    invoke-direct {v5, v7, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 429
    .line 430
    .line 431
    :cond_1d
    :goto_6
    const-wide/16 v4, 0x4000

    .line 432
    .line 433
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_1e

    .line 438
    .line 439
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 442
    .line 443
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 450
    .line 451
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 452
    .line 453
    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 454
    .line 455
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 456
    .line 457
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 458
    .line 459
    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    .line 465
    .line 466
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 467
    .line 468
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 469
    .line 470
    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 475
    .line 476
    .line 477
    :cond_1e
    const-wide/16 v4, 0x2000

    .line 478
    .line 479
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1f

    .line 484
    .line 485
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 486
    .line 487
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/ArrayList;

    .line 488
    .line 489
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/ArrayList;

    .line 490
    .line 491
    :cond_1f
    const-wide/32 v4, 0x8000

    .line 492
    .line 493
    .line 494
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_22

    .line 499
    .line 500
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    const/4 v4, -0x1

    .line 507
    const/16 v5, 0x64

    .line 508
    .line 509
    if-ne v0, v4, :cond_20

    .line 510
    .line 511
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 512
    .line 513
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-le v0, v5, :cond_20

    .line 520
    .line 521
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 522
    .line 523
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 524
    .line 525
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    sub-int/2addr v4, v5

    .line 530
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_20
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-ne v0, v3, :cond_21

    .line 544
    .line 545
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 546
    .line 547
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    const/16 v4, 0x384

    .line 554
    .line 555
    if-ge v0, v4, :cond_21

    .line 556
    .line 557
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 558
    .line 559
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 560
    .line 561
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    add-int/2addr v4, v5

    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 571
    .line 572
    goto :goto_7

    .line 573
    :cond_21
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 574
    .line 575
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 576
    .line 577
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 578
    .line 579
    :cond_22
    :goto_7
    const-wide/32 v4, 0x10000

    .line 580
    .line 581
    .line 582
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-eqz v0, :cond_23

    .line 587
    .line 588
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 589
    .line 590
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 591
    .line 592
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 593
    .line 594
    :cond_23
    const-wide/32 v4, 0x1a000

    .line 595
    .line 596
    .line 597
    invoke-static {p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_27

    .line 602
    .line 603
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 604
    .line 605
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/ArrayList;

    .line 606
    .line 607
    if-eqz v4, :cond_25

    .line 608
    .line 609
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast p0, Lcom/caverock/androidsvg/SVG;

    .line 612
    .line 613
    if-eqz p0, :cond_25

    .line 614
    .line 615
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    if-eqz v4, :cond_25

    .line 624
    .line 625
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    check-cast v1, Ljava/lang/String;

    .line 630
    .line 631
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 632
    .line 633
    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 634
    .line 635
    invoke-static {v1, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    if-eqz v1, :cond_24

    .line 640
    .line 641
    :cond_25
    if-nez v1, :cond_26

    .line 642
    .line 643
    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 644
    .line 645
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 646
    .line 647
    const-string v1, "serif"

    .line 648
    .line 649
    invoke-static {v1, p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    :cond_26
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 654
    .line 655
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 656
    .line 657
    .line 658
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 659
    .line 660
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 661
    .line 662
    .line 663
    :cond_27
    const-wide/32 v0, 0x20000

    .line 664
    .line 665
    .line 666
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 667
    .line 668
    .line 669
    move-result p0

    .line 670
    if-eqz p0, :cond_2c

    .line 671
    .line 672
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 673
    .line 674
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 675
    .line 676
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 677
    .line 678
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 679
    .line 680
    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 681
    .line 682
    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 683
    .line 684
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 685
    .line 686
    if-ne p0, v4, :cond_28

    .line 687
    .line 688
    move p0, v3

    .line 689
    goto :goto_8

    .line 690
    :cond_28
    move p0, v2

    .line 691
    :goto_8
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 692
    .line 693
    .line 694
    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 695
    .line 696
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 697
    .line 698
    if-ne p0, v5, :cond_29

    .line 699
    .line 700
    move p0, v3

    .line 701
    goto :goto_9

    .line 702
    :cond_29
    move p0, v2

    .line 703
    :goto_9
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 704
    .line 705
    .line 706
    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 707
    .line 708
    if-ne p0, v4, :cond_2a

    .line 709
    .line 710
    move p0, v3

    .line 711
    goto :goto_a

    .line 712
    :cond_2a
    move p0, v2

    .line 713
    :goto_a
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 714
    .line 715
    .line 716
    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 717
    .line 718
    if-ne p0, v5, :cond_2b

    .line 719
    .line 720
    move v2, v3

    .line 721
    :cond_2b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 722
    .line 723
    .line 724
    :cond_2c
    const-wide v0, 0x1000000000L

    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 730
    .line 731
    .line 732
    move-result p0

    .line 733
    if-eqz p0, :cond_2d

    .line 734
    .line 735
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 736
    .line 737
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 738
    .line 739
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 740
    .line 741
    :cond_2d
    const-wide/32 v0, 0x40000

    .line 742
    .line 743
    .line 744
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 745
    .line 746
    .line 747
    move-result p0

    .line 748
    if-eqz p0, :cond_2e

    .line 749
    .line 750
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 751
    .line 752
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 753
    .line 754
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 755
    .line 756
    :cond_2e
    const-wide/32 v0, 0x80000

    .line 757
    .line 758
    .line 759
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 760
    .line 761
    .line 762
    move-result p0

    .line 763
    if-eqz p0, :cond_2f

    .line 764
    .line 765
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 766
    .line 767
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 768
    .line 769
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 770
    .line 771
    :cond_2f
    const-wide/32 v0, 0x200000

    .line 772
    .line 773
    .line 774
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 775
    .line 776
    .line 777
    move-result p0

    .line 778
    if-eqz p0, :cond_30

    .line 779
    .line 780
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 781
    .line 782
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 783
    .line 784
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 785
    .line 786
    :cond_30
    const-wide/32 v0, 0x400000

    .line 787
    .line 788
    .line 789
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 790
    .line 791
    .line 792
    move-result p0

    .line 793
    if-eqz p0, :cond_31

    .line 794
    .line 795
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 796
    .line 797
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 798
    .line 799
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 800
    .line 801
    :cond_31
    const-wide/32 v0, 0x800000

    .line 802
    .line 803
    .line 804
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 805
    .line 806
    .line 807
    move-result p0

    .line 808
    if-eqz p0, :cond_32

    .line 809
    .line 810
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 811
    .line 812
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 813
    .line 814
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 815
    .line 816
    :cond_32
    const-wide/32 v0, 0x1000000

    .line 817
    .line 818
    .line 819
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 820
    .line 821
    .line 822
    move-result p0

    .line 823
    if-eqz p0, :cond_33

    .line 824
    .line 825
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 826
    .line 827
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 828
    .line 829
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 830
    .line 831
    :cond_33
    const-wide/32 v0, 0x2000000

    .line 832
    .line 833
    .line 834
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 835
    .line 836
    .line 837
    move-result p0

    .line 838
    if-eqz p0, :cond_34

    .line 839
    .line 840
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 841
    .line 842
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 843
    .line 844
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 845
    .line 846
    :cond_34
    const-wide/32 v0, 0x100000

    .line 847
    .line 848
    .line 849
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 850
    .line 851
    .line 852
    move-result p0

    .line 853
    if-eqz p0, :cond_35

    .line 854
    .line 855
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 856
    .line 857
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 858
    .line 859
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 860
    .line 861
    :cond_35
    const-wide/32 v0, 0x10000000

    .line 862
    .line 863
    .line 864
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 865
    .line 866
    .line 867
    move-result p0

    .line 868
    if-eqz p0, :cond_36

    .line 869
    .line 870
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 871
    .line 872
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 873
    .line 874
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 875
    .line 876
    :cond_36
    const-wide/32 v0, 0x20000000

    .line 877
    .line 878
    .line 879
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 880
    .line 881
    .line 882
    move-result p0

    .line 883
    if-eqz p0, :cond_37

    .line 884
    .line 885
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 886
    .line 887
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 888
    .line 889
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 890
    .line 891
    :cond_37
    const-wide/32 v0, 0x40000000

    .line 892
    .line 893
    .line 894
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 895
    .line 896
    .line 897
    move-result p0

    .line 898
    if-eqz p0, :cond_38

    .line 899
    .line 900
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 901
    .line 902
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 903
    .line 904
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 905
    .line 906
    :cond_38
    const-wide/32 v0, 0x4000000

    .line 907
    .line 908
    .line 909
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 910
    .line 911
    .line 912
    move-result p0

    .line 913
    if-eqz p0, :cond_39

    .line 914
    .line 915
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 916
    .line 917
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 918
    .line 919
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 920
    .line 921
    :cond_39
    const-wide/32 v0, 0x8000000

    .line 922
    .line 923
    .line 924
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 925
    .line 926
    .line 927
    move-result p0

    .line 928
    if-eqz p0, :cond_3a

    .line 929
    .line 930
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 931
    .line 932
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 933
    .line 934
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 935
    .line 936
    :cond_3a
    const-wide v0, 0x200000000L

    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 942
    .line 943
    .line 944
    move-result p0

    .line 945
    if-eqz p0, :cond_3b

    .line 946
    .line 947
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 948
    .line 949
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 950
    .line 951
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 952
    .line 953
    :cond_3b
    const-wide v0, 0x400000000L

    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 959
    .line 960
    .line 961
    move-result p0

    .line 962
    if-eqz p0, :cond_3c

    .line 963
    .line 964
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 965
    .line 966
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 967
    .line 968
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 969
    .line 970
    :cond_3c
    const-wide v0, 0x2000000000L

    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    invoke-static {p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    .line 976
    .line 977
    .line 978
    move-result p0

    .line 979
    if-eqz p0, :cond_3d

    .line 980
    .line 981
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 982
    .line 983
    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 984
    .line 985
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 986
    .line 987
    :cond_3d
    return-void
.end method

.method public updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 9
    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    :goto_1
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 29
    .line 30
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 33
    .line 34
    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 35
    .line 36
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 37
    .line 38
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 39
    .line 40
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 43
    .line 44
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 45
    .line 46
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 47
    .line 48
    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 49
    .line 50
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 51
    .line 52
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 53
    .line 54
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/caverock/androidsvg/SVG;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lokhttp3/Headers$Builder;

    .line 68
    .line 69
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcom/caverock/androidsvg/SVG;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lokhttp3/Headers$Builder;

    .line 87
    .line 88
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 107
    .line 108
    invoke-static {v2, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    :goto_3
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 121
    .line 122
    if-eqz p2, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    return-void
.end method

.method public viewportFill()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 8
    .line 9
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 14
    .line 15
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 23
    .line 24
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 25
    .line 26
    :goto_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/graphics/Canvas;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public visible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method
