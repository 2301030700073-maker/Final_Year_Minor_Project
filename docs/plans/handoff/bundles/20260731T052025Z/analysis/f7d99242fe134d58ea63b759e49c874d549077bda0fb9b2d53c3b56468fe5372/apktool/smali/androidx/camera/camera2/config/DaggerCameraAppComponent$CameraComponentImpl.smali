.class public final Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final camera2CameraControlCompatImplProvider:Ldagger/internal/Provider;

.field public final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field public final cameraCallbackMapProvider:Ldagger/internal/Provider;

.field public final cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public final cameraControlAdapterProvider:Ldagger/internal/Provider;

.field public final cameraControlStateAdapterProvider:Ldagger/internal/Provider;

.field public final cameraGraphConfigProvider:Ldagger/internal/Provider;

.field public final cameraInfoAdapterProvider:Ldagger/internal/Provider;

.field public final cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

.field public final cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

.field public final cameraQuirksProvider:Ldagger/internal/Provider;

.field public final cameraStateAdapterProvider:Ldagger/internal/Provider;

.field public final comboRequestListenerProvider:Ldagger/internal/Provider;

.field public final evCompControlProvider:Ldagger/internal/Provider;

.field public final evCompImplProvider:Ldagger/internal/Provider;

.field public final flashControlProvider:Ldagger/internal/Provider;

.field public final focusMeteringControlProvider:Ldagger/internal/Provider;

.field public final intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

.field public final lowLightBoostControlProvider:Ldagger/internal/Provider;

.field public final outputSizesCorrectorProvider:Ldagger/internal/Provider;

.field public final provideCamera2CameraControlProvider:Ldagger/internal/Provider;

.field public final provideCameraIdStringProvider:Ldagger/internal/Provider;

.field public final provideCameraMetadataProvider:Ldagger/internal/Provider;

.field public final provideEncoderProfilesProvider:Ldagger/internal/Provider;

.field public final provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

.field public final provideUseCaseThreadsProvider:Ldagger/internal/Provider;

.field public final provideZslControlProvider:Ldagger/internal/Provider;

.field public final state3AControlProvider:Ldagger/internal/Provider;

.field public final stillCaptureRequestControlProvider:Ldagger/internal/Provider;

.field public final streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

.field public final streamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

.field public final torchControlProvider:Ldagger/internal/Provider;

.field public final useCaseManagerProvider:Ldagger/internal/Provider;

.field public final videoUsageControlProvider:Ldagger/internal/Provider;

