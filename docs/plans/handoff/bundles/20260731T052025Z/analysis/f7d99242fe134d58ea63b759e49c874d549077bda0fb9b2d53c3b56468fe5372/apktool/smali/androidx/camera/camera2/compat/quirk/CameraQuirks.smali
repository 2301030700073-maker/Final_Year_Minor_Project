.class public final Landroidx/camera/camera2/compat/quirk/CameraQuirks;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final quirks$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 10
    .line 11
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 p2, 0x5

    .line 14
    invoke-direct {p1, p2, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->quirks$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getQuirks()Landroidx/camera/core/impl/Quirks;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->quirks$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/impl/Quirks;

    .line 8
    .line 9
    return-object p0
.end method
