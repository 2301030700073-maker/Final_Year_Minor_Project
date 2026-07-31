.class public final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p0, v1

    .line 27
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 32
    .line 33
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v1, v2

    .line 47
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :pswitch_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 57
    .line 58
    iget p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 65
    .line 66
    iget p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_1
    check-cast p2, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 78
    .line 79
    iget p0, p2, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 86
    .line 87
    iget p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :pswitch_2
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/wikipedia/feed/ForYouModule;->moduleKey()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lorg/wikipedia/settings/homefeed/ForYouModuleType;->valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/homefeed/ForYouModuleType;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p2, Lorg/wikipedia/feed/ForYouModule;

    .line 117
    .line 118
    invoke-virtual {p2}, Lorg/wikipedia/feed/ForYouModule;->moduleKey()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lorg/wikipedia/settings/homefeed/ForYouModuleType;->valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/homefeed/ForYouModuleType;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    return p0

    .line 139
    :pswitch_3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 140
    .line 141
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_5

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_4

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    move p0, v2

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    :goto_3
    move p0, v1

    .line 157
    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 162
    .line 163
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_6

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_6
    move v1, v2

    .line 177
    :cond_7
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    return p0

    .line 186
    :pswitch_4
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 187
    .line 188
    iget p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 189
    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 195
    .line 196
    iget p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 197
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    return p0

    .line 207
    :pswitch_5
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 208
    .line 209
    iget p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 210
    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 216
    .line 217
    iget p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 218
    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    return p0

    .line 228
    :pswitch_6
    check-cast p1, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 229
    .line 230
    invoke-interface {p1}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 235
    .line 236
    check-cast p2, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 237
    .line 238
    invoke-interface {p2}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object p1, p1, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 243
    .line 244
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    return p0

    .line 249
    :pswitch_7
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 250
    .line 251
    iget p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 252
    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 258
    .line 259
    iget p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 260
    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    return p0

    .line 270
    :pswitch_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 271
    .line 272
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Ljava/lang/String;

    .line 277
    .line 278
    check-cast p2, Ljava/util/Map$Entry;

    .line 279
    .line 280
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    return p0

    .line 291
    :pswitch_9
    check-cast p2, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 292
    .line 293
    iget-object p0, p2, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 294
    .line 295
    check-cast p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 296
    .line 297
    iget-object p1, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 298
    .line 299
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 300
    .line 301
    .line 302
    move-result p0

    .line 303
    return p0

    .line 304
    :pswitch_a
    check-cast p2, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 305
    .line 306
    iget-object p0, p2, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 307
    .line 308
    check-cast p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 309
    .line 310
    iget-object p1, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 311
    .line 312
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    return p0

    .line 317
    :pswitch_b
    check-cast p1, Lokio/internal/ZipEntry;

    .line 318
    .line 319
    iget-object p0, p1, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 320
    .line 321
    check-cast p2, Lokio/internal/ZipEntry;

    .line 322
    .line 323
    iget-object p1, p2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 324
    .line 325
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 326
    .line 327
    .line 328
    move-result p0

    .line 329
    return p0

    .line 330
    :pswitch_c
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 331
    .line 332
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 333
    .line 334
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->compare(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    if-nez p0, :cond_8

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    :goto_6
    return v2

    .line 346
    :pswitch_d
    check-cast p1, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 347
    .line 348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    check-cast p2, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 353
    .line 354
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 359
    .line 360
    .line 361
    move-result p0

    .line 362
    return p0

    .line 363
    :pswitch_e
    check-cast p1, Ljava/lang/reflect/Method;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    check-cast p2, Ljava/lang/reflect/Method;

    .line 370
    .line 371
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    return p0

    .line 380
    :pswitch_f
    check-cast p1, Ljava/lang/Comparable;

    .line 381
    .line 382
    check-cast p2, Ljava/lang/Comparable;

    .line 383
    .line 384
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    return p0

    .line 389
    :pswitch_10
    check-cast p1, Landroid/view/View;

    .line 390
    .line 391
    check-cast p2, Landroid/view/View;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 394
    .line 395
    .line 396
    move-result p0

    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    sub-int/2addr p0, p1

    .line 402
    return p0

    .line 403
    :pswitch_11
    check-cast p2, Lcoil3/util/DecoderServiceLoaderTarget;

    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    check-cast p1, Lcoil3/util/DecoderServiceLoaderTarget;

    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    invoke-static {p0, p0}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    return p0

    .line 422
    :pswitch_12
    check-cast p2, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 423
    .line 424
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    const/4 p0, 0x2

    .line 428
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    check-cast p1, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 433
    .line 434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-static {p0, p0}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    return p0

    .line 442
    :pswitch_13
    check-cast p1, [I

    .line 443
    .line 444
    check-cast p2, [I

    .line 445
    .line 446
    aget p0, p1, v2

    .line 447
    .line 448
    aget p1, p2, v2

    .line 449
    .line 450
    sub-int/2addr p0, p1

    .line 451
    return p0

    .line 452
    :pswitch_14
    check-cast p1, Landroidx/room/util/TableInfo$Index;

    .line 453
    .line 454
    iget-object p0, p1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 455
    .line 456
    check-cast p2, Landroidx/room/util/TableInfo$Index;

    .line 457
    .line 458
    iget-object p1, p2, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 459
    .line 460
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 461
    .line 462
    .line 463
    move-result p0

    .line 464
    return p0

    .line 465
    :pswitch_15
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 466
    .line 467
    iget-object p0, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 468
    .line 469
    check-cast p2, Landroidx/room/util/TableInfo$Column;

    .line 470
    .line 471
    iget-object p1, p2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 474
    .line 475
    .line 476
    move-result p0

    .line 477
    return p0

    .line 478
    :pswitch_16
    check-cast p1, Ljava/util/Map$Entry;

    .line 479
    .line 480
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    check-cast p0, Ljava/lang/Integer;

    .line 485
    .line 486
    check-cast p2, Ljava/util/Map$Entry;

    .line 487
    .line 488
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    check-cast p1, Ljava/lang/Integer;

    .line 493
    .line 494
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 495
    .line 496
    .line 497
    move-result p0

    .line 498
    return p0

    .line 499
    :pswitch_17
    check-cast p1, Ljava/util/Map$Entry;

    .line 500
    .line 501
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    check-cast p0, Ljava/lang/Integer;

    .line 506
    .line 507
    check-cast p2, Ljava/util/Map$Entry;

    .line 508
    .line 509
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    check-cast p1, Ljava/lang/Integer;

    .line 514
    .line 515
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 516
    .line 517
    .line 518
    move-result p0

    .line 519
    return p0

    .line 520
    :pswitch_18
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 521
    .line 522
    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 523
    .line 524
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 525
    .line 526
    if-nez p0, :cond_9

    .line 527
    .line 528
    move v3, v1

    .line 529
    goto :goto_7

    .line 530
    :cond_9
    move v3, v2

    .line 531
    :goto_7
    iget-object v4, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 532
    .line 533
    if-nez v4, :cond_a

    .line 534
    .line 535
    move v4, v1

    .line 536
    goto :goto_8

    .line 537
    :cond_a
    move v4, v2

    .line 538
    :goto_8
    if-eq v3, v4, :cond_b

    .line 539
    .line 540
    if-nez p0, :cond_10

    .line 541
    .line 542
    goto :goto_9

    .line 543
    :cond_b
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 544
    .line 545
    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 546
    .line 547
    if-eq p0, v3, :cond_d

    .line 548
    .line 549
    if-eqz p0, :cond_c

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_c
    :goto_9
    move v0, v1

    .line 553
    goto :goto_a

    .line 554
    :cond_d
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 555
    .line 556
    iget v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 557
    .line 558
    sub-int v0, p0, v0

    .line 559
    .line 560
    if-eqz v0, :cond_e

    .line 561
    .line 562
    goto :goto_a

    .line 563
    :cond_e
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 564
    .line 565
    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 566
    .line 567
    sub-int v0, p0, p1

    .line 568
    .line 569
    if-eqz v0, :cond_f

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_f
    move v0, v2

    .line 573
    :cond_10
    :goto_a
    return v0

    .line 574
    :pswitch_19
    check-cast p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 575
    .line 576
    check-cast p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 577
    .line 578
    invoke-virtual {p2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    invoke-virtual {p1}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    sub-int/2addr p0, p1

    .line 587
    return p0

    .line 588
    :pswitch_1a
    check-cast p1, Landroid/view/View;

    .line 589
    .line 590
    check-cast p2, Landroid/view/View;

    .line 591
    .line 592
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 593
    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 595
    .line 596
    .line 597
    move-result p0

    .line 598
    invoke-virtual {p2}, Landroid/view/View;->getZ()F

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    cmpl-float p2, p0, p1

    .line 603
    .line 604
    if-lez p2, :cond_11

    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_11
    cmpg-float p0, p0, p1

    .line 608
    .line 609
    if-gez p0, :cond_12

    .line 610
    .line 611
    move v0, v1

    .line 612
    goto :goto_b

    .line 613
    :cond_12
    move v0, v2

    .line 614
    :goto_b
    return v0

    .line 615
    :pswitch_1b
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    .line 616
    .line 617
    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    .line 618
    .line 619
    iget p0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 620
    .line 621
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 622
    .line 623
    sub-int/2addr p0, p1

    .line 624
    return p0

    .line 625
    :pswitch_1c
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 626
    .line 627
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 628
    .line 629
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 630
    .line 631
    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 632
    .line 633
    sub-int/2addr p0, p1

    .line 634
    return p0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
