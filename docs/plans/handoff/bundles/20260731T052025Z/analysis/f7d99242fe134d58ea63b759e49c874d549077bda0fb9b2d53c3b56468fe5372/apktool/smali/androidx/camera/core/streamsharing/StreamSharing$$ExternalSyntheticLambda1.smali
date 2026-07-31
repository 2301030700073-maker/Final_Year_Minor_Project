.class public final synthetic Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/streamsharing/StreamSharing;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/camera/core/impl/UseCaseConfig;

.field public final synthetic f$4:Landroidx/camera/core/impl/AutoValue_StreamSpec;

.field public final synthetic f$5:Landroidx/camera/core/impl/AutoValue_StreamSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$3:Landroidx/camera/core/impl/UseCaseConfig;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$4:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$5:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/StreamSharing;->clearPipeline$3()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$3:Landroidx/camera/core/impl/UseCaseConfig;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$4:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 20
    .line 21
    iget-object v5, p0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;->f$5:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    return-void
.end method
