.class public final Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;


# instance fields
.field public final output:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final addSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->addSurfaces(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    const-string p0, "addSurface is not supported on API "

    .line 19
    .line 20
    const-string p1, " (requires API 26)"

    .line 21
    .line 22
    invoke-static {v0, p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/params/OutputConfiguration;

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
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method
