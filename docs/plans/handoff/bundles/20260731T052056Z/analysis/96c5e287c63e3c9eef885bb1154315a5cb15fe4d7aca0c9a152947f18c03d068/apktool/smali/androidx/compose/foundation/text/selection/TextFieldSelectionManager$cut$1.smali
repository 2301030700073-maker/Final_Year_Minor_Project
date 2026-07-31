.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, p2, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 24
    .line 25
    iget-wide v2, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 26
    .line 27
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .line 44
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v8, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 19
    .line 20
    if-eqz v8, :cond_2

    .line 21
    .line 22
    if-eq v8, v6, :cond_1

    .line 23
    .line 24
    if-ne v8, v3, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    goto/16 :goto_10

    .line 32
    .line 33
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    goto/16 :goto_11

    .line 38
    .line 39
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v8, p1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 49
    .line 50
    if-eqz v2, :cond_29

    .line 51
    .line 52
    iput v6, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 53
    .line 54
    check-cast v2, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 55
    .line 56
    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    new-instance v8, Landroidx/compose/ui/platform/ClipEntry;

    .line 69
    .line 70
    invoke-direct {v8, v2}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v8, 0x0

    .line 75
    :goto_0
    if-ne v8, v1, :cond_4

    .line 76
    .line 77
    goto/16 :goto_f

    .line 78
    .line 79
    :cond_4
    :goto_1
    check-cast v8, Landroidx/compose/ui/platform/ClipEntry;

    .line 80
    .line 81
    if-eqz v8, :cond_29

    .line 82
    .line 83
    iput v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 84
    .line 85
    iget-object v0, v8, Landroidx/compose/ui/platform/ClipEntry;->clipData:Landroid/content/ClipData;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_25

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_25

    .line 99
    .line 100
    instance-of v8, v0, Landroid/text/Spanned;

    .line 101
    .line 102
    if-nez v8, :cond_5

    .line 103
    .line 104
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v2

    .line 114
    goto/16 :goto_e

    .line 115
    .line 116
    :cond_5
    move-object v8, v0

    .line 117
    check-cast v8, Landroid/text/Spanned;

    .line 118
    .line 119
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    const-class v10, Landroid/text/Annotation;

    .line 124
    .line 125
    invoke-interface {v8, v2, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, [Landroid/text/Annotation;

    .line 130
    .line 131
    new-instance v10, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    array-length v11, v9

    .line 140
    sub-int/2addr v11, v6

    .line 141
    if-ltz v11, :cond_22

    .line 142
    .line 143
    move v12, v2

    .line 144
    :goto_2
    aget-object v13, v9, v12

    .line 145
    .line 146
    invoke-virtual {v13}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    const-string v15, "androidx.compose.text.SpanStyle"

    .line 151
    .line 152
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-nez v14, :cond_6

    .line 157
    .line 158
    move-object/from16 p1, v0

    .line 159
    .line 160
    move/from16 p0, v2

    .line 161
    .line 162
    goto/16 :goto_c

    .line 163
    .line 164
    :cond_6
    invoke-interface {v8, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    invoke-interface {v8, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    new-instance v7, Landroidx/compose/foundation/internal/DecodeHelper;

    .line 173
    .line 174
    invoke-virtual {v13}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iput-object v3, v7, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 186
    .line 187
    invoke-static {v13, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    array-length v6, v13

    .line 192
    invoke-virtual {v3, v13, v2, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    .line 197
    .line 198
    iget-object v3, v7, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 199
    .line 200
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 201
    .line 202
    sget-wide v19, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 203
    .line 204
    move-wide/from16 v22, v17

    .line 205
    .line 206
    move-wide/from16 v36, v22

    .line 207
    .line 208
    move-wide/from16 v24, v19

    .line 209
    .line 210
    move-wide/from16 v31, v24

    .line 211
    .line 212
    const/16 v26, 0x0

    .line 213
    .line 214
    const/16 v27, 0x0

    .line 215
    .line 216
    const/16 v28, 0x0

    .line 217
    .line 218
    const/16 v30, 0x0

    .line 219
    .line 220
    const/16 v33, 0x0

    .line 221
    .line 222
    const/16 v34, 0x0

    .line 223
    .line 224
    const/16 v38, 0x0

    .line 225
    .line 226
    const/16 v39, 0x0

    .line 227
    .line 228
    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    const/4 v13, 0x1

    .line 233
    if-le v6, v13, :cond_20

    .line 234
    .line 235
    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    move/from16 p0, v2

    .line 240
    .line 241
    const/16 v2, 0x8

    .line 242
    .line 243
    if-ne v6, v13, :cond_8

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-lt v6, v2, :cond_7

    .line 250
    .line 251
    invoke-virtual {v7}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 252
    .line 253
    .line 254
    move-result-wide v22

    .line 255
    :goto_4
    move/from16 v2, p0

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_7
    move-object/from16 p1, v0

    .line 259
    .line 260
    goto/16 :goto_b

    .line 261
    .line 262
    :cond_8
    const/4 v13, 0x5

    .line 263
    const/4 v2, 0x2

    .line 264
    if-ne v6, v2, :cond_9

    .line 265
    .line 266
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-lt v2, v13, :cond_7

    .line 271
    .line 272
    invoke-virtual {v7}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    .line 273
    .line 274
    .line 275
    move-result-wide v24

    .line 276
    goto :goto_4

    .line 277
    :cond_9
    const/4 v2, 0x3

    .line 278
    const/4 v13, 0x4

    .line 279
    if-ne v6, v2, :cond_a

    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-lt v2, v13, :cond_7

    .line 286
    .line 287
    new-instance v2, Landroidx/compose/ui/text/font/FontWeight;

    .line 288
    .line 289
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    invoke-direct {v2, v6}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 294
    .line 295
    .line 296
    move-object/from16 v26, v2

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_a
    if-ne v6, v13, :cond_d

    .line 300
    .line 301
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    const/4 v6, 0x1

    .line 306
    if-lt v2, v6, :cond_7

    .line 307
    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_c

    .line 313
    .line 314
    :cond_b
    move/from16 v2, p0

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_c
    if-ne v2, v6, :cond_b

    .line 318
    .line 319
    move v2, v6

    .line 320
    :goto_5
    new-instance v13, Landroidx/compose/ui/text/font/FontStyle;

    .line 321
    .line 322
    invoke-direct {v13, v2}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 323
    .line 324
    .line 325
    move/from16 v2, p0

    .line 326
    .line 327
    move-object/from16 v27, v13

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_d
    const/4 v2, 0x5

    .line 331
    const/4 v13, 0x1

    .line 332
    if-ne v6, v2, :cond_12

    .line 333
    .line 334
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-lt v2, v13, :cond_7

    .line 339
    .line 340
    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_f

    .line 345
    .line 346
    :cond_e
    move/from16 v2, p0

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_f
    if-ne v2, v13, :cond_10

    .line 350
    .line 351
    const v2, 0xffff

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_10
    const/4 v6, 0x3

    .line 356
    if-ne v2, v6, :cond_11

    .line 357
    .line 358
    const/4 v2, 0x2

    .line 359
    goto :goto_6

    .line 360
    :cond_11
    const/4 v6, 0x2

    .line 361
    if-ne v2, v6, :cond_e

    .line 362
    .line 363
    const/4 v2, 0x1

    .line 364
    :goto_6
    new-instance v6, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 365
    .line 366
    invoke-direct {v6, v2}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 367
    .line 368
    .line 369
    move/from16 v2, p0

    .line 370
    .line 371
    move-object/from16 v28, v6

    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_12
    const/4 v2, 0x6

    .line 376
    if-ne v6, v2, :cond_13

    .line 377
    .line 378
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v30

    .line 382
    goto :goto_4

    .line 383
    :cond_13
    const/4 v2, 0x7

    .line 384
    if-ne v6, v2, :cond_14

    .line 385
    .line 386
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    const/4 v6, 0x5

    .line 391
    if-lt v2, v6, :cond_7

    .line 392
    .line 393
    invoke-virtual {v7}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    .line 394
    .line 395
    .line 396
    move-result-wide v31

    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_14
    const/16 v2, 0x8

    .line 400
    .line 401
    if-ne v6, v2, :cond_15

    .line 402
    .line 403
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    const/4 v6, 0x4

    .line 408
    if-lt v2, v6, :cond_7

    .line 409
    .line 410
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    new-instance v6, Landroidx/compose/ui/text/style/BaselineShift;

    .line 415
    .line 416
    invoke-direct {v6, v2}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 417
    .line 418
    .line 419
    move/from16 v2, p0

    .line 420
    .line 421
    move-object/from16 v33, v6

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_15
    const/16 v13, 0x9

    .line 426
    .line 427
    if-ne v6, v13, :cond_16

    .line 428
    .line 429
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-lt v6, v2, :cond_7

    .line 434
    .line 435
    new-instance v2, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 436
    .line 437
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    invoke-direct {v2, v6, v13}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v34, v2

    .line 449
    .line 450
    goto/16 :goto_4

    .line 451
    .line 452
    :cond_16
    const/16 v13, 0xa

    .line 453
    .line 454
    if-ne v6, v13, :cond_17

    .line 455
    .line 456
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-lt v6, v2, :cond_7

    .line 461
    .line 462
    invoke-virtual {v7}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 463
    .line 464
    .line 465
    move-result-wide v36

    .line 466
    goto/16 :goto_4

    .line 467
    .line 468
    :cond_17
    const/16 v2, 0xb

    .line 469
    .line 470
    if-ne v6, v2, :cond_1f

    .line 471
    .line 472
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    const/4 v6, 0x4

    .line 477
    if-lt v2, v6, :cond_7

    .line 478
    .line 479
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    and-int/lit8 v6, v2, 0x2

    .line 484
    .line 485
    if-eqz v6, :cond_18

    .line 486
    .line 487
    const/4 v6, 0x1

    .line 488
    goto :goto_7

    .line 489
    :cond_18
    move/from16 v6, p0

    .line 490
    .line 491
    :goto_7
    and-int/lit8 v2, v2, 0x1

    .line 492
    .line 493
    if-eqz v2, :cond_19

    .line 494
    .line 495
    const/4 v2, 0x1

    .line 496
    goto :goto_8

    .line 497
    :cond_19
    move/from16 v2, p0

    .line 498
    .line 499
    :goto_8
    sget-object v13, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 500
    .line 501
    sget-object v17, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 502
    .line 503
    if-eqz v6, :cond_1b

    .line 504
    .line 505
    if-eqz v2, :cond_1b

    .line 506
    .line 507
    move-object/from16 p1, v0

    .line 508
    .line 509
    const/4 v0, 0x2

    .line 510
    new-array v2, v0, [Landroidx/compose/ui/text/style/TextDecoration;

    .line 511
    .line 512
    aput-object v13, v2, p0

    .line 513
    .line 514
    const/16 v16, 0x1

    .line 515
    .line 516
    aput-object v17, v2, v16

    .line 517
    .line 518
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 527
    .line 528
    .line 529
    move-result v6

    .line 530
    move/from16 v13, p0

    .line 531
    .line 532
    :goto_9
    if-ge v13, v6, :cond_1a

    .line 533
    .line 534
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v17

    .line 538
    move-object/from16 v18, v0

    .line 539
    .line 540
    move-object/from16 v0, v17

    .line 541
    .line 542
    check-cast v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 549
    .line 550
    or-int/2addr v0, v2

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    add-int/lit8 v13, v13, 0x1

    .line 556
    .line 557
    move-object/from16 v0, v18

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    new-instance v2, Landroidx/compose/ui/text/style/TextDecoration;

    .line 565
    .line 566
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v38, v2

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_1b
    move-object/from16 p1, v0

    .line 573
    .line 574
    if-eqz v6, :cond_1c

    .line 575
    .line 576
    move-object/from16 v38, v13

    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_1c
    if-eqz v2, :cond_1d

    .line 580
    .line 581
    move-object/from16 v38, v17

    .line 582
    .line 583
    goto :goto_a

    .line 584
    :cond_1d
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 585
    .line 586
    move-object/from16 v38, v0

    .line 587
    .line 588
    :cond_1e
    :goto_a
    move/from16 v2, p0

    .line 589
    .line 590
    move-object/from16 v0, p1

    .line 591
    .line 592
    goto/16 :goto_3

    .line 593
    .line 594
    :cond_1f
    move-object/from16 p1, v0

    .line 595
    .line 596
    const/16 v0, 0xc

    .line 597
    .line 598
    if-ne v6, v0, :cond_1e

    .line 599
    .line 600
    invoke-virtual {v3}, Landroid/os/Parcel;->dataAvail()I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    const/16 v2, 0x14

    .line 605
    .line 606
    if-lt v0, v2, :cond_21

    .line 607
    .line 608
    new-instance v40, Landroidx/compose/ui/graphics/Shadow;

    .line 609
    .line 610
    invoke-virtual {v7}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 611
    .line 612
    .line 613
    move-result-wide v41

    .line 614
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    move v13, v2

    .line 627
    move-object v6, v3

    .line 628
    int-to-long v2, v0

    .line 629
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    move-wide/from16 v17, v2

    .line 634
    .line 635
    int-to-long v2, v0

    .line 636
    const/16 v0, 0x20

    .line 637
    .line 638
    shl-long v17, v17, v0

    .line 639
    .line 640
    const-wide v19, 0xffffffffL

    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    and-long v2, v2, v19

    .line 646
    .line 647
    or-long v43, v17, v2

    .line 648
    .line 649
    invoke-virtual {v6}, Landroid/os/Parcel;->readFloat()F

    .line 650
    .line 651
    .line 652
    move-result v45

    .line 653
    invoke-direct/range {v40 .. v45}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 654
    .line 655
    .line 656
    move/from16 v2, p0

    .line 657
    .line 658
    move-object/from16 v0, p1

    .line 659
    .line 660
    move-object v3, v6

    .line 661
    move-object/from16 v39, v40

    .line 662
    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    :cond_20
    move-object/from16 p1, v0

    .line 666
    .line 667
    move/from16 p0, v2

    .line 668
    .line 669
    :cond_21
    :goto_b
    new-instance v21, Landroidx/compose/ui/text/SpanStyle;

    .line 670
    .line 671
    const v40, 0xc000

    .line 672
    .line 673
    .line 674
    const/16 v29, 0x0

    .line 675
    .line 676
    const/16 v35, 0x0

    .line 677
    .line 678
    invoke-direct/range {v21 .. v40}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 679
    .line 680
    .line 681
    move-object/from16 v0, v21

    .line 682
    .line 683
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 684
    .line 685
    invoke-direct {v2, v14, v15, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    :goto_c
    if-eq v12, v11, :cond_23

    .line 692
    .line 693
    add-int/lit8 v12, v12, 0x1

    .line 694
    .line 695
    move/from16 v2, p0

    .line 696
    .line 697
    move-object/from16 v0, p1

    .line 698
    .line 699
    const/4 v3, 0x2

    .line 700
    const/4 v6, 0x1

    .line 701
    goto/16 :goto_2

    .line 702
    .line 703
    :cond_22
    move-object/from16 p1, v0

    .line 704
    .line 705
    :cond_23
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 706
    .line 707
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    sget-object v3, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 712
    .line 713
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-eqz v3, :cond_24

    .line 718
    .line 719
    const/4 v7, 0x0

    .line 720
    goto :goto_d

    .line 721
    :cond_24
    move-object v7, v10

    .line 722
    :goto_d
    invoke-direct {v0, v7, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    goto :goto_e

    .line 726
    :cond_25
    const/4 v0, 0x0

    .line 727
    :goto_e
    if-ne v0, v1, :cond_26

    .line 728
    .line 729
    :goto_f
    move-object v5, v1

    .line 730
    goto :goto_11

    .line 731
    :cond_26
    :goto_10
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 732
    .line 733
    if-nez v0, :cond_27

    .line 734
    .line 735
    goto :goto_11

    .line 736
    :cond_27
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-nez v1, :cond_28

    .line 741
    .line 742
    goto :goto_11

    .line 743
    :cond_28
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 752
    .line 753
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 754
    .line 755
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 764
    .line 765
    invoke-direct {v2, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 784
    .line 785
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 796
    .line 797
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    iget-wide v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 812
    .line 813
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    add-int/2addr v0, v2

    .line 824
    invoke-static {v0, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 825
    .line 826
    .line 827
    move-result-wide v2

    .line 828
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    iget-object v1, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 833
    .line 834
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 838
    .line 839
    invoke-virtual {v4, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 840
    .line 841
    .line 842
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 843
    .line 844
    const/4 v13, 0x1

    .line 845
    iput-boolean v13, v0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 846
    .line 847
    :cond_29
    :goto_11
    return-object v5

    .line 848
    :pswitch_0
    move v13, v6

    .line 849
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 850
    .line 851
    iget v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 852
    .line 853
    if-eqz v3, :cond_2c

    .line 854
    .line 855
    if-eq v3, v13, :cond_2b

    .line 856
    .line 857
    const/4 v6, 0x2

    .line 858
    if-ne v3, v6, :cond_2a

    .line 859
    .line 860
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    goto :goto_15

    .line 864
    :cond_2a
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const/4 v5, 0x0

    .line 868
    goto :goto_15

    .line 869
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    goto :goto_12

    .line 873
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    iput v13, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 877
    .line 878
    invoke-virtual {v4, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateClipboardEntry$foundation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    if-ne v2, v1, :cond_2d

    .line 883
    .line 884
    goto :goto_14

    .line 885
    :cond_2d
    :goto_12
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getContextTextAndSelection()Lkotlin/Pair;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    if-eqz v2, :cond_2f

    .line 890
    .line 891
    iget-object v3, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v3, Ljava/lang/String;

    .line 894
    .line 895
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v2, Landroidx/compose/ui/text/TextRange;

    .line 898
    .line 899
    iget-wide v6, v2, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 900
    .line 901
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 902
    .line 903
    if-eqz v2, :cond_2f

    .line 904
    .line 905
    const/4 v4, 0x2

    .line 906
    iput v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 907
    .line 908
    check-cast v2, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 909
    .line 910
    invoke-virtual {v2, v3, v6, v7, v0}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->onShowContextMenuOrSelectionToolbar-Sb-Bc2M(Ljava/lang/CharSequence;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    if-ne v0, v1, :cond_2e

    .line 915
    .line 916
    goto :goto_13

    .line 917
    :cond_2e
    move-object v0, v5

    .line 918
    :goto_13
    if-ne v0, v1, :cond_2f

    .line 919
    .line 920
    :goto_14
    move-object v5, v1

    .line 921
    :cond_2f
    :goto_15
    return-object v5

    .line 922
    :pswitch_1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 923
    .line 924
    iget v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 925
    .line 926
    if-eqz v3, :cond_31

    .line 927
    .line 928
    const/4 v13, 0x1

    .line 929
    if-ne v3, v13, :cond_30

    .line 930
    .line 931
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_17

    .line 935
    .line 936
    :cond_30
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    const/4 v5, 0x0

    .line 940
    goto/16 :goto_17

    .line 941
    .line 942
    :cond_31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    iget-wide v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 950
    .line 951
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 952
    .line 953
    .line 954
    move-result v2

    .line 955
    if-nez v2, :cond_32

    .line 956
    .line 957
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    if-eqz v2, :cond_32

    .line 962
    .line 963
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    invoke-static {v2}, Lkotlin/TuplesKt;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 968
    .line 969
    .line 970
    move-result-object v7

    .line 971
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 980
    .line 981
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 984
    .line 985
    .line 986
    move-result v3

    .line 987
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 996
    .line 997
    .line 998
    move-result-object v6

    .line 999
    iget-object v6, v6, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1000
    .line 1001
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1004
    .line 1005
    .line 1006
    move-result v6

    .line 1007
    invoke-static {v3, v6}, Lkotlin/TuplesKt;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 1012
    .line 1013
    invoke-direct {v6, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    iget-wide v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1028
    .line 1029
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 1030
    .line 1031
    .line 1032
    move-result v3

    .line 1033
    invoke-static {v3, v3}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v8

    .line 1037
    invoke-static {v2, v8, v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    iget-object v3, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1042
    .line 1043
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 1047
    .line 1048
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1049
    .line 1050
    .line 1051
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1052
    .line 1053
    const/4 v13, 0x1

    .line 1054
    iput-boolean v13, v2, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 1055
    .line 1056
    goto :goto_16

    .line 1057
    :cond_32
    const/4 v13, 0x1

    .line 1058
    const/4 v7, 0x0

    .line 1059
    :goto_16
    if-nez v7, :cond_33

    .line 1060
    .line 1061
    goto :goto_17

    .line 1062
    :cond_33
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 1063
    .line 1064
    if-eqz v2, :cond_34

    .line 1065
    .line 1066
    invoke-static {v7}, Landroidx/compose/foundation/internal/ClipboardUtils;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v3

    .line 1070
    iput v13, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 1071
    .line 1072
    check-cast v2, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 1073
    .line 1074
    invoke-virtual {v2, v3}, Landroidx/compose/ui/platform/AndroidClipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;)V

    .line 1075
    .line 1076
    .line 1077
    if-ne v5, v1, :cond_34

    .line 1078
    .line 1079
    move-object v5, v1

    .line 1080
    :cond_34
    :goto_17
    return-object v5

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
