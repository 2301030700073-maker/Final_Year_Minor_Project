.class public final Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;
.super Ljava/lang/Thread;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public destroySurface:Z

.field public final eventQueue:Ljava/util/LinkedList;

.field public exited:Z

.field public hasNativeSurface:Z

.field public height:I

.field public final lock:Ljava/lang/Object;

.field public final mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

.field public paused:Z

.field public requestRender:Z

.field public shouldExit:Z

.field public sizeChanged:Z

.field public surface:Landroid/view/Surface;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    .line 17
    .line 18
    iget-boolean v0, p2, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->translucentSurface:Z

    .line 19
    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceDestroyed()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->hasNativeSurface:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    iput p2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->width:I

    .line 7
    .line 8
    iput p3, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->height:I

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->requestRender:Z

    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->destroySurface:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->requestRender:Z

    .line 12
    .line 13
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->hasNativeSurface:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit p1

    .line 43
    return v0

    .line 44
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iput p2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->width:I

    .line 5
    .line 6
    iput p3, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->height:I

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->sizeChanged:Z

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->requestRender:Z

    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->shouldExit:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_2
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->exited:Z

    .line 17
    .line 18
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    monitor-exit v2

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p0

    .line 28
    :catchall_1
    move-exception v2

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Runnable;

    .line 48
    .line 49
    move v5, v3

    .line 50
    move v6, v4

    .line 51
    move v7, v6

    .line 52
    move v8, v7

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->destroySurface:Z

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 64
    .line 65
    .line 66
    iput-object v5, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 67
    .line 68
    :cond_2
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->destroySurface:Z

    .line 69
    .line 70
    move v8, v0

    .line 71
    move v6, v4

    .line 72
    move v7, v6

    .line 73
    move-object v2, v5

    .line 74
    move v5, v3

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 77
    .line 78
    if-eqz v2, :cond_b

    .line 79
    .line 80
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->paused:Z

    .line 81
    .line 82
    if-nez v2, :cond_b

    .line 83
    .line 84
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->requestRender:Z

    .line 85
    .line 86
    if-eqz v2, :cond_b

    .line 87
    .line 88
    iget v3, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->width:I

    .line 89
    .line 90
    iget v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->height:I

    .line 91
    .line 92
    iget-object v6, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 93
    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    new-instance v6, Landroid/view/Surface;

    .line 97
    .line 98
    iget-object v7, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 99
    .line 100
    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 101
    .line 102
    .line 103
    iput-object v6, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 104
    .line 105
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->hasNativeSurface:Z

    .line 106
    .line 107
    move v6, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move v6, v4

    .line 110
    :goto_2
    iget-boolean v7, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->sizeChanged:Z

    .line 111
    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->sizeChanged:Z

    .line 115
    .line 116
    move v7, v0

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    move v7, v4

    .line 119
    :goto_3
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->requestRender:Z

    .line 120
    .line 121
    move-object v8, v5

    .line 122
    move v5, v2

    .line 123
    move-object v2, v8

    .line 124
    move v8, v4

    .line 125
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :catchall_2
    move-exception v1

    .line 134
    goto :goto_6

    .line 135
    :cond_6
    if-eqz v6, :cond_7

    .line 136
    .line 137
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 138
    .line 139
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 145
    .line 146
    invoke-virtual {v1, v3, v5}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceChanged(II)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_7
    if-eqz v8, :cond_8

    .line 152
    .line 153
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 154
    .line 155
    invoke-virtual {v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceDestroyed()V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    :try_start_5
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->hasNativeSurface:Z

    .line 162
    .line 163
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 166
    .line 167
    .line 168
    monitor-exit v1

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :catchall_3
    move-exception v2

    .line 172
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 173
    :try_start_6
    throw v2

    .line 174
    :cond_8
    if-eqz v7, :cond_9

    .line 175
    .line 176
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 177
    .line 178
    invoke-virtual {v1, v3, v5}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceChanged(II)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_9
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    .line 184
    .line 185
    if-nez v1, :cond_a

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_a
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 190
    .line 191
    invoke-virtual {v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDrawFrame()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_b
    :try_start_7
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 204
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 205
    :goto_6
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v2

    .line 208
    :try_start_9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    .line 209
    .line 210
    .line 211
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->exited:Z

    .line 212
    .line 213
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    .line 217
    .line 218
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 219
    throw v1

    .line 220
    :catchall_4
    move-exception p0

    .line 221
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 222
    throw p0

    .line 223
    :catch_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 224
    .line 225
    monitor-enter v1

    .line 226
    :try_start_b
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    .line 227
    .line 228
    .line 229
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->exited:Z

    .line 230
    .line 231
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->lock:Ljava/lang/Object;

    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 234
    .line 235
    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 238
    :catchall_5
    move-exception p0

    .line 239
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 240
    throw p0
.end method
