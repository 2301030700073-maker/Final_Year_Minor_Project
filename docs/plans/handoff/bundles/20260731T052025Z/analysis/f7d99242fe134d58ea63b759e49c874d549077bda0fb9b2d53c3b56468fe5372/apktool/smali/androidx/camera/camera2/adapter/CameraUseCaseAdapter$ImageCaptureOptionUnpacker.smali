.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;
.super Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final unpack(Landroidx/camera/core/impl/UseCaseConfig;Lorg/apache/james/mime4j/stream/RawField;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Lorg/apache/james/mime4j/stream/RawField;)V

    .line 5
    .line 6
    .line 7
    instance-of p0, p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Landroidx/camera/core/Preview$Builder;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Landroidx/camera/core/Preview$Builder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/datastore/core/Api26Impl;->toggleHDRPlus(Landroidx/camera/core/Preview$Builder;Landroidx/camera/core/impl/ImageCaptureConfig;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p2, p0}, Lorg/apache/james/mime4j/stream/RawField;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "config is not ImageCaptureConfig"

    .line 31
    .line 32
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
