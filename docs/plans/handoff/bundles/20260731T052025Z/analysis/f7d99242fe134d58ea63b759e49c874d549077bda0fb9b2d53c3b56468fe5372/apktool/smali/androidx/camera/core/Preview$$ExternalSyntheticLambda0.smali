.class public final synthetic Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$androidx$camera$core$ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda1()V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iput-object v1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->mPostedImage:Landroidx/camera/core/SingleCloseImageProxy;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->mCachedImage:Landroidx/camera/core/ImageProxy;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->mCachedImage:Landroidx/camera/core/ImageProxy;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->onValidImageAvailable(Landroidx/camera/core/ImageProxy;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method private final run$androidx$camera$lifecycle$LifecycleCameraProviderImpl$$ExternalSyntheticLambda0()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/camera/core/CameraX;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unbindAll()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ljava/util/HashSet;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    :try_start_0
    iget-object p0, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unregisterCamera(Landroidx/camera/lifecycle/LifecycleCamera;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v10, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 21
    .line 22
    const-string v0, "fetchFonts result is not OK. ("

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/work/Operation$State;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    monitor-exit v2

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v3, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 43
    .line 44
    if-ne v3, v7, :cond_1

    .line 45
    .line 46
    iget-object v4, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 49
    :try_start_2
    monitor-exit v4

    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 58
    .line 59
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 60
    .line 61
    sget-object v3, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Lokio/Path$Companion;

    .line 67
    .line 68
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-array v0, v8, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 74
    .line 75
    aput-object v2, v0, v10

    .line 76
    .line 77
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/work/Operation$State;

    .line 78
    .line 79
    const-string v4, "TypefaceCompat.createFromFontInfo"

    .line 80
    .line 81
    invoke-static {v4}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 86
    .line 87
    .line 88
    :try_start_5
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/work/Operation$State;

    .line 89
    .line 90
    invoke-virtual {v4, v3, v0, v10}, Landroidx/work/Operation$State;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 94
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 95
    .line 96
    .line 97
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 100
    .line 101
    invoke-static {v3, v2}, Landroidx/work/OperationKt;->mmap(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    :try_start_7
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 110
    .line 111
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v3, Lokhttp3/Dispatcher;

    .line 115
    .line 116
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->read(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-direct {v3, v0, v2}, Lokhttp3/Dispatcher;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 121
    .line 122
    .line 123
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 124
    .line 125
    .line 126
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 127
    .line 128
    .line 129
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 132
    :try_start_a
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/work/Operation$State;

    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroidx/work/Operation$State;->onLoaded(Lokhttp3/Dispatcher;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_3
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 143
    :try_start_b
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :goto_2
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 148
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 149
    :catchall_4
    move-exception v0

    .line 150
    :try_start_e
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 151
    .line 152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 157
    .line 158
    const-string v2, "Unable to open file."

    .line 159
    .line 160
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :catchall_5
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :catchall_6
    move-exception v0

    .line 167
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 171
    :goto_3
    :try_start_f
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 172
    .line 173
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    .line 178
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, ")"

    .line 188
    .line 189
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 200
    :goto_4
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v3

    .line 203
    :try_start_10
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/work/Operation$State;

    .line 204
    .line 205
    if-eqz v2, :cond_5

    .line 206
    .line 207
    invoke-virtual {v2, v0}, Landroidx/work/Operation$State;->onFailed(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :catchall_7
    move-exception v0

    .line 212
    goto :goto_7

    .line 213
    :cond_5
    :goto_5
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 214
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V

    .line 215
    .line 216
    .line 217
    :goto_6
    return-void

    .line 218
    :goto_7
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 219
    throw v0

    .line 220
    :goto_8
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 221
    throw v0

    .line 222
    :pswitch_0
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 225
    .line 226
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/fragment/app/Fragment$7;

    .line 227
    .line 228
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 231
    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    move v6, v10

    .line 243
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-ge v6, v11, :cond_14

    .line 248
    .line 249
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    check-cast v11, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 254
    .line 255
    if-nez v11, :cond_6

    .line 256
    .line 257
    goto/16 :goto_12

    .line 258
    .line 259
    :cond_6
    iget-object v12, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 260
    .line 261
    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Ljava/lang/Long;

    .line 266
    .line 267
    if-nez v13, :cond_7

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 271
    .line 272
    .line 273
    move-result-wide v13

    .line 274
    cmp-long v13, v13, v4

    .line 275
    .line 276
    if-gez v13, :cond_13

    .line 277
    .line 278
    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :goto_a
    iget-wide v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 282
    .line 283
    const-wide/16 v14, 0x0

    .line 284
    .line 285
    cmp-long v16, v12, v14

    .line 286
    .line 287
    if-nez v16, :cond_8

    .line 288
    .line 289
    iput-wide v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 290
    .line 291
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 292
    .line 293
    invoke-virtual {v11, v12}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_12

    .line 297
    .line 298
    :cond_8
    sub-long v12, v1, v12

    .line 299
    .line 300
    iput-wide v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 301
    .line 302
    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    iget v7, v7, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 307
    .line 308
    const/4 v14, 0x0

    .line 309
    cmpl-float v15, v7, v14

    .line 310
    .line 311
    if-nez v15, :cond_9

    .line 312
    .line 313
    const-wide/32 v12, 0x7fffffff

    .line 314
    .line 315
    .line 316
    :goto_b
    move-wide/from16 v24, v12

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_9
    long-to-float v12, v12

    .line 320
    div-float/2addr v12, v7

    .line 321
    float-to-long v12, v12

    .line 322
    goto :goto_b

    .line 323
    :goto_c
    iget-boolean v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 324
    .line 325
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 326
    .line 327
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 328
    .line 329
    .line 330
    if-eqz v7, :cond_b

    .line 331
    .line 332
    cmpl-float v7, v12, v13

    .line 333
    .line 334
    if-eqz v7, :cond_a

    .line 335
    .line 336
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 337
    .line 338
    float-to-double v8, v12

    .line 339
    iput-wide v8, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 340
    .line 341
    iput v13, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 342
    .line 343
    :cond_a
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 344
    .line 345
    iget-wide v7, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 346
    .line 347
    double-to-float v7, v7

    .line 348
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 349
    .line 350
    iput v14, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 351
    .line 352
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 353
    .line 354
    :goto_d
    const/4 v7, 0x1

    .line 355
    goto/16 :goto_f

    .line 356
    .line 357
    :cond_b
    cmpl-float v7, v12, v13

    .line 358
    .line 359
    iget-object v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 360
    .line 361
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 362
    .line 363
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 364
    .line 365
    if-eqz v7, :cond_c

    .line 366
    .line 367
    float-to-double v14, v9

    .line 368
    move-object/from16 v27, v8

    .line 369
    .line 370
    float-to-double v7, v12

    .line 371
    const-wide/16 v19, 0x2

    .line 372
    .line 373
    div-long v32, v24, v19

    .line 374
    .line 375
    move-wide/from16 v30, v7

    .line 376
    .line 377
    move-wide/from16 v28, v14

    .line 378
    .line 379
    invoke-virtual/range {v27 .. v33}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    iget-object v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 384
    .line 385
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 386
    .line 387
    float-to-double v14, v9

    .line 388
    iput-wide v14, v8, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 389
    .line 390
    iput v13, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 391
    .line 392
    iget v9, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 393
    .line 394
    float-to-double v12, v9

    .line 395
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 396
    .line 397
    float-to-double v14, v7

    .line 398
    move-object/from16 v34, v8

    .line 399
    .line 400
    move-wide/from16 v35, v12

    .line 401
    .line 402
    move-wide/from16 v37, v14

    .line 403
    .line 404
    move-wide/from16 v39, v32

    .line 405
    .line 406
    invoke-virtual/range {v34 .. v40}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    iget v8, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 411
    .line 412
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 413
    .line 414
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 415
    .line 416
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_c
    move-object/from16 v27, v8

    .line 420
    .line 421
    float-to-double v7, v9

    .line 422
    float-to-double v12, v12

    .line 423
    move-wide/from16 v20, v7

    .line 424
    .line 425
    move-wide/from16 v22, v12

    .line 426
    .line 427
    move-object/from16 v19, v27

    .line 428
    .line 429
    invoke-virtual/range {v19 .. v25}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    iget v8, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 434
    .line 435
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 436
    .line 437
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 438
    .line 439
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 440
    .line 441
    :goto_e
    iget v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 442
    .line 443
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 444
    .line 445
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 450
    .line 451
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 452
    .line 453
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 458
    .line 459
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 460
    .line 461
    iget-object v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 462
    .line 463
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    float-to-double v12, v8

    .line 471
    iget-wide v14, v9, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 472
    .line 473
    cmpg-double v8, v12, v14

    .line 474
    .line 475
    if-gez v8, :cond_d

    .line 476
    .line 477
    iget-wide v12, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 478
    .line 479
    double-to-float v8, v12

    .line 480
    sub-float/2addr v7, v8

    .line 481
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    float-to-double v7, v7

    .line 486
    iget-wide v12, v9, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 487
    .line 488
    cmpg-double v7, v7, v12

    .line 489
    .line 490
    if-gez v7, :cond_d

    .line 491
    .line 492
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 493
    .line 494
    iget-wide v7, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 495
    .line 496
    double-to-float v7, v7

    .line 497
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 498
    .line 499
    const/4 v7, 0x0

    .line 500
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 501
    .line 502
    goto/16 :goto_d

    .line 503
    .line 504
    :cond_d
    move v7, v10

    .line 505
    :goto_f
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 506
    .line 507
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 508
    .line 509
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 514
    .line 515
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 516
    .line 517
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 522
    .line 523
    invoke-virtual {v11, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 524
    .line 525
    .line 526
    if-eqz v7, :cond_13

    .line 527
    .line 528
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 529
    .line 530
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 531
    .line 532
    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    iget-object v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 537
    .line 538
    invoke-virtual {v9, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    iget-object v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 544
    .line 545
    .line 546
    move-result v12

    .line 547
    if-ltz v12, :cond_e

    .line 548
    .line 549
    const/4 v15, 0x0

    .line 550
    invoke-virtual {v9, v12, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    const/4 v9, 0x1

    .line 554
    iput-boolean v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 555
    .line 556
    :cond_e
    const-wide/16 v8, 0x0

    .line 557
    .line 558
    iput-wide v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 559
    .line 560
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 561
    .line 562
    move v8, v10

    .line 563
    :goto_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    if-ge v8, v9, :cond_11

    .line 568
    .line 569
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v9

    .line 573
    if-eqz v9, :cond_10

    .line 574
    .line 575
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    check-cast v0, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;

    .line 580
    .line 581
    iget v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 582
    .line 583
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    const/high16 v0, 0x3f800000    # 1.0f

    .line 587
    .line 588
    cmpg-float v0, v1, v0

    .line 589
    .line 590
    if-gez v0, :cond_f

    .line 591
    .line 592
    const/4 v15, 0x0

    .line 593
    throw v15

    .line 594
    :cond_f
    const/4 v15, 0x0

    .line 595
    throw v15

    .line 596
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 597
    .line 598
    goto :goto_10

    .line 599
    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    const/16 v26, 0x1

    .line 604
    .line 605
    add-int/lit8 v8, v8, -0x1

    .line 606
    .line 607
    :goto_11
    if-ltz v8, :cond_13

    .line 608
    .line 609
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    if-nez v9, :cond_12

    .line 614
    .line 615
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    :cond_12
    add-int/lit8 v8, v8, -0x1

    .line 619
    .line 620
    goto :goto_11

    .line 621
    :cond_13
    :goto_12
    add-int/lit8 v6, v6, 0x1

    .line 622
    .line 623
    const/4 v7, 0x2

    .line 624
    const/4 v8, 0x1

    .line 625
    goto/16 :goto_9

    .line 626
    .line 627
    :cond_14
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 628
    .line 629
    if-eqz v1, :cond_18

    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    const/16 v26, 0x1

    .line 636
    .line 637
    add-int/lit8 v1, v1, -0x1

    .line 638
    .line 639
    :goto_13
    if-ltz v1, :cond_16

    .line 640
    .line 641
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    if-nez v2, :cond_15

    .line 646
    .line 647
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    :cond_15
    add-int/lit8 v1, v1, -0x1

    .line 651
    .line 652
    goto :goto_13

    .line 653
    :cond_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v1, :cond_17

    .line 658
    .line 659
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 660
    .line 661
    const/16 v2, 0x21

    .line 662
    .line 663
    if-lt v1, v2, :cond_17

    .line 664
    .line 665
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 666
    .line 667
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->unregister()Z

    .line 668
    .line 669
    .line 670
    :cond_17
    iput-boolean v10, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 671
    .line 672
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-lez v1, :cond_19

    .line 677
    .line 678
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/compose/ui/platform/WeakCache;

    .line 679
    .line 680
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 681
    .line 682
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v1, Landroid/view/Choreographer;

    .line 685
    .line 686
    new-instance v2, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;

    .line 687
    .line 688
    const/4 v3, 0x2

    .line 689
    invoke-direct {v2, v3, v0}, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Runnable;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 693
    .line 694
    .line 695
    :cond_19
    return-void

    .line 696
    :pswitch_1
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v0, Landroidx/core/view/insets/SystemBarStateMonitor;

    .line 699
    .line 700
    iget-object v0, v0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroidx/core/view/insets/SystemBarStateMonitor$1;

    .line 701
    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 707
    .line 708
    if-eqz v2, :cond_1a

    .line 709
    .line 710
    check-cast v1, Landroid/view/ViewGroup;

    .line 711
    .line 712
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 713
    .line 714
    .line 715
    :cond_1a
    return-void

    .line 716
    :pswitch_2
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v0, Landroid/view/View;

    .line 719
    .line 720
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    const-string v2, "input_method"

    .line 725
    .line 726
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 731
    .line 732
    invoke-virtual {v1, v0, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 733
    .line 734
    .line 735
    return-void

    .line 736
    :pswitch_3
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 737
    .line 738
    move-object v1, v0

    .line 739
    check-cast v1, Landroid/app/Activity;

    .line 740
    .line 741
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-nez v0, :cond_24

    .line 746
    .line 747
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    .line 748
    .line 749
    sget-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 750
    .line 751
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 752
    .line 753
    const/16 v7, 0x1c

    .line 754
    .line 755
    if-lt v3, v7, :cond_1b

    .line 756
    .line 757
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_19

    .line 761
    .line 762
    :cond_1b
    const/16 v7, 0x1b

    .line 763
    .line 764
    const/16 v8, 0x1a

    .line 765
    .line 766
    if-eq v3, v8, :cond_1c

    .line 767
    .line 768
    if-ne v3, v7, :cond_1d

    .line 769
    .line 770
    :cond_1c
    if-nez v0, :cond_1d

    .line 771
    .line 772
    goto/16 :goto_18

    .line 773
    .line 774
    :cond_1d
    sget-object v9, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 775
    .line 776
    if-nez v9, :cond_1e

    .line 777
    .line 778
    sget-object v9, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 779
    .line 780
    if-nez v9, :cond_1e

    .line 781
    .line 782
    goto/16 :goto_18

    .line 783
    .line 784
    :cond_1e
    :try_start_13
    sget-object v9, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    .line 785
    .line 786
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v9

    .line 790
    if-nez v9, :cond_1f

    .line 791
    .line 792
    goto :goto_18

    .line 793
    :cond_1f
    sget-object v11, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    .line 794
    .line 795
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v11

    .line 799
    if-nez v11, :cond_20

    .line 800
    .line 801
    goto :goto_18

    .line 802
    :cond_20
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 803
    .line 804
    .line 805
    move-result-object v12

    .line 806
    new-instance v13, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 807
    .line 808
    invoke-direct {v13, v1}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v12, v13}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 812
    .line 813
    .line 814
    new-instance v14, Landroidx/core/app/ActivityRecreator$1;

    .line 815
    .line 816
    invoke-direct {v14, v10, v13, v9}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 820
    .line 821
    .line 822
    if-eq v3, v8, :cond_22

    .line 823
    .line 824
    if-ne v3, v7, :cond_21

    .line 825
    .line 826
    goto :goto_14

    .line 827
    :cond_21
    move v3, v10

    .line 828
    goto :goto_15

    .line 829
    :cond_22
    :goto_14
    const/4 v3, 0x1

    .line 830
    :goto_15
    const/4 v7, 0x4

    .line 831
    if-eqz v3, :cond_23

    .line 832
    .line 833
    :try_start_14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    const/16 v8, 0x9

    .line 838
    .line 839
    new-array v8, v8, [Ljava/lang/Object;

    .line 840
    .line 841
    aput-object v9, v8, v10

    .line 842
    .line 843
    const/4 v15, 0x0

    .line 844
    const/16 v26, 0x1

    .line 845
    .line 846
    aput-object v15, v8, v26

    .line 847
    .line 848
    const/16 v16, 0x2

    .line 849
    .line 850
    aput-object v15, v8, v16

    .line 851
    .line 852
    aput-object v3, v8, v6

    .line 853
    .line 854
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 855
    .line 856
    aput-object v3, v8, v7

    .line 857
    .line 858
    const/4 v6, 0x5

    .line 859
    aput-object v15, v8, v6

    .line 860
    .line 861
    const/4 v6, 0x6

    .line 862
    aput-object v15, v8, v6

    .line 863
    .line 864
    aput-object v3, v8, v5

    .line 865
    .line 866
    aput-object v3, v8, v4

    .line 867
    .line 868
    invoke-virtual {v0, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    goto :goto_16

    .line 872
    :catchall_8
    move-exception v0

    .line 873
    goto :goto_17

    .line 874
    :cond_23
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 875
    .line 876
    .line 877
    :goto_16
    :try_start_15
    new-instance v0, Landroidx/core/app/ActivityRecreator$1;

    .line 878
    .line 879
    invoke-direct {v0, v7, v12, v13, v10}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    .line 884
    .line 885
    goto :goto_19

    .line 886
    :goto_17
    new-instance v3, Landroidx/core/app/ActivityRecreator$1;

    .line 887
    .line 888
    invoke-direct {v3, v7, v12, v13, v10}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 892
    .line 893
    .line 894
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 895
    :catchall_9
    :goto_18
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 896
    .line 897
    .line 898
    :cond_24
    :goto_19
    return-void

    .line 899
    :pswitch_4
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 902
    .line 903
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/core/view/MenuHostHelper;

    .line 904
    .line 905
    const/4 v15, 0x0

    .line 906
    iput-object v15, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->frameCallback:Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 907
    .line 908
    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandQueue:Landroidx/compose/runtime/collection/MutableVector;

    .line 909
    .line 910
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 911
    .line 912
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    if-nez v3, :cond_25

    .line 917
    .line 918
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    if-eqz v0, :cond_25

    .line 927
    .line 928
    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 929
    .line 930
    .line 931
    move-result v0

    .line 932
    const/4 v9, 0x1

    .line 933
    if-ne v0, v9, :cond_25

    .line 934
    .line 935
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 936
    .line 937
    .line 938
    goto/16 :goto_20

    .line 939
    .line 940
    :cond_25
    iget-object v0, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 941
    .line 942
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 943
    .line 944
    move v4, v10

    .line 945
    const/4 v9, 0x0

    .line 946
    const/4 v15, 0x0

    .line 947
    :goto_1a
    if-ge v4, v3, :cond_2c

    .line 948
    .line 949
    aget-object v5, v0, v4

    .line 950
    .line 951
    check-cast v5, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 952
    .line 953
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 954
    .line 955
    .line 956
    move-result v7

    .line 957
    if-eqz v7, :cond_2a

    .line 958
    .line 959
    const/4 v8, 0x1

    .line 960
    if-eq v7, v8, :cond_29

    .line 961
    .line 962
    const/4 v8, 0x2

    .line 963
    if-eq v7, v8, :cond_27

    .line 964
    .line 965
    if-ne v7, v6, :cond_26

    .line 966
    .line 967
    goto :goto_1b

    .line 968
    :cond_26
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_20

    .line 972
    .line 973
    :cond_27
    :goto_1b
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 974
    .line 975
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v7

    .line 979
    if-nez v7, :cond_2b

    .line 980
    .line 981
    sget-object v7, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->ShowKeyboard:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 982
    .line 983
    if-ne v5, v7, :cond_28

    .line 984
    .line 985
    const/4 v5, 0x1

    .line 986
    goto :goto_1c

    .line 987
    :cond_28
    move v5, v10

    .line 988
    :goto_1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 989
    .line 990
    .line 991
    move-result-object v5

    .line 992
    move-object v15, v5

    .line 993
    goto :goto_1e

    .line 994
    :cond_29
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 995
    .line 996
    :goto_1d
    move-object v9, v5

    .line 997
    move-object v15, v9

    .line 998
    goto :goto_1e

    .line 999
    :cond_2a
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1000
    .line 1001
    goto :goto_1d

    .line 1002
    :cond_2b
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    .line 1003
    .line 1004
    goto :goto_1a

    .line 1005
    :cond_2c
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 1006
    .line 1007
    .line 1008
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1009
    .line 1010
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    if-eqz v0, :cond_2d

    .line 1015
    .line 1016
    iget-object v0, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v0, Lkotlin/Lazy;

    .line 1019
    .line 1020
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1025
    .line 1026
    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 1027
    .line 1028
    check-cast v2, Landroid/view/View;

    .line 1029
    .line 1030
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1031
    .line 1032
    .line 1033
    :cond_2d
    if-eqz v15, :cond_2f

    .line 1034
    .line 1035
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v0

    .line 1039
    if-eqz v0, :cond_2e

    .line 1040
    .line 1041
    iget-object v0, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1042
    .line 1043
    check-cast v0, Landroidx/fragment/app/Fragment$7;

    .line 1044
    .line 1045
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 1046
    .line 1047
    check-cast v0, Landroidx/fragment/app/Fragment$7;

    .line 1048
    .line 1049
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->show()V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_1f

    .line 1053
    :cond_2e
    iget-object v0, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v0, Landroidx/fragment/app/Fragment$7;

    .line 1056
    .line 1057
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 1058
    .line 1059
    check-cast v0, Landroidx/fragment/app/Fragment$7;

    .line 1060
    .line 1061
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->hide()V

    .line 1062
    .line 1063
    .line 1064
    :cond_2f
    :goto_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1065
    .line 1066
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    if-eqz v0, :cond_30

    .line 1071
    .line 1072
    iget-object v0, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 1073
    .line 1074
    check-cast v0, Lkotlin/Lazy;

    .line 1075
    .line 1076
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1081
    .line 1082
    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast v1, Landroid/view/View;

    .line 1085
    .line 1086
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1087
    .line 1088
    .line 1089
    :cond_30
    :goto_20
    return-void

    .line 1090
    :pswitch_5
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 1093
    .line 1094
    const-string v1, "measureAndLayout"

    .line 1095
    .line 1096
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    :try_start_16
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1100
    .line 1101
    const/4 v9, 0x1

    .line 1102
    invoke-virtual {v1, v9}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 1103
    .line 1104
    .line 1105
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1106
    .line 1107
    .line 1108
    const-string v1, "checkForSemanticsChanges"

    .line 1109
    .line 1110
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    :try_start_17
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1114
    .line 1115
    .line 1116
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1117
    .line 1118
    .line 1119
    iput-boolean v10, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 1120
    .line 1121
    return-void

    .line 1122
    :catchall_a
    move-exception v0

    .line 1123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :catchall_b
    move-exception v0

    .line 1128
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1129
    .line 1130
    .line 1131
    throw v0

    .line 1132
    :pswitch_6
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 1135
    .line 1136
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->attachedToWindow()V

    .line 1137
    .line 1138
    .line 1139
    return-void

    .line 1140
    :pswitch_7
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui()Z

    .line 1145
    .line 1146
    .line 1147
    move-result v1

    .line 1148
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1149
    .line 1150
    if-nez v1, :cond_31

    .line 1151
    .line 1152
    goto/16 :goto_24

    .line 1153
    .line 1154
    :cond_31
    const-string v1, "ContentCapture:changeChecker"

    .line 1155
    .line 1156
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    const/4 v9, 0x1

    .line 1160
    :try_start_18
    invoke-virtual {v2, v9}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    .line 1161
    .line 1162
    .line 1163
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 1164
    .line 1165
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 1166
    .line 1167
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 1168
    .line 1169
    array-length v6, v1

    .line 1170
    const/16 v16, 0x2

    .line 1171
    .line 1172
    add-int/lit8 v6, v6, -0x2

    .line 1173
    .line 1174
    if-ltz v6, :cond_35

    .line 1175
    .line 1176
    move v7, v10

    .line 1177
    :goto_21
    aget-wide v8, v1, v7

    .line 1178
    .line 1179
    not-long v11, v8

    .line 1180
    shl-long/2addr v11, v5

    .line 1181
    and-long/2addr v11, v8

    .line 1182
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    and-long/2addr v11, v13

    .line 1188
    cmp-long v11, v11, v13

    .line 1189
    .line 1190
    if-eqz v11, :cond_34

    .line 1191
    .line 1192
    sub-int v11, v7, v6

    .line 1193
    .line 1194
    not-int v11, v11

    .line 1195
    ushr-int/lit8 v11, v11, 0x1f

    .line 1196
    .line 1197
    rsub-int/lit8 v11, v11, 0x8

    .line 1198
    .line 1199
    move v12, v10

    .line 1200
    :goto_22
    if-ge v12, v11, :cond_33

    .line 1201
    .line 1202
    const-wide/16 v13, 0xff

    .line 1203
    .line 1204
    and-long/2addr v13, v8

    .line 1205
    const-wide/16 v15, 0x80

    .line 1206
    .line 1207
    cmp-long v13, v13, v15

    .line 1208
    .line 1209
    if-gez v13, :cond_32

    .line 1210
    .line 1211
    shl-int/lit8 v13, v7, 0x3

    .line 1212
    .line 1213
    add-int/2addr v13, v12

    .line 1214
    aget v15, v3, v13

    .line 1215
    .line 1216
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v13

    .line 1220
    invoke-virtual {v13, v15}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v13

    .line 1224
    if-nez v13, :cond_32

    .line 1225
    .line 1226
    iget-object v13, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    .line 1227
    .line 1228
    new-instance v14, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    .line 1229
    .line 1230
    move/from16 p0, v6

    .line 1231
    .line 1232
    iget-wide v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    .line 1233
    .line 1234
    sget-object v18, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_DISAPPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    .line 1235
    .line 1236
    const/16 v19, 0x0

    .line 1237
    .line 1238
    move-wide/from16 v16, v5

    .line 1239
    .line 1240
    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/camera/view/PreviewView$1;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1247
    .line 1248
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1249
    .line 1250
    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    goto :goto_23

    .line 1254
    :cond_32
    move/from16 p0, v6

    .line 1255
    .line 1256
    :goto_23
    shr-long/2addr v8, v4

    .line 1257
    add-int/lit8 v12, v12, 0x1

    .line 1258
    .line 1259
    const/4 v5, 0x7

    .line 1260
    move/from16 v6, p0

    .line 1261
    .line 1262
    goto :goto_22

    .line 1263
    :cond_33
    move/from16 p0, v6

    .line 1264
    .line 1265
    if-ne v11, v4, :cond_35

    .line 1266
    .line 1267
    move/from16 v6, p0

    .line 1268
    .line 1269
    :cond_34
    if-eq v7, v6, :cond_35

    .line 1270
    .line 1271
    add-int/lit8 v7, v7, 0x1

    .line 1272
    .line 1273
    const/4 v5, 0x7

    .line 1274
    goto :goto_21

    .line 1275
    :cond_35
    const-string v1, "ContentCapture:sendAppearEvents"

    .line 1276
    .line 1277
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 1278
    .line 1279
    .line 1280
    :try_start_19
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v1

    .line 1284
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v1

    .line 1288
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 1289
    .line 1290
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1291
    .line 1292
    .line 1293
    :try_start_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-virtual {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkForContentCapturePropertyChanges(Landroidx/collection/IntObjectMap;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateSemanticsCopy()V

    .line 1304
    .line 1305
    .line 1306
    iput-boolean v10, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 1307
    .line 1308
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1309
    .line 1310
    .line 1311
    :goto_24
    return-void

    .line 1312
    :catchall_c
    move-exception v0

    .line 1313
    :try_start_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1314
    .line 1315
    .line 1316
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 1317
    :catchall_d
    move-exception v0

    .line 1318
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1319
    .line 1320
    .line 1321
    throw v0

    .line 1322
    :pswitch_8
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1323
    .line 1324
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 1325
    .line 1326
    invoke-static {v0}, Landroidx/compose/material/ripple/RippleHostView;->$r8$lambda$1-ekBTR8n6pqldXkOecN8lq5XRQ(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 1327
    .line 1328
    .line 1329
    return-void

    .line 1330
    :pswitch_9
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 1333
    .line 1334
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 1335
    .line 1336
    if-eqz v0, :cond_36

    .line 1337
    .line 1338
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1339
    .line 1340
    .line 1341
    :cond_36
    return-void

    .line 1342
    :pswitch_a
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1343
    .line 1344
    check-cast v0, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 1345
    .line 1346
    invoke-virtual {v0}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;->onSurfaceNotInUse()V

    .line 1347
    .line 1348
    .line 1349
    return-void

    .line 1350
    :pswitch_b
    invoke-direct {v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->run$androidx$camera$lifecycle$LifecycleCameraProviderImpl$$ExternalSyntheticLambda0()V

    .line 1351
    .line 1352
    .line 1353
    return-void

    .line 1354
    :pswitch_c
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1355
    .line 1356
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 1357
    .line 1358
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 1359
    .line 1360
    check-cast v0, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 1361
    .line 1362
    if-eqz v0, :cond_37

    .line 1363
    .line 1364
    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v1

    .line 1376
    if-eqz v1, :cond_37

    .line 1377
    .line 1378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v1

    .line 1382
    check-cast v1, Landroidx/camera/core/processing/SurfaceEdge;

    .line 1383
    .line 1384
    invoke-virtual {v1}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 1385
    .line 1386
    .line 1387
    goto :goto_25

    .line 1388
    :cond_37
    return-void

    .line 1389
    :pswitch_d
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1390
    .line 1391
    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 1392
    .line 1393
    const/4 v9, 0x1

    .line 1394
    iput-boolean v9, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mIsReleased:Z

    .line 1395
    .line 1396
    invoke-virtual {v0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->checkReadyToRelease$1()V

    .line 1397
    .line 1398
    .line 1399
    return-void

    .line 1400
    :pswitch_e
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1401
    .line 1402
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 1403
    .line 1404
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1405
    .line 1406
    check-cast v0, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 1407
    .line 1408
    if-eqz v0, :cond_38

    .line 1409
    .line 1410
    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1419
    .line 1420
    .line 1421
    move-result v1

    .line 1422
    if-eqz v1, :cond_38

    .line 1423
    .line 1424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v1

    .line 1428
    check-cast v1, Landroidx/camera/core/processing/SurfaceEdge;

    .line 1429
    .line 1430
    invoke-virtual {v1}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_26

    .line 1434
    :cond_38
    return-void

    .line 1435
    :pswitch_f
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1436
    .line 1437
    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 1438
    .line 1439
    const/4 v9, 0x1

    .line 1440
    iput-boolean v9, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 1441
    .line 1442
    invoke-virtual {v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->checkReadyToRelease()V

    .line 1443
    .line 1444
    .line 1445
    return-void

    .line 1446
    :pswitch_10
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1447
    .line 1448
    check-cast v0, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 1449
    .line 1450
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->close()V

    .line 1451
    .line 1452
    .line 1453
    return-void

    .line 1454
    :pswitch_11
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    .line 1457
    .line 1458
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->issueNextRequest()V

    .line 1459
    .line 1460
    .line 1461
    return-void

    .line 1462
    :pswitch_12
    invoke-direct {v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->run$androidx$camera$core$ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda1()V

    .line 1463
    .line 1464
    .line 1465
    return-void

    .line 1466
    :pswitch_13
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1467
    .line 1468
    check-cast v0, Ljava/lang/Runnable;

    .line 1469
    .line 1470
    const/4 v1, -0x3

    .line 1471
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1472
    .line 1473
    .line 1474
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1475
    .line 1476
    .line 1477
    return-void

    .line 1478
    :pswitch_14
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1479
    .line 1480
    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 1481
    .line 1482
    new-instance v1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 1483
    .line 1484
    const/16 v2, 0xc

    .line 1485
    .line 1486
    const/4 v15, 0x0

    .line 1487
    invoke-direct {v1, v0, v15, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    return-void

    .line 1494
    :pswitch_15
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1495
    .line 1496
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 1497
    .line 1498
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1499
    .line 1500
    .line 1501
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1502
    .line 1503
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1504
    .line 1505
    .line 1506
    return-void

    .line 1507
    :pswitch_16
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1508
    .line 1509
    check-cast v0, Landroid/os/HandlerThread;

    .line 1510
    .line 1511
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1512
    .line 1513
    .line 1514
    const-wide/16 v1, 0x3e8

    .line 1515
    .line 1516
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 1517
    .line 1518
    .line 1519
    return-void

    .line 1520
    :pswitch_17
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1521
    .line 1522
    check-cast v0, Ljava/util/ArrayList;

    .line 1523
    .line 1524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v1

    .line 1528
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1529
    .line 1530
    .line 1531
    move-result v4

    .line 1532
    if-eqz v4, :cond_39

    .line 1533
    .line 1534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v4

    .line 1538
    check-cast v4, Ljava/util/concurrent/ExecutorService;

    .line 1539
    .line 1540
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1541
    .line 1542
    .line 1543
    goto :goto_27

    .line 1544
    :cond_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1549
    .line 1550
    .line 1551
    move-result v1

    .line 1552
    if-eqz v1, :cond_3a

    .line 1553
    .line 1554
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 1559
    .line 1560
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1561
    .line 1562
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1563
    .line 1564
    .line 1565
    goto :goto_28

    .line 1566
    :cond_3a
    return-void

    .line 1567
    :pswitch_18
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1568
    .line 1569
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 1570
    .line 1571
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 1572
    .line 1573
    const/4 v15, 0x0

    .line 1574
    invoke-static {v0, v15}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 1575
    .line 1576
    .line 1577
    return-void

    .line 1578
    :pswitch_19
    const/4 v15, 0x0

    .line 1579
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1580
    .line 1581
    check-cast v0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 1582
    .line 1583
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 1584
    .line 1585
    invoke-static {v0, v15}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 1586
    .line 1587
    .line 1588
    return-void

    .line 1589
    :pswitch_1a
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1590
    .line 1591
    check-cast v0, Landroidx/activity/ComponentDialog;

    .line 1592
    .line 1593
    invoke-static {v0}, Landroidx/activity/ComponentDialog;->$r8$lambda$XxpmZzi8FNPM2sJJA30VCt2mBcQ(Landroidx/activity/ComponentDialog;)V

    .line 1594
    .line 1595
    .line 1596
    return-void

    .line 1597
    :pswitch_1b
    const/4 v15, 0x0

    .line 1598
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1599
    .line 1600
    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 1601
    .line 1602
    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1603
    .line 1604
    if-eqz v1, :cond_3b

    .line 1605
    .line 1606
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1607
    .line 1608
    .line 1609
    iput-object v15, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 1610
    .line 1611
    :cond_3b
    return-void

    .line 1612
    :pswitch_1c
    iget-object v0, v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1613
    .line 1614
    check-cast v0, Landroidx/camera/core/Preview;

    .line 1615
    .line 1616
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 1617
    .line 1618
    .line 1619
    return-void

    .line 1620
    nop

    .line 1621
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
