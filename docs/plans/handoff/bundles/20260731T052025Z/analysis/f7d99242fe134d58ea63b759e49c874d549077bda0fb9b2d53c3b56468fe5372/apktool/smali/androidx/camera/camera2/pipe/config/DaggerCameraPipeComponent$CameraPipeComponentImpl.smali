.class public final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

.field public final camera2BackendProvider:Lokio/PriorityQueue;

.field public final camera2DeviceCacheProvider:Ldagger/internal/Provider;

.field public final camera2DeviceCloserImplProvider:Ldagger/internal/Provider;

.field public final camera2ErrorProcessorProvider:Ldagger/internal/Provider;

.field public final camera2MetadataCacheProvider:Ldagger/internal/Provider;

.field public final camera2QuirksProvider:Ldagger/internal/Provider;

.field public final cameraDevicesImplProvider:Ldagger/internal/Provider;

.field public final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field public final cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

.field public final cameraPipeLifetimeProvider:Ldagger/internal/Provider;

.field public final concurrentSessionSequencersProvider:Ldagger/internal/Provider;

.field public final permissionsProvider:Ldagger/internal/Provider;

.field public final provideCameraBackendsProvider:Ldagger/internal/Provider;

.field public final provideCameraContextProvider:Ldagger/internal/Provider;

.field public final provideCameraDeviceSetupCompatFactoryProvider:Ldagger/internal/Provider;

.field public final provideCameraManagerProvider:Ldagger/internal/Provider;

.field public final provideCameraPipeJobProvider:Ldagger/internal/Provider;

.field public final provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

.field public final provideDevicePolicyManagerWrapperProvider:Ldagger/internal/Provider;

.field public final providePackageManagerProvider:Ldagger/internal/Provider;

.field public final provideStrictModeProvider:Ldagger/internal/Provider;

.field public final provideThreadsProvider:Ldagger/internal/Provider;

.field public final pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

.field public final retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

.field public final systemTimeSourceProvider:Ldagger/internal/Provider;

.field public final threadConfigModule:Lcom/google/zxing/PlanarYUVLuminanceSource;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricPrompt;Lcom/google/zxing/PlanarYUVLuminanceSource;)V
    .locals 2

    .line 1
    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 32
    .line 33
    new-instance p1, Lokio/PriorityQueue;

    .line 34
    .line 35
    const/4 p2, 0x7

    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {p1, p2, v1, p0}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ldagger/internal/SingleCheck;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p2, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object p1, p2, Ldagger/internal/SingleCheck;->provider:Lokio/PriorityQueue;

    .line 48
    .line 49
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 50
    .line 51
    const/16 p1, 0x8

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->providePackageManagerProvider:Ldagger/internal/Provider;

    .line 58
    .line 59
    const/16 p1, 0x9

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 66
    .line 67
    const/16 p1, 0xa

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraDeviceSetupCompatFactoryProvider:Ldagger/internal/Provider;

    .line 74
    .line 75
    const/4 p1, 0x6

    .line 76
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCacheProvider:Ldagger/internal/Provider;

    .line 81
    .line 82
    const/16 p1, 0xc

    .line 83
    .line 84
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->permissionsProvider:Ldagger/internal/Provider;

    .line 89
    .line 90
    const/16 p1, 0xd

    .line 91
    .line 92
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 97
    .line 98
    const/16 p1, 0xb

    .line 99
    .line 100
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 105
    .line 106
    const/16 p1, 0x11

    .line 107
    .line 108
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 113
    .line 114
    const/16 p1, 0x10

    .line 115
    .line 116
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 121
    .line 122
    new-instance p1, Lokio/PriorityQueue;

    .line 123
    .line 124
    const/16 p2, 0x12

    .line 125
    .line 126
    invoke-direct {p1, p2, v1, p0}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Ldagger/internal/SingleCheck;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, p2, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p1, p2, Ldagger/internal/SingleCheck;->provider:Lokio/PriorityQueue;

    .line 137
    .line 138
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ldagger/internal/Provider;

    .line 139
    .line 140
    const/16 p1, 0x13

    .line 141
    .line 142
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

    .line 147
    .line 148
    const/16 p1, 0xf

    .line 149
    .line 150
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

    .line 155
    .line 156
    const/16 p1, 0x14

    .line 157
    .line 158
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCloserImplProvider:Ldagger/internal/Provider;

    .line 163
    .line 164
    const/16 p1, 0xe

    .line 165
    .line 166
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

    .line 171
    .line 172
    new-instance p1, Lokio/PriorityQueue;

    .line 173
    .line 174
    const/4 p2, 0x4

    .line 175
    invoke-direct {p1, p2, v1, p0}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2BackendProvider:Lokio/PriorityQueue;

    .line 179
    .line 180
    const/4 p1, 0x3

    .line 181
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 186
    .line 187
    invoke-static {p0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraDevicesImplProvider:Ldagger/internal/Provider;

    .line 192
    .line 193
    const/16 p1, 0x15

    .line 194
    .line 195
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Ldagger/internal/Provider;

    .line 200
    .line 201
    const/16 p1, 0x16

    .line 202
    .line 203
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 208
    .line 209
    const/16 p1, 0x17

    .line 210
    .line 211
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)Ldagger/internal/Provider;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Ldagger/internal/Provider;

    .line 216
    .line 217
    return-void
.end method


# virtual methods
.method public final cameraPipeContextContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/biometric/BiometricPrompt;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->appContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
