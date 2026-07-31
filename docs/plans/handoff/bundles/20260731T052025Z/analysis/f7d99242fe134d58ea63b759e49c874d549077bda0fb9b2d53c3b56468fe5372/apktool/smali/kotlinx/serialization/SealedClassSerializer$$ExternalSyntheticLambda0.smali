.class public final synthetic Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 11
    iput p1, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 18
    .line 19
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 22
    .line 23
    invoke-virtual {v1, v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 32
    .line 33
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 36
    .line 37
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 45
    .line 46
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 47
    .line 48
    monitor-enter v5

    .line 49
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v6, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 51
    .line 52
    new-instance v7, Lokhttp3/internal/http2/Settings;

    .line 53
    .line 54
    invoke-direct {v7}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move v8, v3

    .line 61
    :goto_0
    const/16 v9, 0xa

    .line 62
    .line 63
    if-ge v8, v9, :cond_1

    .line 64
    .line 65
    shl-int v9, v2, v8

    .line 66
    .line 67
    iget v10, v6, Lokhttp3/internal/http2/Settings;->set:I

    .line 68
    .line 69
    and-int/2addr v9, v10

    .line 70
    if-eqz v9, :cond_0

    .line 71
    .line 72
    iget-object v9, v6, Lokhttp3/internal/http2/Settings;->values:[I

    .line 73
    .line 74
    aget v9, v9, v8

    .line 75
    .line 76
    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 77
    .line 78
    .line 79
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v8, v3

    .line 83
    :goto_1
    if-ge v8, v9, :cond_3

    .line 84
    .line 85
    shl-int v10, v2, v8

    .line 86
    .line 87
    iget v11, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 88
    .line 89
    and-int/2addr v10, v11

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    iget-object v10, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 93
    .line 94
    aget v10, v10, v8

    .line 95
    .line 96
    invoke-virtual {v7, v8, v10}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    int-to-long v7, p0

    .line 109
    invoke-virtual {v6}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    int-to-long v9, p0

    .line 114
    sub-long/2addr v7, v9

    .line 115
    const-wide/16 v9, 0x0

    .line 116
    .line 117
    cmp-long p0, v7, v9

    .line 118
    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-array v2, v3, [Lokhttp3/internal/http2/Http2Stream;

    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, [Lokhttp3/internal/http2/Http2Stream;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_5

    .line 147
    :cond_5
    :goto_2
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lokhttp3/internal/http2/Settings;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 155
    .line 156
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 157
    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v9, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v9, " onSettings"

    .line 169
    .line 170
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/16 v10, 0x10

    .line 180
    .line 181
    invoke-direct {v9, v10, v0, v4}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v6, v9}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :try_start_3
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 189
    .line 190
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v4, Lokhttp3/internal/http2/Settings;

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :catchall_1
    move-exception p0

    .line 199
    goto :goto_6

    .line 200
    :catch_0
    move-exception v2

    .line 201
    :try_start_4
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 202
    .line 203
    invoke-virtual {v0, v4, v4, v2}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .line 205
    .line 206
    :goto_3
    monitor-exit v5

    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    array-length v0, v1

    .line 210
    :goto_4
    if-ge v3, v0, :cond_7

    .line 211
    .line 212
    aget-object v2, v1, v3

    .line 213
    .line 214
    monitor-enter v2

    .line 215
    :try_start_5
    iget-wide v4, v2, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 216
    .line 217
    add-long/2addr v4, v7

    .line 218
    iput-wide v4, v2, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 219
    .line 220
    if-lez p0, :cond_6

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    .line 224
    .line 225
    :cond_6
    monitor-exit v2

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :catchall_2
    move-exception p0

    .line 230
    monitor-exit v2

    .line 231
    throw p0

    .line 232
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 233
    .line 234
    return-object p0

    .line 235
    :goto_5
    :try_start_6
    monitor-exit v0

    .line 236
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 237
    :goto_6
    monitor-exit v5

    .line 238
    throw p0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 242
    .line 243
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p0, Lokhttp3/internal/http2/Http2Stream;

    .line 246
    .line 247
    :try_start_7
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 248
    .line 249
    invoke-virtual {v1, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :catch_1
    move-exception v1

    .line 254
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 255
    .line 256
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 257
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v4, "Http2Connection.Listener failure for "

    .line 261
    .line 262
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const/4 v3, 0x4

    .line 275
    invoke-virtual {v2, v3, v0, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    :try_start_8
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 279
    .line 280
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 281
    .line 282
    .line 283
    :catch_2
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 284
    .line 285
    return-object p0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 289
    .line 290
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast p0, Ljava/lang/String;

    .line 293
    .line 294
    new-instance v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$OnboardComplete;

    .line 295
    .line 296
    invoke-direct {v1, p0}, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$OnboardComplete;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 303
    .line 304
    return-object p0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 308
    .line 309
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 312
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v2, "create() called with: notification = "

    .line 316
    .line 317
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v0, ", action = "

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :pswitch_4
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 339
    .line 340
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 343
    .line 344
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    .line 349
    return-object p0

    .line 350
    :pswitch_5
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 353
    .line 354
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast p0, Ljava/util/ArrayList;

    .line 357
    .line 358
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 359
    .line 360
    iget-object v0, v0, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 361
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v2, "Flattened path for "

    .line 365
    .line 366
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v0, " \u2192 "

    .line 373
    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    return-object p0

    .line 385
    :pswitch_6
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 388
    .line 389
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 394
    .line 395
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->removeListener(Lapp/k9mail/legacy/mailstore/MessageListChangedListener;)V

    .line 396
    .line 397
    .line 398
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 399
    .line 400
    return-object p0

    .line 401
    :pswitch_7
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 404
    .line 405
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast p0, Ljava/lang/String;

    .line 408
    .line 409
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 413
    .line 414
    return-object p0

    .line 415
    :pswitch_8
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 418
    .line 419
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 422
    .line 423
    if-eqz v0, :cond_8

    .line 424
    .line 425
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    .line 430
    return-object p0

    .line 431
    :pswitch_9
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 434
    .line 435
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 438
    .line 439
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 443
    .line 444
    return-object p0

    .line 445
    :pswitch_a
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Lnet/thunderbird/feature/account/AccountId;

    .line 448
    .line 449
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 452
    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string/jumbo v2, "updateAccountSortCriteria() called with: accountId = "

    .line 456
    .line 457
    .line 458
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v0, ", sortCriteria = "

    .line 465
    .line 466
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    return-object p0

    .line 477
    :pswitch_b
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 480
    .line 481
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast p0, Lkotlinx/serialization/json/Json;

    .line 484
    .line 485
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 486
    .line 487
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 488
    .line 489
    .line 490
    iget-object v5, p0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 491
    .line 492
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 496
    .line 497
    .line 498
    move-result p0

    .line 499
    move v5, v3

    .line 500
    :goto_8
    if-ge v5, p0, :cond_f

    .line 501
    .line 502
    invoke-interface {v0, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    new-instance v7, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    :cond_9
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    if-eqz v8, :cond_a

    .line 520
    .line 521
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    instance-of v9, v8, Lkotlinx/serialization/json/JsonNames;

    .line 526
    .line 527
    if-eqz v9, :cond_9

    .line 528
    .line 529
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-ne v6, v2, :cond_b

    .line 538
    .line 539
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    goto :goto_a

    .line 544
    :cond_b
    move-object v6, v1

    .line 545
    :goto_a
    check-cast v6, Lkotlinx/serialization/json/JsonNames;

    .line 546
    .line 547
    if-eqz v6, :cond_e

    .line 548
    .line 549
    invoke-interface {v6}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    if-eqz v6, :cond_e

    .line 554
    .line 555
    array-length v7, v6

    .line 556
    move v8, v3

    .line 557
    :goto_b
    if-ge v8, v7, :cond_e

    .line 558
    .line 559
    aget-object v9, v6, v8

    .line 560
    .line 561
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlin/ranges/RangesKt;

    .line 562
    .line 563
    .line 564
    move-result-object v10

    .line 565
    sget-object v11, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 566
    .line 567
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v10

    .line 571
    if-eqz v10, :cond_c

    .line 572
    .line 573
    const-string v10, "enum value"

    .line 574
    .line 575
    goto :goto_c

    .line 576
    :cond_c
    const-string v10, "property"

    .line 577
    .line 578
    :goto_c
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v11

    .line 582
    if-nez v11, :cond_d

    .line 583
    .line 584
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    add-int/lit8 v8, v8, 0x1

    .line 592
    .line 593
    goto :goto_b

    .line 594
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v2, "The suggested name \'"

    .line 597
    .line 598
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v2, "\' for "

    .line 605
    .line 606
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const/16 v2, 0x20

    .line 613
    .line 614
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-interface {v0, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v3, " is already one of the names for "

    .line 625
    .line 626
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-static {v4, v9}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    check-cast v2, Ljava/lang/Number;

    .line 640
    .line 641
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    invoke-interface {v0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v2, " in "

    .line 653
    .line 654
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 665
    .line 666
    const/4 v2, -0x1

    .line 667
    invoke-static {v2, p0, v1, v1, v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonDecodingException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v0

    .line 675
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 676
    .line 677
    goto/16 :goto_8

    .line 678
    .line 679
    :cond_f
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 680
    .line 681
    .line 682
    move-result p0

    .line 683
    if-eqz p0, :cond_10

    .line 684
    .line 685
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 686
    .line 687
    :cond_10
    return-object v4

    .line 688
    :pswitch_c
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v0, Ljava/lang/String;

    .line 691
    .line 692
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 695
    .line 696
    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 697
    .line 698
    new-array v2, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 699
    .line 700
    new-instance v3, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 701
    .line 702
    const/4 v4, 0x2

    .line 703
    invoke-direct {v3, v4, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    invoke-static {v0, v1, v2, v3}, Lokhttp3/Handshake$Companion;->buildSerialDescriptor(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 707
    .line 708
    .line 709
    move-result-object p0

    .line 710
    return-object p0

    .line 711
    :pswitch_d
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lkotlinx/serialization/internal/EnumSerializer;

    .line 714
    .line 715
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast p0, Ljava/lang/String;

    .line 718
    .line 719
    new-instance v1, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 720
    .line 721
    iget-object v0, v0, Lkotlinx/serialization/internal/EnumSerializer;->values:[Ljava/lang/Enum;

    .line 722
    .line 723
    array-length v2, v0

    .line 724
    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    .line 725
    .line 726
    .line 727
    array-length p0, v0

    .line 728
    move v2, v3

    .line 729
    :goto_d
    if-ge v2, p0, :cond_11

    .line 730
    .line 731
    aget-object v4, v0, v2

    .line 732
    .line 733
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 738
    .line 739
    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 741
    .line 742
    goto :goto_d

    .line 743
    :cond_11
    return-object v1

    .line 744
    :pswitch_e
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 747
    .line 748
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast p0, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 751
    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    const-string v2, "Only found "

    .line 755
    .line 756
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 760
    .line 761
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v0, " digits in a row, but need to parse "

    .line 765
    .line 766
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {p0}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->getWhatThisExpects()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object p0

    .line 773
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    return-object p0

    .line 781
    :pswitch_f
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v0, Ljava/lang/String;

    .line 784
    .line 785
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast p0, Lkotlinx/serialization/SealedClassSerializer;

    .line 788
    .line 789
    sget-object v1, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE$1:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 790
    .line 791
    new-array v2, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 792
    .line 793
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;

    .line 794
    .line 795
    invoke-direct {v4, p0, v3}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    .line 796
    .line 797
    .line 798
    invoke-static {v0, v1, v2, v4}, Lokhttp3/Handshake$Companion;->buildSerialDescriptor(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 799
    .line 800
    .line 801
    move-result-object p0

    .line 802
    return-object p0

    .line 803
    :pswitch_data_0
    .packed-switch 0x0
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
