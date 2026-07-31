.class public final Landroidx/camera/camera2/pipe/graph/Controller3A;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final aeUnlockedStateList:Ljava/util/List;

.field public static final afUnlockedStateList:Ljava/util/List;

.field public static final awbUnlockedStateList:Ljava/util/List;

.field public static final deferredResult3ASubmitFailed:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public static final parameterForAfTriggerCancel:Ljava/util/Map;


# instance fields
.field public final graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

.field public final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public final graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

.field public lastUpdate3AResult:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x3

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-array v6, v4, [Ljava/lang/Integer;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    aput-object v1, v6, v7

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    aput-object v3, v6, v8

    .line 23
    .line 24
    aput-object v5, v6, v0

    .line 25
    .line 26
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    new-array v6, v0, [Ljava/lang/Integer;

    .line 30
    .line 31
    aput-object v1, v6, v7

    .line 32
    .line 33
    aput-object v5, v6, v8

    .line 34
    .line 35
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x6

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v9, 0x5

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    new-array v11, v2, [Ljava/lang/Integer;

    .line 49
    .line 50
    aput-object v1, v11, v7

    .line 51
    .line 52
    aput-object v6, v11, v8

    .line 53
    .line 54
    aput-object v3, v11, v0

    .line 55
    .line 56
    aput-object v10, v11, v4

    .line 57
    .line 58
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    new-array v11, v0, [Ljava/lang/Integer;

    .line 68
    .line 69
    aput-object v3, v11, v7

    .line 70
    .line 71
    aput-object v10, v11, v8

    .line 72
    .line 73
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    new-array v10, v4, [Ljava/lang/Integer;

    .line 77
    .line 78
    aput-object v1, v10, v7

    .line 79
    .line 80
    aput-object v3, v10, v8

    .line 81
    .line 82
    aput-object v5, v10, v0

    .line 83
    .line 84
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    new-array v10, v0, [Ljava/lang/Integer;

    .line 88
    .line 89
    aput-object v1, v10, v7

    .line 90
    .line 91
    aput-object v5, v10, v8

    .line 92
    .line 93
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 97
    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-static {v10, v11}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v10, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sput-object v12, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerCancel:Ljava/util/Map;

    .line 117
    .line 118
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 119
    .line 120
    invoke-static {v12, v11}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v13, Lkotlin/Pair;

    .line 128
    .line 129
    invoke-direct {v13, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v14, Lkotlin/Pair;

    .line 133
    .line 134
    invoke-direct {v14, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-array v15, v0, [Lkotlin/Pair;

    .line 138
    .line 139
    aput-object v13, v15, v7

    .line 140
    .line 141
    aput-object v14, v15, v8

    .line 142
    .line 143
    invoke-static {v15}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    new-instance v13, Landroidx/camera/camera2/pipe/Result3A;

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    invoke-direct {v13, v2, v14}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v13}, Lkotlinx/coroutines/JobKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    sput-object v13, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 157
    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    new-array v14, v2, [Ljava/lang/Integer;

    .line 163
    .line 164
    aput-object v13, v14, v7

    .line 165
    .line 166
    aput-object v11, v14, v8

    .line 167
    .line 168
    aput-object v1, v14, v0

    .line 169
    .line 170
    aput-object v3, v14, v4

    .line 171
    .line 172
    invoke-static {v14}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    sput-object v3, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeUnlockedStateList:Ljava/util/List;

    .line 177
    .line 178
    new-array v3, v9, [Ljava/lang/Integer;

    .line 179
    .line 180
    aput-object v13, v3, v7

    .line 181
    .line 182
    aput-object v5, v3, v8

    .line 183
    .line 184
    aput-object v11, v3, v0

    .line 185
    .line 186
    aput-object v1, v3, v4

    .line 187
    .line 188
    aput-object v6, v3, v2

    .line 189
    .line 190
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sput-object v2, Landroidx/camera/camera2/pipe/graph/Controller3A;->afUnlockedStateList:Ljava/util/List;

    .line 195
    .line 196
    new-array v3, v4, [Ljava/lang/Integer;

    .line 197
    .line 198
    aput-object v13, v3, v7

    .line 199
    .line 200
    aput-object v11, v3, v8

    .line 201
    .line 202
    aput-object v1, v3, v0

    .line 203
    .line 204
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    sput-object v3, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbUnlockedStateList:Ljava/util/List;

    .line 209
    .line 210
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 211
    .line 212
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    new-instance v5, Lkotlin/Pair;

    .line 222
    .line 223
    invoke-direct {v5, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    new-instance v6, Lkotlin/Pair;

    .line 227
    .line 228
    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    new-array v4, v0, [Lkotlin/Pair;

    .line 232
    .line 233
    aput-object v5, v4, v7

    .line 234
    .line 235
    aput-object v6, v4, v8

    .line 236
    .line 237
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-static {v12, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v3, Lkotlin/Pair;

    .line 257
    .line 258
    invoke-direct {v3, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Lkotlin/Pair;

    .line 262
    .line 263
    invoke-direct {v4, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    new-array v0, v0, [Lkotlin/Pair;

    .line 267
    .line 268
    aput-object v3, v0, v7

    .line 269
    .line 270
    aput-object v4, v0, v8

    .line 271
    .line 272
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 276
    .line 277
    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    new-instance v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    invoke-direct {v1, v7, v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 23
    .line 24
    return-void
.end method

.method public static update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x2

    .line 4
    .line 5
    const/4 v14, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v4, v14

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v4, p2

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v0, p8, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v5, v14

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v5, p3

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v0, p8, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    move-object v6, v14

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v6, p4

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v0, p8, 0x10

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    move-object v7, v14

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v7, p5

    .line 35
    .line 36
    :goto_3
    and-int/lit8 v0, p8, 0x20

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    move-object v8, v14

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v8, p6

    .line 43
    .line 44
    :goto_4
    and-int/lit8 v0, p8, 0x40

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    move-object v9, v14

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move-object/from16 v9, p7

    .line 51
    .line 52
    :goto_5
    const-string v0, "Controller3A#update3A: cancelling previous request "

    .line 53
    .line 54
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 55
    .line 56
    iget-object v2, v2, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_6

    .line 63
    .line 64
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const/16 v13, 0x380

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    move-object/from16 v3, p1

    .line 72
    .line 73
    invoke-static/range {v2 .. v13}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->update3AParameters(Ljava/util/LinkedHashMap;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_6
    move-object/from16 v3, p1

    .line 91
    .line 92
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .line 96
    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    iget v10, v3, Landroidx/camera/camera2/pipe/AeMode;->value:I

    .line 100
    .line 101
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Ljava/util/List;

    .line 119
    .line 120
    :cond_7
    if-eqz v4, :cond_8

    .line 121
    .line 122
    iget v10, v4, Landroidx/camera/camera2/pipe/AfMode;->value:I

    .line 123
    .line 124
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 125
    .line 126
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Ljava/util/List;

    .line 142
    .line 143
    :cond_8
    if-eqz v5, :cond_9

    .line 144
    .line 145
    iget v10, v5, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    .line 146
    .line 147
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Ljava/util/List;

    .line 165
    .line 166
    :cond_9
    if-eqz v6, :cond_a

    .line 167
    .line 168
    iget v10, v6, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    .line 169
    .line 170
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    check-cast v10, Ljava/util/List;

    .line 188
    .line 189
    :cond_a
    new-instance v15, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 190
    .line 191
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v10, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    invoke-direct {v10, v11, v2}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v15, v10, v14, v14}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object v2, v2, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    .line 211
    invoke-virtual {v2, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 215
    .line 216
    const/4 v12, 0x0

    .line 217
    const/16 v13, 0x380

    .line 218
    .line 219
    const/4 v10, 0x0

    .line 220
    const/4 v11, 0x0

    .line 221
    invoke-static/range {v2 .. v13}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 222
    .line 223
    .line 224
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 225
    .line 226
    iget-object v3, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 227
    .line 228
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/LinkedHashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->update3AParameters(Ljava/util/LinkedHashMap;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v15, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 236
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    const-string v3, "CXCP"

    .line 239
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 246
    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 258
    .line 259
    if-eqz v0, :cond_b

    .line 260
    .line 261
    const-string v3, "A newer call for 3A state update initiated."

    .line 262
    .line 263
    invoke-static {v3, v14}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    goto :goto_7

    .line 273
    :cond_b
    :goto_6
    iput-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lkotlinx/coroutines/CompletableDeferredImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .line 275
    monitor-exit p0

    .line 276
    return-object v2

    .line 277
    :goto_7
    monitor-exit p0

    .line 278
    throw v0
.end method
