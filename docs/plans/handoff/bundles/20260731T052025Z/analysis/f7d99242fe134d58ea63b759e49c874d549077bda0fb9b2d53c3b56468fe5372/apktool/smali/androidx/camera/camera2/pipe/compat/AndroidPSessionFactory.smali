.class public final Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field public final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 15
    .line 16
    iget v3, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    move v8, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v6, 0x1

    .line 25
    if-ne v3, v6, :cond_1

    .line 26
    .line 27
    move v8, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v6, 0x2

    .line 30
    if-eq v3, v6, :cond_9

    .line 31
    .line 32
    move v8, v3

    .line 33
    :goto_0
    iget-object v3, v0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 34
    .line 35
    move-object/from16 v6, p2

    .line 36
    .line 37
    invoke-static {v2, v3, v6}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v10, v3, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    sget-object v15, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 48
    .line 49
    const-string v7, "CXCP"

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Failed to create OutputConfigurations for "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 71
    .line 72
    .line 73
    return-object v15

    .line 74
    :cond_2
    iget-object v6, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    new-instance v9, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v11, 0xa

    .line 81
    .line 82
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-eqz v11, :cond_4

    .line 98
    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    check-cast v11, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 104
    .line 105
    iget-object v11, v11, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 106
    .line 107
    iget-object v11, v11, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 114
    .line 115
    new-instance v12, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 116
    .line 117
    iget-object v13, v11, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 118
    .line 119
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    iget-object v14, v11, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 124
    .line 125
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    iget v11, v11, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 130
    .line 131
    invoke-direct {v12, v13, v14, v11}, Landroidx/camera/camera2/pipe/compat/InputConfigData;-><init>(III)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move-object v9, v4

    .line 139
    :cond_4
    if-eqz v9, :cond_7

    .line 140
    .line 141
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_7

    .line 157
    .line 158
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    check-cast v11, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 163
    .line 164
    iget v11, v11, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    .line 165
    .line 166
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    check-cast v12, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 171
    .line 172
    iget v12, v12, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    .line 173
    .line 174
    if-ne v11, v12, :cond_6

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    const-string v0, "All InputStream.Config objects must have the same format for multi resolution"

    .line 178
    .line 179
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v4

    .line 183
    :cond_7
    :goto_3
    move-object v4, v7

    .line 184
    new-instance v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    .line 185
    .line 186
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 187
    .line 188
    iget-object v0, v0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor:Lkotlin/SynchronizedLazyImpl;

    .line 189
    .line 190
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object v11, v0

    .line 195
    check-cast v11, Ljava/util/concurrent/Executor;

    .line 196
    .line 197
    iget v13, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 198
    .line 199
    iget-object v14, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 200
    .line 201
    move-object/from16 v12, p3

    .line 202
    .line 203
    invoke-direct/range {v7 .. v14}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;ILjava/util/Map;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v1, v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_8

    .line 211
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Failed to create capture session from "

    .line 215
    .line 216
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, " for "

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-object/from16 v12, p3

    .line 228
    .line 229
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const/16 v1, 0x21

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 245
    .line 246
    .line 247
    return-object v15

    .line 248
    :cond_8
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 249
    .line 250
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/LinkedHashMap;

    .line 251
    .line 252
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/LinkedHashMap;

    .line 253
    .line 254
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_9
    iget v0, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 259
    .line 260
    invoke-static {v0}, Landroidx/sqlite/SQLite;->toString-impl(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v1, "Unsupported session mode: "

    .line 265
    .line 266
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v4
.end method
