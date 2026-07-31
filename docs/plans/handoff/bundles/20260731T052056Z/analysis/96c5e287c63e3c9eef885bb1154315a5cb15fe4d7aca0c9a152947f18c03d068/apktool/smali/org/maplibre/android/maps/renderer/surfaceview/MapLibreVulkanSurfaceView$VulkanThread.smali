.class public final Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;
.super Ljava/lang/Thread;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final eventQueue:Ljava/util/ArrayList;

.field public exited:Z

.field public finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

.field public graphicsSurfaceCreated:Z

.field public hasSurface:Z

.field public height:I

.field public final mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

.field public paused:Z

.field public renderComplete:Z

.field public renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

.field public final renderThreadManager:Lokio/ByteString$Companion;

.field public requestPaused:Z

.field public requestRender:Z

.field public shouldExit:Z

.field public sizeChanged:Z

.field public waitingForSurface:Z

.field public wantRenderNotification:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThreadManager:Lokio/ByteString$Companion;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->eventQueue:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->sizeChanged:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->width:I

    .line 27
    .line 28
    iput v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->height:I

    .line 29
    .line 30
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestRender:Z

    .line 31
    .line 32
    sget-object v1, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 33
    .line 34
    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 35
    .line 36
    iput-boolean v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 37
    .line 38
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 39
    .line 40
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final guardedRun()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v0

    .line 6
    move v4, v2

    .line 7
    move v5, v4

    .line 8
    move v6, v5

    .line 9
    move v7, v6

    .line 10
    move v8, v7

    .line 11
    move v9, v8

    .line 12
    move-object v3, v1

    .line 13
    move-object v10, v3

    .line 14
    :cond_0
    :goto_0
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 15
    .line 16
    monitor-enter v11

    .line 17
    :goto_1
    :try_start_0
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->shouldExit:Z

    .line 18
    .line 19
    if-eqz v12, :cond_1

    .line 20
    .line 21
    monitor-exit v11

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->eventQueue:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    const/4 v13, 0x1

    .line 33
    if-nez v12, :cond_2

    .line 34
    .line 35
    iget-object v10, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->eventQueue:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    check-cast v10, Ljava/lang/Runnable;

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->paused:Z

    .line 46
    .line 47
    iget-boolean v14, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestPaused:Z

    .line 48
    .line 49
    if-eq v12, v14, :cond_3

    .line 50
    .line 51
    iput-boolean v14, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->paused:Z

    .line 52
    .line 53
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 54
    .line 55
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->hasSurface:Z

    .line 59
    .line 60
    if-nez v12, :cond_5

    .line 61
    .line 62
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z

    .line 63
    .line 64
    if-nez v12, :cond_5

    .line 65
    .line 66
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    check-cast v12, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 73
    .line 74
    if-eqz v12, :cond_4

    .line 75
    .line 76
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    .line 77
    .line 78
    move v6, v13

    .line 79
    :cond_4
    iput-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z

    .line 80
    .line 81
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 82
    .line 83
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->hasSurface:Z

    .line 87
    .line 88
    if-eqz v12, :cond_7

    .line 89
    .line 90
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z

    .line 91
    .line 92
    if-eqz v12, :cond_7

    .line 93
    .line 94
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 101
    .line 102
    if-eqz v12, :cond_6

    .line 103
    .line 104
    iput-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    .line 105
    .line 106
    move v5, v13

    .line 107
    :cond_6
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z

    .line 108
    .line 109
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 110
    .line 111
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 112
    .line 113
    .line 114
    :cond_7
    if-eqz v2, :cond_8

    .line 115
    .line 116
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 117
    .line 118
    iput-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderComplete:Z

    .line 119
    .line 120
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 123
    .line 124
    .line 125
    move v2, v0

    .line 126
    :cond_8
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 127
    .line 128
    if-eqz v12, :cond_9

    .line 129
    .line 130
    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    move-object v3, v12

    .line 133
    :cond_9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->readyToDraw()Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_11

    .line 138
    .line 139
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    .line 140
    .line 141
    if-eqz v12, :cond_11

    .line 142
    .line 143
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->sizeChanged:Z

    .line 144
    .line 145
    if-eqz v12, :cond_a

    .line 146
    .line 147
    iget v8, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->width:I

    .line 148
    .line 149
    iget v9, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->height:I

    .line 150
    .line 151
    iput-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 152
    .line 153
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->sizeChanged:Z

    .line 154
    .line 155
    move v4, v13

    .line 156
    :cond_a
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestRender:Z

    .line 157
    .line 158
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 159
    .line 160
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 161
    .line 162
    .line 163
    iget-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 164
    .line 165
    if-eqz v12, :cond_b

    .line 166
    .line 167
    move v7, v13

    .line 168
    :cond_b
    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v10, :cond_c

    .line 170
    .line 171
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 172
    .line 173
    .line 174
    move-object v10, v1

    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_c
    if-eqz v6, :cond_d

    .line 178
    .line 179
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 186
    .line 187
    if-eqz v11, :cond_d

    .line 188
    .line 189
    iget-object v6, v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 190
    .line 191
    invoke-virtual {v6}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceDestroyed()V

    .line 192
    .line 193
    .line 194
    move v6, v0

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_d
    if-eqz v5, :cond_e

    .line 198
    .line 199
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 200
    .line 201
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 206
    .line 207
    if-eqz v11, :cond_e

    .line 208
    .line 209
    iget-object v5, v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 210
    .line 211
    invoke-virtual {v11}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v5, v11}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 220
    .line 221
    .line 222
    move v5, v0

    .line 223
    :cond_e
    if-eqz v4, :cond_f

    .line 224
    .line 225
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 226
    .line 227
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 232
    .line 233
    if-eqz v11, :cond_f

    .line 234
    .line 235
    iget-object v4, v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 236
    .line 237
    invoke-virtual {v4, v8, v9}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceChanged(II)V

    .line 238
    .line 239
    .line 240
    move v4, v0

    .line 241
    :cond_f
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 242
    .line 243
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 248
    .line 249
    if-eqz v11, :cond_10

    .line 250
    .line 251
    iget-object v11, v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 252
    .line 253
    invoke-virtual {v11}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDrawFrame()V

    .line 254
    .line 255
    .line 256
    if-eqz v3, :cond_10

    .line 257
    .line 258
    invoke-virtual {v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->run()V

    .line 259
    .line 260
    .line 261
    move-object v3, v1

    .line 262
    :cond_10
    if-eqz v7, :cond_0

    .line 263
    .line 264
    move v7, v0

    .line 265
    move v2, v13

    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_11
    if-eqz v3, :cond_12

    .line 269
    .line 270
    :try_start_1
    const-string v12, "MapLibreSurfaceView"

    .line 271
    .line 272
    const-string v13, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 273
    .line 274
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->run()V

    .line 278
    .line 279
    .line 280
    move-object v3, v1

    .line 281
    :cond_12
    iget-object v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/lang/Object;->wait()V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    throw p0
.end method

.method public final readyToDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->paused:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->hasSurface:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->width:I

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->height:I

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestRender:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 22
    .line 23
    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->CONTINUOUS:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 24
    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final requestExitAndWait()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->shouldExit:Z

    .line 6
    .line 7
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->exited:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 23
    .line 24
    const-wide/16 v2, 0x64

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "RenderThread "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :catch_0
    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
