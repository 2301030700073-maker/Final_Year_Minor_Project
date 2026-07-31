.class public final Lexpo/modules/device/DeviceModule$Companion;
.super Ljava/lang/Object;
.source "DeviceModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/device/DeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/device/DeviceModule$Companion;",
        "",
        "<init>",
        "()V",
        "isRunningOnEmulator",
        "",
        "()Z",
        "getDeviceType",
        "Lexpo/modules/device/DeviceModule$DeviceType;",
        "context",
        "Landroid/content/Context;",
        "getDeviceTypeFromResourceConfiguration",
        "getDeviceTypeFromPhysicalSize",
        "expo-device_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/device/DeviceModule$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDeviceType(Lexpo/modules/device/DeviceModule$Companion;Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceType(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isRunningOnEmulator(Lexpo/modules/device/DeviceModule$Companion;)Z
    .locals 0

    .line 131
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule$Companion;->isRunningOnEmulator()Z

    move-result p0

    return p0
.end method

.method private final getDeviceType(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 2

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object p1

    .line 141
    :cond_0
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 143
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object p1

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceTypeFromResourceConfiguration(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v0

    .line 147
    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceTypeFromPhysicalSize(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getDeviceTypeFromPhysicalSize(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 7

    .line 170
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 171
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object p1

    .line 178
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 179
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getBounds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v5, v3

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, v2

    div-double v1, v0, v2

    .line 188
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v5, p1

    div-double v5, v3, v5

    :goto_0
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 192
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double p1, v2, v0

    const-wide v2, 0x401b99999999999aL    # 6.9

    if-gtz p1, :cond_2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_2

    .line 196
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_1

    :cond_2
    cmpl-double p1, v0, v2

    if-lez p1, :cond_3

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_3

    .line 199
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_1

    .line 202
    :cond_3
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    :goto_1
    return-object p1
.end method

.method private final getDeviceTypeFromResourceConfiguration(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez p1, :cond_0

    .line 160
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    .line 162
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_0

    .line 164
    :cond_1
    sget-object p1, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    :goto_0
    return-object p1
.end method

.method private final isRunningOnEmulator()Z
    .locals 1

    .line 133
    sget-object v0, Lexpo/modules/core/utilities/EmulatorUtilities;->INSTANCE:Lexpo/modules/core/utilities/EmulatorUtilities;

    invoke-virtual {v0}, Lexpo/modules/core/utilities/EmulatorUtilities;->isRunningOnEmulator()Z

    move-result v0

    return v0
.end method
