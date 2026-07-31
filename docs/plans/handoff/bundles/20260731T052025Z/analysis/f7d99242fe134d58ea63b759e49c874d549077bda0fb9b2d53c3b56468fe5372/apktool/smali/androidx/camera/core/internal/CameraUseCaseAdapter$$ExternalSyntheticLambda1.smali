.class public final synthetic Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 12
    .line 13
    check-cast v2, Landroid/app/Activity;

    .line 14
    .line 15
    check-cast p1, Landroid/content/res/Configuration;

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, v2, p0}, Lcom/fsck/k9/backend/imap/ImapSync;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 30
    .line 31
    check-cast v2, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 32
    .line 33
    check-cast p1, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/camera/core/processing/SurfaceOutputImpl;->close()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mOutputSurfaces:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/Surface;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Thread;

    .line 60
    .line 61
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->removeOutputSurfaceInternal(Landroid/view/Surface;Z)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_1
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 69
    .line 70
    check-cast v2, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 71
    .line 72
    check-cast p1, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/camera/core/processing/SurfaceOutputImpl;->close()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/view/Surface;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Thread;

    .line 99
    .line 100
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->removeOutputSurfaceInternal(Landroid/view/Surface;Z)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void

    .line 107
    :pswitch_2
    check-cast p0, Landroid/view/Surface;

    .line 108
    .line 109
    check-cast v2, Landroid/graphics/SurfaceTexture;

    .line 110
    .line 111
    check-cast p1, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
