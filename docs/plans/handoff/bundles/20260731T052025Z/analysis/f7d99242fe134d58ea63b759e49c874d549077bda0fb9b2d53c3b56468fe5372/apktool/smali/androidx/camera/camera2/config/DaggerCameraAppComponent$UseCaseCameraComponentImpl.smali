.class public final Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final captureConfigAdapterProvider:Ldagger/internal/Provider;

.field public final capturePipelineImplProvider:Ldagger/internal/Provider;

.field public final capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

.field public final deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

.field public final provideCapturePipelineProvider:Ldagger/internal/Provider;

.field public final provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

.field public final provideSessionProcessorProvider:Ldagger/internal/Provider;

.field public final provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

.field public final useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

.field public final useCaseCameraImplProvider:Ldagger/internal/Provider;

.field public final useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

.field public final useCaseCameraStateProvider:Ldagger/internal/Provider;

.field public final useCaseSurfaceManagerProvider:Ldagger/internal/Provider;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 5
    .line 6
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 17
    .line 18
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionProcessorProvider:Ldagger/internal/Provider;

    .line 29
    .line 30
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 31
    .line 32
    const/4 v0, 0x7

    .line 33
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->captureConfigAdapterProvider:Ldagger/internal/Provider;

    .line 41
    .line 42
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    .line 54
    .line 55
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 56
    .line 57
    const/4 v0, 0x6

    .line 58
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    .line 66
    .line 67
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 68
    .line 69
    const/16 v0, 0x9

    .line 70
    .line 71
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

    .line 79
    .line 80
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    .line 91
    .line 92
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 93
    .line 94
    const/16 v0, 0xb

    .line 95
    .line 96
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    .line 104
    .line 105
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 106
    .line 107
    const/16 v0, 0xa

    .line 108
    .line 109
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 117
    .line 118
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 119
    .line 120
    const/4 v0, 0x4

    .line 121
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

    .line 129
    .line 130
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 131
    .line 132
    const/4 v0, 0x3

    .line 133
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

    .line 141
    .line 142
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-direct {p3, p1, p2, p0, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Ldagger/internal/Provider;

    .line 153
    .line 154
    return-void
.end method
