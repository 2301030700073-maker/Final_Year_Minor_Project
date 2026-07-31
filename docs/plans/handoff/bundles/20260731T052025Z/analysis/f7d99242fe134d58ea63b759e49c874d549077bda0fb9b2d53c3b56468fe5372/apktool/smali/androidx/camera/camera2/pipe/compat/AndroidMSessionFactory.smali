.class public final Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p4, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 30
    .line 31
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 4
    .line 5
    const/16 v2, 0x21

    .line 6
    .line 7
    const-string v3, " for "

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 12
    .line 13
    const-string v5, "CXCP"

    .line 14
    .line 15
    sget-object v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v4, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p2, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p2, "Failed to create OutputConfigurations for "

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p0, :cond_1

    .line 65
    .line 66
    invoke-interface {p1, v0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSessionByOutputConfigurations(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 76
    .line 77
    iget-object p0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 78
    .line 79
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 86
    .line 87
    new-instance v4, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 88
    .line 89
    iget-object v7, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 90
    .line 91
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget-object v8, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 102
    .line 103
    invoke-direct {v4, v7, v8, p0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;-><init>(III)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v4, v0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    :goto_0
    if-nez p0, :cond_2

    .line 111
    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p2, "Failed to create capture session from "

    .line 115
    .line 116
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    new-instance v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 143
    .line 144
    iget-object p0, p2, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-direct {v6, v1, p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object v6

    .line 150
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 151
    .line 152
    if-eqz p0, :cond_4

    .line 153
    .line 154
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 159
    .line 160
    iget-object p0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 163
    .line 164
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 169
    .line 170
    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 171
    .line 172
    iget-object v7, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    iget-object v8, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 179
    .line 180
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 185
    .line 186
    invoke-direct {v0, v7, v8, p0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 187
    .line 188
    .line 189
    new-instance p0, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-direct {p0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_3

    .line 211
    .line 212
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    check-cast v8, Ljava/util/Map$Entry;

    .line 217
    .line 218
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Landroid/view/Surface;

    .line 223
    .line 224
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_3
    invoke-interface {p1, v0, p0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-nez p0, :cond_6

    .line 233
    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string p2, "Failed to create reprocessable captures session from "

    .line 237
    .line 238
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-eqz v7, :cond_5

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    check-cast v7, Ljava/util/Map$Entry;

    .line 292
    .line 293
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    check-cast v7, Landroid/view/Surface;

    .line 298
    .line 299
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_5
    invoke-interface {p1, p0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-nez p0, :cond_6

    .line 308
    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string p2, "Failed to create captures session from "

    .line 312
    .line 313
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_6
    invoke-static {p2, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->access$buildSimpleOutputSurfaceMap(Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Lkotlin/collections/builders/MapBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    new-instance v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 344
    .line 345
    invoke-direct {v6, v1, p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 346
    .line 347
    .line 348
    :goto_4
    return-object v6

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
