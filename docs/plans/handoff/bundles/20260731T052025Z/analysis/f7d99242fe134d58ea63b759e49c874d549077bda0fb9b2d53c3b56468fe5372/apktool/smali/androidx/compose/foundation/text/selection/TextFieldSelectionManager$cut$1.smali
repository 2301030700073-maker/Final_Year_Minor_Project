.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    iget-wide p0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
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
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 13
    .line 14
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eq v1, v8, :cond_1

    .line 25
    .line 26
    if-ne v1, v5, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    goto/16 :goto_e

    .line 34
    .line 35
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    goto/16 :goto_10

    .line 40
    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v3, p1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 51
    .line 52
    if-eqz v1, :cond_28

    .line 53
    .line 54
    iput v8, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 55
    .line 56
    check-cast v1, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    new-instance v3, Landroidx/compose/ui/platform/ClipEntry;

    .line 71
    .line 72
    invoke-direct {v3, v1}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    :goto_0
    if-ne v3, v4, :cond_4

    .line 78
    .line 79
    goto/16 :goto_10

    .line 80
    .line 81
    :cond_4
    :goto_1
    check-cast v3, Landroidx/compose/ui/platform/ClipEntry;

    .line 82
    .line 83
    if-eqz v3, :cond_28

    .line 84
    .line 85
    iput v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 86
    .line 87
    iget-object v0, v3, Landroidx/compose/ui/platform/ClipEntry;->clipData:Landroid/content/ClipData;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_24

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_24

    .line 101
    .line 102
    instance-of v3, v0, Landroid/text/Spanned;

    .line 103
    .line 104
    if-nez v3, :cond_5

    .line 105
    .line 106
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v0, v1

    .line 116
    goto/16 :goto_d

    .line 117
    .line 118
    :cond_5
    move-object v3, v0

    .line 119
    check-cast v3, Landroid/text/Spanned;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    const-class v11, Landroid/text/Annotation;

    .line 126
    .line 127
    invoke-interface {v3, v1, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    check-cast v10, [Landroid/text/Annotation;

    .line 132
    .line 133
    new-instance v11, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    array-length v12, v10

    .line 142
    sub-int/2addr v12, v8

    .line 143
    if-ltz v12, :cond_21

    .line 144
    .line 145
    move v13, v1

    .line 146
    :goto_2
    aget-object v14, v10, v13

    .line 147
    .line 148
    invoke-virtual {v14}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    const-string v9, "androidx.compose.text.SpanStyle"

    .line 153
    .line 154
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_6

    .line 159
    .line 160
    move-object/from16 p0, v0

    .line 161
    .line 162
    move/from16 p1, v1

    .line 163
    .line 164
    goto/16 :goto_b

    .line 165
    .line 166
    :cond_6
    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    new-instance v5, Landroidx/compose/foundation/internal/DecodeHelper;

    .line 175
    .line 176
    invoke-virtual {v14}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iput-object v8, v5, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 188
    .line 189
    invoke-static {v14, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    move-object/from16 p0, v0

    .line 194
    .line 195
    array-length v0, v14

    .line 196
    invoke-virtual {v8, v14, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v5, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 203
    .line 204
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 205
    .line 206
    sget-wide v19, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 207
    .line 208
    move-wide/from16 v22, v17

    .line 209
    .line 210
    move-wide/from16 v36, v22

    .line 211
    .line 212
    move-wide/from16 v24, v19

    .line 213
    .line 214
    move-wide/from16 v31, v24

    .line 215
    .line 216
    const/16 v26, 0x0

    .line 217
    .line 218
    const/16 v27, 0x0

    .line 219
    .line 220
    const/16 v28, 0x0

    .line 221
    .line 222
    const/16 v30, 0x0

    .line 223
    .line 224
    const/16 v33, 0x0

    .line 225
    .line 226
    const/16 v34, 0x0

    .line 227
    .line 228
    const/16 v38, 0x0

    .line 229
    .line 230
    const/16 v39, 0x0

    .line 231
    .line 232
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    const/4 v14, 0x1

    .line 237
    if-le v8, v14, :cond_1f

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    move/from16 p1, v1

    .line 244
    .line 245
    const/16 v1, 0x8

    .line 246
    .line 247
    if-ne v8, v14, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-lt v8, v1, :cond_20

    .line 254
    .line 255
    invoke-virtual {v5}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 256
    .line 257
    .line 258
    move-result-wide v22

    .line 259
    :goto_4
    move/from16 v1, p1

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_7
    const/4 v14, 0x5

    .line 263
    const/4 v1, 0x2

    .line 264
    if-ne v8, v1, :cond_8

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-lt v1, v14, :cond_20

    .line 271
    .line 272
    invoke-virtual {v5}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    .line 273
    .line 274
    .line 275
    move-result-wide v24

    .line 276
    goto :goto_4

    .line 277
    :cond_8
    const/4 v1, 0x3

    .line 278
    const/4 v14, 0x4

    .line 279
    if-ne v8, v1, :cond_9

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-lt v1, v14, :cond_20

    .line 286
    .line 287
    new-instance v1, Landroidx/compose/ui/text/font/FontWeight;

    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-direct {v1, v8}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 294
    .line 295
    .line 296
    move-object/from16 v26, v1

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_9
    if-ne v8, v14, :cond_c

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/4 v8, 0x1

    .line 306
    if-lt v1, v8, :cond_20

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-nez v1, :cond_b

    .line 313
    .line 314
    :cond_a
    move/from16 v1, p1

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_b
    if-ne v1, v8, :cond_a

    .line 318
    .line 319
    move v1, v8

    .line 320
    :goto_5
    new-instance v14, Landroidx/compose/ui/text/font/FontStyle;

    .line 321
    .line 322
    invoke-direct {v14, v1}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 323
    .line 324
    .line 325
    move/from16 v1, p1

    .line 326
    .line 327
    move-object/from16 v27, v14

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_c
    const/4 v1, 0x5

    .line 331
    const/4 v14, 0x1

    .line 332
    if-ne v8, v1, :cond_11

    .line 333
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-lt v1, v14, :cond_20

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-nez v1, :cond_e

    .line 345
    .line 346
    :cond_d
    move/from16 v1, p1

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_e
    if-ne v1, v14, :cond_f

    .line 350
    .line 351
    const v1, 0xffff

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_f
    const/4 v8, 0x3

    .line 356
    if-ne v1, v8, :cond_10

    .line 357
    .line 358
    const/4 v1, 0x2

    .line 359
    goto :goto_6

    .line 360
    :cond_10
    const/4 v8, 0x2

    .line 361
    if-ne v1, v8, :cond_d

    .line 362
    .line 363
    const/4 v1, 0x1

    .line 364
    :goto_6
    new-instance v8, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 365
    .line 366
    invoke-direct {v8, v1}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 367
    .line 368
    .line 369
    move/from16 v1, p1

    .line 370
    .line 371
    move-object/from16 v28, v8

    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_11
    const/4 v1, 0x6

    .line 376
    if-ne v8, v1, :cond_12

    .line 377
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v30

    .line 382
    goto :goto_4

    .line 383
    :cond_12
    const/4 v1, 0x7

    .line 384
    if-ne v8, v1, :cond_13

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    const/4 v8, 0x5

    .line 391
    if-lt v1, v8, :cond_20

    .line 392
    .line 393
    invoke-virtual {v5}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    .line 394
    .line 395
    .line 396
    move-result-wide v31

    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_13
    const/16 v1, 0x8

    .line 400
    .line 401
    if-ne v8, v1, :cond_14

    .line 402
    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    const/4 v8, 0x4

    .line 408
    if-lt v1, v8, :cond_20

    .line 409
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    new-instance v8, Landroidx/compose/ui/text/style/BaselineShift;

    .line 415
    .line 416
    invoke-direct {v8, v1}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 417
    .line 418
    .line 419
    move/from16 v1, p1

    .line 420
    .line 421
    move-object/from16 v33, v8

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_14
    const/16 v14, 0x9

    .line 426
    .line 427
    if-ne v8, v14, :cond_15

    .line 428
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-lt v8, v1, :cond_20

    .line 434
    .line 435
    new-instance v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 436
    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    invoke-direct {v1, v8, v14}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v34, v1

    .line 449
    .line 450
    goto/16 :goto_4

    .line 451
    .line 452
    :cond_15
    const/16 v14, 0xa

    .line 453
    .line 454
    if-ne v8, v14, :cond_16

    .line 455
    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    if-lt v8, v1, :cond_20

    .line 461
    .line 462
    invoke-virtual {v5}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 463
    .line 464
    .line 465
    move-result-wide v36

    .line 466
    goto/16 :goto_4

    .line 467
    .line 468
    :cond_16
    const/16 v1, 0xb

    .line 469
    .line 470
    if-ne v8, v1, :cond_1e

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    const/4 v8, 0x4

    .line 477
    if-lt v1, v8, :cond_20

    .line 478
    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    and-int/lit8 v8, v1, 0x2

    .line 484
    .line 485
    if-eqz v8, :cond_17

    .line 486
    .line 487
    const/4 v8, 0x1

    .line 488
    goto :goto_7

    .line 489
    :cond_17
    move/from16 v8, p1

    .line 490
    .line 491
    :goto_7
    and-int/lit8 v1, v1, 0x1

    .line 492
    .line 493
    if-eqz v1, :cond_18

    .line 494
    .line 495
    const/4 v1, 0x1

    .line 496
    goto :goto_8

    .line 497
    :cond_18
    move/from16 v1, p1

    .line 498
    .line 499
    :goto_8
    sget-object v14, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 500
    .line 501
    sget-object v17, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 502
    .line 503
    if-eqz v8, :cond_1a

    .line 504
    .line 505
    if-eqz v1, :cond_1a

    .line 506
    .line 507
    move-object/from16 v18, v0

    .line 508
    .line 509
    const/4 v0, 0x2

    .line 510
    new-array v1, v0, [Landroidx/compose/ui/text/style/TextDecoration;

    .line 511
    .line 512
    aput-object v14, v1, p1

    .line 513
    .line 514
    const/16 v16, 0x1

    .line 515
    .line 516
    aput-object v17, v1, v16

    .line 517
    .line 518
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    move/from16 v14, p1

    .line 531
    .line 532
    :goto_9
    if-ge v14, v8, :cond_19

    .line 533
    .line 534
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v17

    .line 538
    move-object/from16 v19, v0

    .line 539
    .line 540
    move-object/from16 v0, v17

    .line 541
    .line 542
    check-cast v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 549
    .line 550
    or-int/2addr v0, v1

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    add-int/lit8 v14, v14, 0x1

    .line 556
    .line 557
    move-object/from16 v0, v19

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    new-instance v1, Landroidx/compose/ui/text/style/TextDecoration;

    .line 565
    .line 566
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v38, v1

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_1a
    move-object/from16 v18, v0

    .line 573
    .line 574
    if-eqz v8, :cond_1b

    .line 575
    .line 576
    move-object/from16 v38, v14

    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_1b
    if-eqz v1, :cond_1c

    .line 580
    .line 581
    move-object/from16 v38, v17

    .line 582
    .line 583
    goto :goto_a

    .line 584
    :cond_1c
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 585
    .line 586
    move-object/from16 v38, v0

    .line 587
    .line 588
    :cond_1d
    :goto_a
    move/from16 v1, p1

    .line 589
    .line 590
    move-object/from16 v0, v18

    .line 591
    .line 592
    goto/16 :goto_3

    .line 593
    .line 594
    :cond_1e
    move-object/from16 v18, v0

    .line 595
    .line 596
    const/16 v0, 0xc

    .line 597
    .line 598
    if-ne v8, v0, :cond_1d

    .line 599
    .line 600
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->dataAvail()I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    const/16 v1, 0x14

    .line 605
    .line 606
    if-lt v0, v1, :cond_20

    .line 607
    .line 608
    new-instance v40, Landroidx/compose/ui/graphics/Shadow;

    .line 609
    .line 610
    invoke-virtual {v5}, Landroidx/compose/foundation/internal/DecodeHelper;->decodeColor-0d7_KjU()J

    .line 611
    .line 612
    .line 613
    move-result-wide v41

    .line 614
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->readFloat()F

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->readFloat()F

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    move v8, v1

    .line 627
    int-to-long v0, v0

    .line 628
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 629
    .line 630
    .line 631
    move-result v8

    .line 632
    move-wide/from16 v19, v0

    .line 633
    .line 634
    int-to-long v0, v8

    .line 635
    const/16 v8, 0x20

    .line 636
    .line 637
    shl-long v19, v19, v8

    .line 638
    .line 639
    const-wide v43, 0xffffffffL

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    and-long v0, v0, v43

    .line 645
    .line 646
    or-long v43, v19, v0

    .line 647
    .line 648
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->readFloat()F

    .line 649
    .line 650
    .line 651
    move-result v45

    .line 652
    invoke-direct/range {v40 .. v45}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 653
    .line 654
    .line 655
    move/from16 v1, p1

    .line 656
    .line 657
    move-object/from16 v0, v18

    .line 658
    .line 659
    move-object/from16 v39, v40

    .line 660
    .line 661
    goto/16 :goto_3

    .line 662
    .line 663
    :cond_1f
    move/from16 p1, v1

    .line 664
    .line 665
    :cond_20
    new-instance v21, Landroidx/compose/ui/text/SpanStyle;

    .line 666
    .line 667
    const v40, 0xc000

    .line 668
    .line 669
    .line 670
    const/16 v29, 0x0

    .line 671
    .line 672
    const/16 v35, 0x0

    .line 673
    .line 674
    invoke-direct/range {v21 .. v40}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 675
    .line 676
    .line 677
    move-object/from16 v0, v21

    .line 678
    .line 679
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 680
    .line 681
    invoke-direct {v1, v9, v15, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    :goto_b
    if-eq v13, v12, :cond_22

    .line 688
    .line 689
    add-int/lit8 v13, v13, 0x1

    .line 690
    .line 691
    move-object/from16 v0, p0

    .line 692
    .line 693
    move/from16 v1, p1

    .line 694
    .line 695
    const/4 v5, 0x2

    .line 696
    const/4 v8, 0x1

    .line 697
    goto/16 :goto_2

    .line 698
    .line 699
    :cond_21
    move-object/from16 p0, v0

    .line 700
    .line 701
    :cond_22
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 702
    .line 703
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    sget-object v3, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 708
    .line 709
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    if-eqz v3, :cond_23

    .line 714
    .line 715
    const/4 v9, 0x0

    .line 716
    goto :goto_c

    .line 717
    :cond_23
    move-object v9, v11

    .line 718
    :goto_c
    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    goto :goto_d

    .line 722
    :cond_24
    const/4 v0, 0x0

    .line 723
    :goto_d
    if-ne v0, v4, :cond_25

    .line 724
    .line 725
    goto :goto_10

    .line 726
    :cond_25
    :goto_e
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 727
    .line 728
    if-nez v0, :cond_26

    .line 729
    .line 730
    goto :goto_f

    .line 731
    :cond_26
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_27

    .line 736
    .line 737
    goto :goto_f

    .line 738
    :cond_27
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 747
    .line 748
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 749
    .line 750
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 759
    .line 760
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 779
    .line 780
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    invoke-static {v3, v4}, Landroidx/appcompat/app/ActionBar;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 791
    .line 792
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 807
    .line 808
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    add-int/2addr v0, v3

    .line 819
    invoke-static {v0, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 820
    .line 821
    .line 822
    move-result-wide v3

    .line 823
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 828
    .line 829
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v6, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 833
    .line 834
    .line 835
    iget-object v0, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 836
    .line 837
    const/4 v14, 0x1

    .line 838
    iput-boolean v14, v0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 839
    .line 840
    :cond_28
    :goto_f
    move-object v4, v7

    .line 841
    :goto_10
    return-object v4

    .line 842
    :pswitch_0
    move v14, v8

    .line 843
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 844
    .line 845
    if-eqz v1, :cond_2c

    .line 846
    .line 847
    if-eq v1, v14, :cond_2b

    .line 848
    .line 849
    const/4 v8, 0x2

    .line 850
    if-ne v1, v8, :cond_2a

    .line 851
    .line 852
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :cond_29
    move-object v4, v7

    .line 856
    goto :goto_15

    .line 857
    :cond_2a
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    const/4 v4, 0x0

    .line 861
    goto :goto_15

    .line 862
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    goto :goto_11

    .line 866
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 867
    .line 868
    .line 869
    iput v14, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 870
    .line 871
    invoke-virtual {v6, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateClipboardEntry$foundation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    if-ne v1, v4, :cond_2d

    .line 876
    .line 877
    goto :goto_15

    .line 878
    :cond_2d
    :goto_11
    invoke-static {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getContextTextAndSelection(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Pair;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    if-eqz v1, :cond_29

    .line 883
    .line 884
    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 885
    .line 886
    move-object v12, v2

    .line 887
    check-cast v12, Ljava/lang/String;

    .line 888
    .line 889
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v1, Landroidx/compose/ui/text/TextRange;

    .line 892
    .line 893
    iget-wide v9, v1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 894
    .line 895
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 896
    .line 897
    if-eqz v1, :cond_29

    .line 898
    .line 899
    const/4 v8, 0x2

    .line 900
    iput v8, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 901
    .line 902
    move-object v11, v1

    .line 903
    check-cast v11, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 904
    .line 905
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 906
    .line 907
    .line 908
    move-result v1

    .line 909
    if-nez v1, :cond_2e

    .line 910
    .line 911
    goto :goto_12

    .line 912
    :cond_2e
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_2f

    .line 917
    .line 918
    :goto_12
    move-object v0, v7

    .line 919
    goto :goto_13

    .line 920
    :cond_2f
    new-instance v8, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;

    .line 921
    .line 922
    const/4 v13, 0x0

    .line 923
    invoke-direct/range {v8 .. v13}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;-><init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 924
    .line 925
    .line 926
    iget-object v1, v11, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 927
    .line 928
    new-instance v2, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;

    .line 929
    .line 930
    const/4 v5, 0x0

    .line 931
    invoke-direct {v2, v11, v8, v5}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 932
    .line 933
    .line 934
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    :goto_13
    if-ne v0, v4, :cond_30

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_30
    move-object v0, v7

    .line 942
    :goto_14
    if-ne v0, v4, :cond_29

    .line 943
    .line 944
    :goto_15
    return-object v4

    .line 945
    :pswitch_1
    const/4 v5, 0x0

    .line 946
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 947
    .line 948
    if-eqz v1, :cond_33

    .line 949
    .line 950
    const/4 v14, 0x1

    .line 951
    if-ne v1, v14, :cond_32

    .line 952
    .line 953
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    :cond_31
    :goto_16
    move-object v4, v7

    .line 957
    goto/16 :goto_18

    .line 958
    .line 959
    :cond_32
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    move-object v4, v5

    .line 963
    goto/16 :goto_18

    .line 964
    .line 965
    :cond_33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    iget-wide v8, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 973
    .line 974
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    if-nez v1, :cond_34

    .line 979
    .line 980
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    if-eqz v1, :cond_34

    .line 985
    .line 986
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 987
    .line 988
    instance-of v1, v1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 989
    .line 990
    if-nez v1, :cond_34

    .line 991
    .line 992
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    invoke-static {v1}, Landroidx/appcompat/app/ActionBar;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 997
    .line 998
    .line 999
    move-result-object v9

    .line 1000
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v3

    .line 1008
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1009
    .line 1010
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v5

    .line 1028
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1029
    .line 1030
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1031
    .line 1032
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1033
    .line 1034
    .line 1035
    move-result v5

    .line 1036
    invoke-static {v3, v5}, Landroidx/appcompat/app/ActionBar;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v3

    .line 1040
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 1041
    .line 1042
    invoke-direct {v5, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    iget-wide v10, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1057
    .line 1058
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    invoke-static {v3, v3}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v10

    .line 1066
    invoke-static {v1, v10, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    iget-object v3, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1071
    .line 1072
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v6, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1079
    .line 1080
    const/4 v14, 0x1

    .line 1081
    iput-boolean v14, v1, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 1082
    .line 1083
    goto :goto_17

    .line 1084
    :cond_34
    const/4 v14, 0x1

    .line 1085
    move-object v9, v5

    .line 1086
    :goto_17
    if-nez v9, :cond_35

    .line 1087
    .line 1088
    goto/16 :goto_16

    .line 1089
    .line 1090
    :cond_35
    iget-object v1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 1091
    .line 1092
    if-eqz v1, :cond_31

    .line 1093
    .line 1094
    invoke-static {v9}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    iput v14, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->label:I

    .line 1099
    .line 1100
    check-cast v1, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 1101
    .line 1102
    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/AndroidClipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;)V

    .line 1103
    .line 1104
    .line 1105
    if-ne v7, v4, :cond_31

    .line 1106
    .line 1107
    :goto_18
    return-object v4

    .line 1108
    nop

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
