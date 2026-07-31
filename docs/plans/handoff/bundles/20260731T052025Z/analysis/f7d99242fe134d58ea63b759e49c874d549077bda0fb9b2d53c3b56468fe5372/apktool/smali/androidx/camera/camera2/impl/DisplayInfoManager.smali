.class public final Landroidx/camera/camera2/impl/DisplayInfoManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

.field public static final Companion:Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

.field public static final FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

.field public static final MAX_PREVIEW_SIZE:Landroid/util/Size;

.field public static volatile instance:Landroidx/camera/camera2/impl/DisplayInfoManager;


# instance fields
.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final displaySizeCorrector:Landroidx/biometric/BiometricPrompt;

.field public volatile displays:[Landroid/view/Display;

.field public final lock:Ljava/lang/Object;

.field public final maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

.field public volatile previewSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    .line 7
    .line 8
    new-instance v0, Landroid/util/Size;

    .line 9
    .line 10
    const/16 v1, 0x780

    .line 11
    .line 12
    const/16 v2, 0x438

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    .line 18
    .line 19
    new-instance v0, Landroid/util/Size;

    .line 20
    .line 21
    const/16 v1, 0x140

    .line 22
    .line 23
    const/16 v2, 0xf0

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    .line 29
    .line 30
    new-instance v0, Landroid/util/Size;

    .line 31
    .line 32
    const/16 v1, 0x280

    .line 33
    .line 34
    const/16 v2, 0x1e0

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 11
    .line 12
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    .line 13
    .line 14
    const/16 v1, 0xe

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/biometric/BiometricPrompt;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v0, Landroidx/camera/view/PreviewView$DisplayRotationListener;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, v1, p0}, Landroidx/camera/view/PreviewView$DisplayRotationListener;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "display"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 44
    .line 45
    new-instance v1, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final calculatePreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay(Z)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/util/Size;

    .line 15
    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v2, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v0, v2, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/biometric/BiometricPrompt;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;

    .line 44
    .line 45
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast v0, Landroid/util/Size;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    if-nez v0, :cond_1

    .line 71
    .line 72
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    .line 73
    .line 74
    :cond_1
    move-object v1, v0

    .line 75
    :cond_2
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-le v0, v2, :cond_3

    .line 84
    .line 85
    new-instance v0, Landroid/util/Size;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 96
    .line 97
    .line 98
    move-object v1, v0

    .line 99
    :cond_3
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    .line 100
    .line 101
    invoke-static {v0}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-ge v2, v3, :cond_4

    .line 110
    .line 111
    move-object v1, v0

    .line 112
    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    .line 118
    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    sget-object p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 123
    .line 124
    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-nez p0, :cond_6

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    mul-int/2addr v2, v0

    .line 140
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    mul-int/2addr v3, v0

    .line 149
    if-le v2, v3, :cond_7

    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_7
    :goto_1
    return-object v1
.end method

.method public final getMaxSizeDisplay(Z)Landroid/view/Display;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :goto_0
    monitor-exit v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    array-length p0, v1

    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    .line 27
    aget-object p0, v1, v0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    array-length p0, v1

    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v5, v4

    .line 34
    move-object v6, v5

    .line 35
    move v4, v3

    .line 36
    :goto_2
    if-ge v0, p0, :cond_4

    .line 37
    .line 38
    aget-object v7, v1, v0

    .line 39
    .line 40
    new-instance v8, Landroid/graphics/Point;

    .line 41
    .line 42
    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 46
    .line 47
    .line 48
    iget v9, v8, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    iget v10, v8, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    mul-int/2addr v9, v10

    .line 53
    if-le v9, v3, :cond_2

    .line 54
    .line 55
    move-object v5, v7

    .line 56
    move v3, v9

    .line 57
    :cond_2
    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eq v9, v2, :cond_3

    .line 62
    .line 63
    iget v9, v8, Landroid/graphics/Point;->x:I

    .line 64
    .line 65
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    mul-int/2addr v9, v8

    .line 68
    if-le v9, v4, :cond_3

    .line 69
    .line 70
    move-object v6, v7

    .line 71
    move v4, v9

    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    if-eqz p1, :cond_6

    .line 76
    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    move-object v5, v6

    .line 81
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 82
    .line 83
    return-object v5

    .line 84
    :cond_7
    const-string p0, "No displays found from "

    .line 85
    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/16 p0, 0x21

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v0

    .line 122
    throw p0
.end method

.method public final getPreviewSize()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_0
    monitor-exit v0

    .line 31
    throw p0
.end method