.field public final zoomControlProvider:Ldagger/internal/Provider;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/cardview/widget/CardView$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    invoke-static {p1, p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    invoke-static {p1, p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 23
    .line 24
    const/4 p2, 0x2

    .line 25
    invoke-static {p1, p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 30
    .line 31
    const/16 p3, 0x9

    .line 32
    .line 33
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

    .line 38
    .line 39
    const/16 p3, 0xa

    .line 40
    .line 41
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->outputSizesCorrectorProvider:Ldagger/internal/Provider;

    .line 46
    .line 47
    const/16 p3, 0x8

    .line 48
    .line 49
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

    .line 54
    .line 55
    const/4 p3, 0x7

    .line 56
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 61
    .line 62
    const/16 p3, 0xb

    .line 63
    .line 64
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 69
    .line 70
    const/4 p3, 0x6

    .line 71
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 76
    .line 77
    const/16 p3, 0xc

    .line 78
    .line 79
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 84
    .line 85
    const/4 p3, 0x5

    .line 86
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 91
    .line 92
    const/16 p3, 0xe

    .line 93
    .line 94
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompImplProvider:Ldagger/internal/Provider;

    .line 99
    .line 100
    const/16 p3, 0xd

    .line 101
    .line 102
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    .line 107
    .line 108
    const/16 p3, 0x10

    .line 109
    .line 110
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 115
    .line 116
    const/16 p3, 0xf

    .line 117
    .line 118
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 123
    .line 124
    const/16 p3, 0x11

    .line 125
    .line 126
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    .line 131
    .line 132
    const/16 p3, 0x12

    .line 133
    .line 134
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Ldagger/internal/Provider;

    .line 139
    .line 140
    const/16 p3, 0x13

    .line 141
    .line 142
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    .line 147
    .line 148
    const/16 p3, 0x14

    .line 149
    .line 150
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    .line 155
    .line 156
    const/16 p3, 0x16

    .line 157
    .line 158
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->camera2CameraControlCompatImplProvider:Ldagger/internal/Provider;

    .line 163
    .line 164
    const/16 p3, 0x15

    .line 165
    .line 166
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCamera2CameraControlProvider:Ldagger/internal/Provider;

    .line 171
    .line 172
    const/16 p3, 0x17

    .line 173
    .line 174
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 179
    .line 180
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-direct {v0, p3, v1}, Lokhttp3/ConnectionPool;-><init>(IZ)V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

    .line 187
    .line 188
    const/16 p3, 0x19

    .line 189
    .line 190
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlStateAdapterProvider:Ldagger/internal/Provider;

    .line 195
    .line 196
    const/16 p3, 0x1a

    .line 197
    .line 198
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraCallbackMapProvider:Ldagger/internal/Provider;

    .line 203
    .line 204
    const/16 p3, 0x1c

    .line 205
    .line 206
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraIdStringProvider:Ldagger/internal/Provider;

    .line 211
    .line 212
    const/16 p3, 0x1b

    .line 213
    .line 214
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideEncoderProfilesProvider:Ldagger/internal/Provider;

    .line 219
    .line 220
    const/16 p3, 0x1d

    .line 221
    .line 222
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

    .line 227
    .line 228
    const/16 p3, 0x18

    .line 229
    .line 230
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInfoAdapterProvider:Ldagger/internal/Provider;

    .line 235
    .line 236
    const/16 p3, 0x1e

    .line 237
    .line 238
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraGraphConfigProvider:Ldagger/internal/Provider;

    .line 243
    .line 244
    const/4 p3, 0x1

    .line 245
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useCaseManagerProvider:Ldagger/internal/Provider;

    .line 250
    .line 251
    const/16 p3, 0x1f

    .line 252
    .line 253
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)Ldagger/internal/Provider;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlAdapterProvider:Ldagger/internal/Provider;

    .line 258
    .line 259
    iget-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

    .line 260
    .line 261
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 262
    .line 263
    invoke-direct {v0, v1, p2, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {p3, p0}, Lokhttp3/ConnectionPool;->setDelegate(Lokhttp3/ConnectionPool;Ldagger/internal/Provider;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method


# virtual methods
.method public final templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-class v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;

    .line 40
    .line 41
    invoke-interface {v1}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;->workaroundByCaptureIntentPreview()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-class v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :goto_0
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(Landroidx/camera/core/impl/Quirks;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    sget-object p0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$5:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 63
    .line 64
    return-object p0
.end method

.method public final zoomCompat()Landroidx/camera/camera2/compat/ZoomCompat;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 13
    .line 14
    const-string v1, "robolectric"

    .line 15
    .line 16
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    sget-object v1, Landroidx/camera/camera2/compat/NoOpZoomCompat;->requiredCharacteristics:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 50
    .line 51
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v4, "Failed to read "

    .line 60
    .line 61
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, " for zoom features."

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "CXCP"

    .line 77
    .line 78
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-object v3, v0

    .line 85
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    new-instance p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    const/16 v2, 0x1e

    .line 102
    .line 103
    if-lt v1, v2, :cond_4

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/core/os/BuildCompat$Api30Impl;->getControlZoomRatioRangeSafely(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroid/util/Range;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    new-instance v1, Lkotlinx/serialization/internal/ClassValueCache;

    .line 112
    .line 113
    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroid/util/Range;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_4
    :goto_0
    new-instance v0, Landroidx/cardview/widget/CardView$1;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method
