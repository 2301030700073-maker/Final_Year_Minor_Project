.class public abstract Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

.field public static final camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

.field public static final ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/HashMap;

    .line 2
    .line 3
    const-class v0, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "androidx.camera.camera2.pipe.extensionMode"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 16
    .line 17
    const-class v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "androidx.camera.camera2.pipe.captureRequestTag"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 30
    .line 31
    const-class v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "androidx.camera.camera2.pipe.ignore3ARequiredParameters"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 44
    .line 45
    return-void
.end method
