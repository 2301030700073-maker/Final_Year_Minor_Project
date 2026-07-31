.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

.field label:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_b

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 10
    .line 11
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 18
    .line 19
    iget p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;->serviceId:I

    .line 20
    .line 21
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 30
    .line 31
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;->url:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->fromChannelUrl(Ljava/lang/String;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_8

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    .line 66
    .line 67
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getServiceId()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v3, v2, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 99
    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 101
    .line 102
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 103
    .line 104
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 105
    .line 106
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 107
    .line 108
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;->url:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v3, "application/octet-stream"

    .line 118
    .line 119
    invoke-direct {p1, v0, v1, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 123
    .line 124
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader$1;

    .line 125
    .line 126
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/DataReader$1;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 131
    .line 132
    .line 133
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$Companion;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_2

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_2

    .line 156
    .line 157
    move-object v3, v1

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    const/4 v1, 0x0

    .line 167
    const/4 v4, 0x6

    .line 168
    const/16 v5, 0x2e

    .line 169
    .line 170
    invoke-static {p1, v5, v1, v4}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;CII)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v4, -0x1

    .line 175
    if-eq v1, v4, :cond_5

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    add-int/lit8 v4, v4, -0x1

    .line 182
    .line 183
    if-lt v1, v4, :cond_4

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    :cond_5
    :goto_2
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 193
    .line 194
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;->serviceId:I

    .line 195
    .line 196
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, v0, v3}, Landroidx/core/app/NotificationCompat$Style;->fromInputStream(Lorg/schabi/newpipe/streams/DataReader$1;Ljava/lang/String;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_6

    .line 229
    .line 230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    .line 235
    .line 236
    new-instance v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 237
    .line 238
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getServiceId()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-direct {v2, v4, v3, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    goto :goto_4

    .line 265
    :cond_6
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader$1;->close()V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :goto_4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :catchall_1
    move-exception p1

    .line 271
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    throw p1

    .line 275
    :cond_7
    instance-of p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 276
    .line 277
    if-eqz p1, :cond_a

    .line 278
    .line 279
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 280
    .line 281
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;->$input:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 288
    .line 289
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 290
    .line 291
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;->url:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    if-eqz p0, :cond_8

    .line 305
    .line 306
    :try_start_2
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;->readFrom(Ljava/io/InputStream;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :catchall_2
    move-exception p1

    .line 315
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 316
    :catchall_3
    move-exception v0

    .line 317
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 322
    .line 323
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 324
    .line 325
    return-object p0

    .line 326
    :cond_9
    return-object v1

    .line 327
    :cond_a
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 328
    .line 329
    .line 330
    return-object v1

    .line 331
    :cond_b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 332
    .line 333
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-object v1
.end method
