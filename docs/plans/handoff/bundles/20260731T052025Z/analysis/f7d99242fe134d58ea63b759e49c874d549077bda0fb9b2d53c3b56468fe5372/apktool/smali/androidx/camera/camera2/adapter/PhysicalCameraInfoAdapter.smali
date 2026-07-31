.class public final Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/CameraInfo;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# instance fields
.field public final camera2CameraInfo$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 5
    .line 6
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->camera2CameraInfo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getLensFacing()I
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 4
    .line 5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq p0, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    if-ne p0, v1, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    const-string v1, "The specified lens facing integer "

    .line 36
    .line 37
    const-string v2, " can not be recognized."

    .line 38
    .line 39
    invoke-static {p0, v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :cond_1
    return v1

    .line 48
    :cond_2
    return v0
.end method

.method public final getSensorRotationDegrees()I
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->getSensorRotationDegrees(I)I

    move-result p0

    return p0
.end method

.method public final getSensorRotationDegrees(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 4
    .line 5
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->surfaceRotationToDegrees(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->getLensFacing()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v1, p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->getRelativeImageRotation(IIZ)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->camera2CameraInfo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-class v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    const-class v0, Landroid/hardware/camera2/CameraMetadata;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
