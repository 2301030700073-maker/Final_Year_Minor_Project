.class public final synthetic Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic f$1:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

.field public final synthetic f$4:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/processing/SurfaceEdge;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 7
    .line 8
    iput p3, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$3:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$4:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    check-cast v2, Landroid/view/Surface;

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/processing/SurfaceEdge;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 21
    .line 22
    iget-object v4, p1, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 23
    .line 24
    iget v3, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$2:I

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$3:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 27
    .line 28
    iget-object v6, p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;->f$4:Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/processing/SurfaceOutputImpl;-><init>(Landroid/view/Surface;ILandroid/util/Size;Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-direct {p0, v0, p1}, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lorg/slf4j/helpers/Util;->directExecutor()Lcom/bumptech/glide/util/Executors$1;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, v1, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 44
    .line 45
    iget-object v3, v3, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 46
    .line 47
    invoke-virtual {v3, p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v0, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->mConsumer:Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 51
    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    move v7, p1

    .line 55
    :cond_0
    const-string p0, "Consumer can only be linked once."

    .line 56
    .line 57
    invoke-static {p0, v7}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->mConsumer:Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 61
    .line 62
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    move-object p0, v0

    .line 69
    new-instance p1, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 70
    .line 71
    invoke-direct {p1, v7, p0}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method
