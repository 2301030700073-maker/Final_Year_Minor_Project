.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final camera:Ljava/lang/String;

.field public final deferredOutputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field public final format:I

.field public final groupNumber:Ljava/lang/Integer;

.field public final id:I

.field public final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field public final sensorPixelModes:Ljava/util/List;

.field public final size:Landroid/util/Size;

.field public final streamBuilder:Ljava/util/ArrayList;

.field public final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field public final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;


# direct methods
.method public constructor <init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    .line 13
    .line 14
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 21
    .line 22
    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 23
    .line 24
    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 25
    .line 26
    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 27
    .line 28
    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 29
    .line 30
    iput-object p11, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    .line 2
    .line 3
    const-string v0, "OutputConfig-"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
