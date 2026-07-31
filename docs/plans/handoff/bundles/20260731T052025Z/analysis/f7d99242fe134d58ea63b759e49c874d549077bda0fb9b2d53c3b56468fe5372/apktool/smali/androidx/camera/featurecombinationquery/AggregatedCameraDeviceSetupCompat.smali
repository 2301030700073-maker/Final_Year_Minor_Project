.class public final Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;


# instance fields
.field public final mCameraDeviceSetupImpls:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;->mCameraDeviceSetupImpls:Ljava/util/ArrayList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Lnet/openid/appauth/internal/Logger;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;->mCameraDeviceSetupImpls:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Lnet/openid/appauth/internal/Logger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, v0, Lnet/openid/appauth/internal/Logger;->mLogLevel:I

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    new-instance p0, Lnet/openid/appauth/internal/Logger;

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1}, Lnet/openid/appauth/internal/Logger;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
