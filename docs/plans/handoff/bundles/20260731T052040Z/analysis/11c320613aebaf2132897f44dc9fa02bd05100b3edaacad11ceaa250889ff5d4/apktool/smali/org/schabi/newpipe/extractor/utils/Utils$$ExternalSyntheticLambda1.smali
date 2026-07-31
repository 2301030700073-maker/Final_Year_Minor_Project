.class public final synthetic Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "content"

    .line 5
    .line 6
    const-string/jumbo v2, "videoRenderer"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "thumbnailBadgeViewModel"

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    sget p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 20
    .line 21
    new-instance p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 22
    .line 23
    invoke-direct {p0, v5, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;-><init>(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    new-instance p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 28
    .line 29
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_1
    const-class p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 36
    .line 37
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isFullscreen()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 65
    .line 66
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_5
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 70
    .line 71
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 72
    .line 73
    iget-boolean p0, p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 74
    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    iget-boolean p0, p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 78
    .line 79
    if-nez p0, :cond_0

    .line 80
    .line 81
    move v4, v5

    .line 82
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_6
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 88
    .line 89
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 90
    .line 91
    iget-object p0, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 92
    .line 93
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 97
    .line 98
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 99
    .line 100
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 101
    .line 102
    const-class p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_8
    check-cast p1, [Ljava/lang/String;

    .line 110
    .line 111
    aget-object p0, p1, v5

    .line 112
    .line 113
    sget-object p1, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 114
    .line 115
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 116
    .line 117
    invoke-static {p0, p1}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    check-cast p1, [Ljava/lang/String;

    .line 123
    .line 124
    aget-object p0, p1, v4

    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_a
    check-cast p1, Ljava/lang/String;

    .line 128
    .line 129
    const-string p0, "="

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_b
    check-cast p1, Lj$/time/temporal/ChronoUnit;

    .line 137
    .line 138
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_c
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 145
    .line 146
    const-string/jumbo p0, "tabRenderer"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :pswitch_d
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_e
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string p1, "expandedShelfContentsRenderer"

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    const-string p1, "items"

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :pswitch_f
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 185
    .line 186
    const-string/jumbo p0, "shelfRenderer"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_10
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 195
    .line 196
    const-string p0, "itemSectionRenderer"

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    const-string p1, "contents"

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :pswitch_11
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 214
    .line 215
    const-string p0, "richItemRenderer"

    .line 216
    .line 217
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :pswitch_12
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 231
    .line 232
    const-string p0, "appendContinuationItemsAction"

    .line 233
    .line 234
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    return-object p0

    .line 239
    :pswitch_13
    check-cast p1, Lcom/grack/nanojson/JsonArray;

    .line 240
    .line 241
    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    instance-of p1, p0, Ljava/lang/String;

    .line 246
    .line 247
    if-eqz p1, :cond_1

    .line 248
    .line 249
    move-object v0, p0

    .line 250
    check-cast v0, Ljava/lang/String;

    .line 251
    .line 252
    :cond_1
    return-object v0

    .line 253
    :pswitch_14
    const-class p0, Lcom/grack/nanojson/JsonArray;

    .line 254
    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Lcom/grack/nanojson/JsonArray;

    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_15
    check-cast p1, Ljava/lang/String;

    .line 263
    .line 264
    const-string p0, ","

    .line 265
    .line 266
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    return-object p0

    .line 271
    :pswitch_16
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 272
    .line 273
    const-string p0, "listItemViewModel"

    .line 274
    .line 275
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    return-object p0

    .line 280
    :pswitch_17
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 281
    .line 282
    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    return-object p0

    .line 287
    :pswitch_18
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 288
    .line 289
    const-string/jumbo p0, "thumbnailBottomOverlayViewModel"

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    const-string p1, "badges"

    .line 297
    .line 298
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0

    .line 307
    :pswitch_19
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 308
    .line 309
    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    return-object p0

    .line 314
    :pswitch_1a
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 315
    .line 316
    const-string/jumbo p0, "thumbnailOverlayBadgeViewModel"

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    const-string/jumbo p1, "thumbnailBadges"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    return-object p0

    .line 335
    :pswitch_1b
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 336
    .line 337
    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    const-string/jumbo p1, "text"

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    return-object p0

    .line 349
    :pswitch_1c
    check-cast p1, Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    return-object p0

    .line 356
    nop

    .line 357
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

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
