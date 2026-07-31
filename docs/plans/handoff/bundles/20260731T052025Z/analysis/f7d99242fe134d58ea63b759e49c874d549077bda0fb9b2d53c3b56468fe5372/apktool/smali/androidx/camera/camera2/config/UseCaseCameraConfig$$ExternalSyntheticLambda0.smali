.class public final synthetic Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/config/UseCaseCameraConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 30
    .line 31
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
