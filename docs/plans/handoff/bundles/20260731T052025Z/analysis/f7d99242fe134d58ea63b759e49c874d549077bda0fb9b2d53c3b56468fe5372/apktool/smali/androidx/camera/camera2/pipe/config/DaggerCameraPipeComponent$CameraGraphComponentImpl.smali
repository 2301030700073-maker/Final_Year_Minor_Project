.class public final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

.field public final cameraGraphImplProvider:Ldagger/internal/Provider;

.field public final cameraGraphParametersImplProvider:Ldagger/internal/Provider;

.field public final cameraGraphRequestListenersImplProvider:Ldagger/internal/Provider;

.field public final controller3AProvider:Ldagger/internal/Provider;

.field public final frameCaptureQueueProvider:Ldagger/internal/Provider;

.field public final graphProcessorImplProvider:Lokhttp3/ConnectionPool;

.field public final graphSessionLockProvider:Ldagger/internal/Provider;

.field public final graphState3AProvider:Ldagger/internal/Provider;

.field public final listener3AProvider:Ldagger/internal/Provider;

.field public final provideCameraBackendProvider:Ldagger/internal/Provider;

.field public final provideCameraControllerProvider:Lokhttp3/ConnectionPool;

.field public final provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

.field public final provideCameraMetadataProvider:Ldagger/internal/Provider;

.field public final provideFrameDistributorProvider:Ldagger/internal/Provider;

.field public final provideRequestListenersProvider:Ldagger/internal/Provider;

.field public final provideSurfaceGraphProvider:Ldagger/internal/Provider;

.field public final provideSystemClockOffsetsProvider:Ldagger/internal/Provider;

.field public final streamGraphImplProvider:Lokhttp3/ConnectionPool;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/cardview/widget/CardView$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 5
    .line 6
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraBackendProvider:Ldagger/internal/Provider;

    .line 18
    .line 19
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 30
    .line 31
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 32
    .line 33
    invoke-direct {p2, v1, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Ldagger/internal/Provider;

    .line 41
    .line 42
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 43
    .line 44
    const/16 v0, 0x17

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-direct {p2, v0, v2}, Lokhttp3/ConnectionPool;-><init>(IZ)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 51
    .line 52
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 53
    .line 54
    invoke-direct {p2, v0, v2}, Lokhttp3/ConnectionPool;-><init>(IZ)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 58
    .line 59
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 60
    .line 61
    invoke-direct {p2, v0, v2}, Lokhttp3/ConnectionPool;-><init>(IZ)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lokhttp3/ConnectionPool;

    .line 65
    .line 66
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 67
    .line 68
    const/16 v0, 0x9

    .line 69
    .line 70
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSurfaceGraphProvider:Ldagger/internal/Provider;

    .line 78
    .line 79
    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lokhttp3/ConnectionPool;

    .line 80
    .line 81
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 82
    .line 83
    const/16 v3, 0x8

    .line 84
    .line 85
    invoke-direct {v0, v3, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p2, v0}, Lokhttp3/ConnectionPool;->setDelegate(Lokhttp3/ConnectionPool;Ldagger/internal/Provider;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 96
    .line 97
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 98
    .line 99
    const/4 v3, 0x7

    .line 100
    invoke-direct {v0, v3, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p2, v0}, Lokhttp3/ConnectionPool;->setDelegate(Lokhttp3/ConnectionPool;Ldagger/internal/Provider;)V

    .line 108
    .line 109
    .line 110
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 111
    .line 112
    const/16 v0, 0xa

    .line 113
    .line 114
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Ldagger/internal/Provider;

    .line 122
    .line 123
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 124
    .line 125
    const/16 v0, 0xb

    .line 126
    .line 127
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSystemClockOffsetsProvider:Ldagger/internal/Provider;

    .line 135
    .line 136
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Ldagger/internal/Provider;

    .line 147
    .line 148
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 149
    .line 150
    const/4 v0, 0x5

    .line 151
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideRequestListenersProvider:Ldagger/internal/Provider;

    .line 159
    .line 160
    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 161
    .line 162
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 163
    .line 164
    const/4 v3, 0x3

    .line 165
    invoke-direct {v0, v3, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {p2, v0}, Lokhttp3/ConnectionPool;->setDelegate(Lokhttp3/ConnectionPool;Ldagger/internal/Provider;)V

    .line 173
    .line 174
    .line 175
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 176
    .line 177
    const/16 v0, 0xd

    .line 178
    .line 179
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Ldagger/internal/Provider;

    .line 187
    .line 188
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 189
    .line 190
    const/16 v0, 0xe

    .line 191
    .line 192
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 200
    .line 201
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 202
    .line 203
    const/16 v0, 0xc

    .line 204
    .line 205
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphParametersImplProvider:Ldagger/internal/Provider;

    .line 213
    .line 214
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 215
    .line 216
    const/16 v0, 0xf

    .line 217
    .line 218
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphRequestListenersImplProvider:Ldagger/internal/Provider;

    .line 226
    .line 227
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 228
    .line 229
    const/16 v0, 0x11

    .line 230
    .line 231
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphState3AProvider:Ldagger/internal/Provider;

    .line 239
    .line 240
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 241
    .line 242
    const/16 v0, 0x10

    .line 243
    .line 244
    invoke-direct {p2, v0, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->controller3AProvider:Ldagger/internal/Provider;

    .line 252
    .line 253
    new-instance p2, Lde/cketti/changelog/XmlParser;

    .line 254
    .line 255
    invoke-direct {p2, v2, v1, p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphImplProvider:Ldagger/internal/Provider;

    .line 263
    .line 264
    return-void
.end method
