.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/CapturePipeline;


# instance fields
.field public final useCaseCameraStateProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p9, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraStateProvider:Ljavax/inject/Provider;

    .line 32
    .line 33
    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-direct {p1, p8, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;I)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 p2, 0x8

    .line 47
    .line 48
    invoke-direct {p1, p2, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;-><init>()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final setTemplate(I)V
    .locals 0

    .line 1
    return-void
.end method
