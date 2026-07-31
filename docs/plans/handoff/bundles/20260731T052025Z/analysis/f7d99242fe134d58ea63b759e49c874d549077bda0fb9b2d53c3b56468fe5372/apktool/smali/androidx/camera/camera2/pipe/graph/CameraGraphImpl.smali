.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

.field public final cameraController:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

.field public final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field public final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field public final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field public final frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

.field public final graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public final graphScope:Lkotlinx/coroutines/CoroutineScope;

.field public final id:Landroidx/camera/camera2/pipe/CameraGraphId;

.field public final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field public final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field public final sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/graph/Controller3A;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    iget v4, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputs:Ljava/util/List;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p3

    .line 2
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    move-object/from16 v6, p4

    .line 3
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 4
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-object/from16 v6, p6

    .line 5
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    move-object/from16 v6, p7

    .line 6
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    move-object/from16 v6, p8

    .line 7
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-object/from16 v6, p9

    .line 8
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    move-object/from16 v6, p10

    .line 9
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    move-object/from16 v6, p11

    .line 10
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    move-object/from16 v6, p12

    .line 11
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    move-object/from16 v6, p13

    .line 12
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    move-object/from16 v6, p14

    .line 13
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    move-object/from16 v6, p15

    .line 14
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v6, p16

    .line 15
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/4 v6, 0x0

    .line 16
    invoke-static {v6}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v7

    iput-object v7, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 17
    iget-object v7, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 18
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-virtual {v9, v8}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 19
    const-string v10, "External"

    const-string v11, "Unknown"

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_1

    const-string v8, "Front"

    goto :goto_3

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v13, :cond_3

    const-string v8, "Back"

    goto :goto_3

    :cond_3
    :goto_1
    if-nez v8, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_5

    move-object v8, v10

    goto :goto_3

    :cond_5
    :goto_2
    move-object v8, v11

    .line 22
    :goto_3
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v14}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-nez v14, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_7

    const-string v10, "Limited"

    goto :goto_9

    :cond_7
    :goto_4
    if-nez v14, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v13, :cond_9

    const-string v10, "Full"

    goto :goto_9

    :cond_9
    :goto_5
    if-nez v14, :cond_a

    goto :goto_6

    .line 25
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v12, :cond_b

    const-string v10, "Legacy"

    goto :goto_9

    :cond_b
    :goto_6
    if-nez v14, :cond_c

    goto :goto_7

    .line 26
    :cond_c
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/4 v6, 0x3

    if-ne v15, v6, :cond_d

    const-string v10, "Level 3"

    goto :goto_9

    :cond_d
    :goto_7
    if-nez v14, :cond_e

    goto :goto_8

    .line 27
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v14, 0x4

    if-ne v6, v14, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    move-object v10, v11

    :goto_9
    if-ne v4, v13, :cond_10

    .line 28
    const-string v11, "High Speed"

    goto :goto_a

    :cond_10
    if-nez v4, :cond_11

    .line 29
    const-string v11, "Normal"

    goto :goto_a

    :cond_11
    if-ne v4, v12, :cond_12

    .line 30
    const-string v11, "Extension"

    .line 31
    :cond_12
    :goto_a
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_13

    const/16 v9, 0xb

    .line 32
    invoke-static {v6, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 33
    const-string v6, "Logical"

    goto :goto_b

    .line 34
    :cond_13
    const-string v6, "Physical"

    .line 35
    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " (Camera "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v14, " ("

    const-string v12, ", "

    move/from16 p4, v13

    .line 38
    const-string v13, "  Facing:    "

    invoke-static {v13, v8, v14, v6, v12}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  Mode:      "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v6, "Outputs:\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v11, "\n"

    const/16 v12, 0xc

    if-eqz v6, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraStream;

    .line 44
    iget-object v6, v6, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v13, 0x0

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_1c

    check-cast v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    const/16 p5, 0x0

    .line 46
    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_16

    .line 47
    iget-object v10, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    if-eqz v10, :cond_15

    .line 48
    iget v10, v10, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 49
    invoke-static {v10}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 50
    :cond_15
    const-string v0, "stream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p5

    .line 51
    :cond_16
    const-string v10, ""

    .line 52
    :goto_d
    invoke-static {v10, v12}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v10, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    iget-object v13, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->camera:Ljava/lang/String;

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Output-"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xc

    .line 55
    invoke-static {v8, v10}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v8, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->size:Landroid/util/Size;

    .line 57
    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v10}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v8, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    .line 59
    invoke-static {v8}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x10

    invoke-static {v8, v10}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v8, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 61
    const-string v12, " ["

    if-eqz v8, :cond_17

    .line 62
    iget v8, v8, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->value:I

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_17
    iget-object v8, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-object/from16 p9, v2

    move-object v10, v3

    if-eqz v8, :cond_18

    .line 65
    iget-wide v2, v8, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->value:J

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_18
    iget-object v2, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move v8, v4

    if-eqz v2, :cond_19

    .line 68
    iget-wide v3, v2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v5

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 p11, v6

    const-string v6, "StreamUseCase(value="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_19
    move-object/from16 v16, v5

    move-object/from16 p11, v6

    .line 72
    :goto_e
    iget-object v2, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    if-eqz v2, :cond_1a

    .line 73
    iget-wide v2, v2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->value:J

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "StreamUseHint(value="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1a
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 78
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v2, Landroidx/camera/camera2/pipe/CameraId;

    invoke-direct {v2, v13}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "]"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p9

    move-object/from16 v6, p11

    move v4, v8

    move-object v3, v10

    move v13, v15

    move-object/from16 v5, v16

    const/16 v8, 0xa

    const/16 v12, 0xc

    goto/16 :goto_c

    :cond_1c
    const/16 p5, 0x0

    .line 83
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    throw p5

    :cond_1d
    move-object v10, v3

    move v8, v4

    move-object/from16 v16, v5

    const/16 p5, 0x0

    .line 84
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 85
    const-string v2, "Inputs:\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;

    .line 87
    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v4, v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->id:I

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Input-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 90
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v3, v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->format:I

    .line 92
    invoke-static {v3}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 95
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session Template: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 97
    invoke-static {v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->getName-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, "Session Parameters"

    .line 99
    iget-object v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 100
    invoke-static {v9, v2, v3}, Landroidx/room/util/RelationUtil;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default Template: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 103
    invoke-static {v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->getName-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "Default Parameters"

    .line 105
    iget-object v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 106
    invoke-static {v9, v2, v3}, Landroidx/room/util/RelationUtil;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    const-string v2, "Required Parameters"

    .line 108
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 109
    invoke-static {v9, v2, v1}, Landroidx/room/util/RelationUtil;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "CXCP"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, p4

    if-ne v8, v1, :cond_23

    .line 112
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 113
    iget-object v1, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 115
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 116
    iget-object v1, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    const/4 v3, 0x2

    if-gt v1, v3, :cond_21

    .line 119
    iget-object v1, v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 120
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_11

    .line 121
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 122
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->isValidForHighSpeedOperatingMode()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    .line 123
    :cond_20
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 124
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 125
    const-string v1, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    throw p5

    .line 126
    :cond_21
    const-string v0, "Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are "

    .line 127
    iget-object v1, v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 128
    invoke-static {v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    throw p5

    .line 129
    :cond_22
    const-string v0, "Cannot create a HIGH_SPEED CameraGraph without outputs."

    .line 130
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    throw p5

    :cond_23
    :goto_11
    if-eqz v10, :cond_26

    .line 131
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_26

    .line 133
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_24

    goto :goto_12

    .line 134
    :cond_24
    const-string v0, "Multi resolution reprocessing not supported under Android S"

    .line 135
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    throw p5

    .line 136
    :cond_25
    const-string v0, "At least one InputConfiguration is required for reprocessing"

    .line 137
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    throw p5

    .line 138
    :cond_26
    :goto_12
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 139
    iget-object v1, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Lkotlin/collections/builders/MapBuilder;

    .line 140
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 141
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->maybeUpdateSurfaces$camera_camera2_pipe()V

    :cond_27
    return-void
.end method


# virtual methods
.method public final acquireSession(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->acquireToken$camera_camera2_pipe(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    :goto_1
    move-object v1, p1

    .line 62
    check-cast v1, Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 63
    .line 64
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 65
    .line 66
    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 67
    .line 68
    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 73
    .line 74
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 75
    .line 76
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;-><init>(Landroidx/camera/camera2/pipe/core/MutexToken;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method public final close()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "#close"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "CXCP"

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Closing "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->close()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 56
    .line 57
    const-string v1, "Quirk: Closing "

    .line 58
    .line 59
    const-string v2, "Closed "

    .line 60
    .line 61
    iget-object v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v3

    .line 64
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 65
    .line 66
    .line 67
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    :cond_0
    :goto_0
    monitor-exit v3

    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_1
    :try_start_1
    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$2:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 75
    .line 76
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 77
    .line 78
    const-string v4, "CXCP"

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 96
    .line 97
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 98
    .line 99
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 100
    .line 101
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 102
    .line 103
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 104
    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_2
    :goto_1
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 122
    .line 123
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 124
    .line 125
    if-eqz v6, :cond_4

    .line 126
    .line 127
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 131
    .line 132
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 133
    .line 134
    if-eqz v6, :cond_5

    .line 135
    .line 136
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 140
    .line 141
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 142
    .line 143
    invoke-static {v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v4, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 150
    .line 151
    iget-object v4, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 152
    .line 153
    iget-boolean v4, v4, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    .line 154
    .line 155
    if-nez v4, :cond_6

    .line 156
    .line 157
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 158
    .line 159
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_0

    .line 166
    .line 167
    :cond_6
    const-string v2, "CXCP"

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 175
    .line 176
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, " during "

    .line 186
    .line 187
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, "#close"

    .line 194
    .line 195
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 206
    .line 207
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 208
    .line 209
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->close-EfqyGwQ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->close()V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->close()V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->close()V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->close()V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 237
    .line 238
    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->removeCameraGraph(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)V

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    .line 242
    .line 243
    invoke-static {p0, v5}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_3
    monitor-exit v3

    .line 251
    throw p0

    .line 252
    :cond_7
    return-void
.end method

.method public final setSurface-NYG5g8E(ILandroid/view/Surface;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "#setSurface"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "CXCP"

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "#setSurface: "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " is invalid"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 64
    .line 65
    const-string v0, "Surface ("

    .line 66
    .line 67
    const-string v1, "Removed surface for "

    .line 68
    .line 69
    const-string v2, "Configured "

    .line 70
    .line 71
    const-string v3, "Refusing to configure "

    .line 72
    .line 73
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->imageSources:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Landroidx/camera/camera2/pipe/StreamId;

    .line 80
    .line 81
    invoke-direct {v5, p1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_f

    .line 89
    .line 90
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v4

    .line 93
    :try_start_0
    iget-boolean v5, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->closed:Z

    .line 94
    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    const-string p0, "CXCP"

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, " with "

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " after close!"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_1
    :goto_0
    monitor-exit v4

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_2
    :try_start_1
    const-string v3, "CXCP"

    .line 141
    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " with "

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    if-nez p2, :cond_4

    .line 191
    .line 192
    :try_start_2
    new-instance p2, Landroidx/camera/camera2/pipe/StreamId;

    .line 193
    .line 194
    invoke-direct {p2, p1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Landroid/view/Surface;

    .line 202
    .line 203
    iget-boolean p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    .line 204
    .line 205
    if-eqz p2, :cond_6

    .line 206
    .line 207
    if-eqz p1, :cond_6

    .line 208
    .line 209
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/LinkedHashMap;

    .line 210
    .line 211
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Ljava/lang/AutoCloseable;

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    new-instance v2, Landroidx/camera/camera2/pipe/StreamId;

    .line 219
    .line 220
    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Landroid/view/Surface;

    .line 228
    .line 229
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    new-instance v3, Landroidx/camera/camera2/pipe/StreamId;

    .line 232
    .line 233
    invoke-direct {v3, p1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    .line 240
    .line 241
    if-eqz p1, :cond_6

    .line 242
    .line 243
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_6

    .line 248
    .line 249
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/LinkedHashMap;

    .line 250
    .line 251
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_5

    .line 256
    .line 257
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/LinkedHashMap;

    .line 258
    .line 259
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    check-cast p1, Ljava/lang/AutoCloseable;

    .line 268
    .line 269
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 270
    .line 271
    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/LinkedHashMap;

    .line 276
    .line 277
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string p1, ") is already in use!"

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :cond_6
    const/4 p1, 0x0

    .line 309
    :goto_2
    monitor-exit v4

    .line 310
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->maybeUpdateSurfaces$camera_camera2_pipe()V

    .line 311
    .line 312
    .line 313
    if-eqz p1, :cond_e

    .line 314
    .line 315
    instance-of p0, p1, Ljava/lang/AutoCloseable;

    .line 316
    .line 317
    if-eqz p0, :cond_7

    .line 318
    .line 319
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_7
    instance-of p0, p1, Ljava/util/concurrent/ExecutorService;

    .line 324
    .line 325
    if-eqz p0, :cond_8

    .line 326
    .line 327
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 328
    .line 329
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_8
    instance-of p0, p1, Landroid/content/res/TypedArray;

    .line 334
    .line 335
    if-eqz p0, :cond_9

    .line 336
    .line 337
    check-cast p1, Landroid/content/res/TypedArray;

    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_9
    instance-of p0, p1, Landroid/media/MediaMetadataRetriever;

    .line 344
    .line 345
    if-eqz p0, :cond_a

    .line 346
    .line 347
    check-cast p1, Landroid/media/MediaMetadataRetriever;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_a
    instance-of p0, p1, Landroid/media/MediaDrm;

    .line 354
    .line 355
    if-eqz p0, :cond_b

    .line 356
    .line 357
    check-cast p1, Landroid/media/MediaDrm;

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_b
    instance-of p0, p1, Landroid/drm/DrmManagerClient;

    .line 364
    .line 365
    if-eqz p0, :cond_c

    .line 366
    .line 367
    check-cast p1, Landroid/drm/DrmManagerClient;

    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->release()V

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_c
    instance-of p0, p1, Landroid/content/ContentProviderClient;

    .line 374
    .line 375
    if-eqz p0, :cond_d

    .line 376
    .line 377
    check-cast p1, Landroid/content/ContentProviderClient;

    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 380
    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_d
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :cond_e
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :goto_4
    monitor-exit v4

    .line 392
    throw p0

    .line 393
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v0, "Cannot configure surface for "

    .line 396
    .line 397
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v0, ", it is permanently assigned to "

    .line 408
    .line 409
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->imageSources:Ljava/util/Map;

    .line 410
    .line 411
    new-instance v1, Landroidx/camera/camera2/pipe/StreamId;

    .line 412
    .line 413
    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 414
    .line 415
    .line 416
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-static {p2, v0, p0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "#start"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "CXCP"

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Starting "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v1, "CXCP"

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, " onGraphStarting"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 76
    .line 77
    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE$1:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 99
    .line 100
    iget-object v2, v1, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v3, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE$1:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    .line 107
    .line 108
    invoke-virtual {v2, v1, v3}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 115
    .line 116
    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    monitor-exit v0

    .line 121
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    .line 127
    throw p0

    .line 128
    :cond_1
    const-string v0, "Cannot start "

    .line 129
    .line 130
    const-string v1, " after calling close()"

    .line 131
    .line 132
    invoke-static {p0, v1, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraphId;->name:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
