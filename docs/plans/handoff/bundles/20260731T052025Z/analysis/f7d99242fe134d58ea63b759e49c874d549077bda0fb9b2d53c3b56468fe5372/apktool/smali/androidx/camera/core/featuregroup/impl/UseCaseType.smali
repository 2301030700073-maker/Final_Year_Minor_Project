.class public final enum Landroidx/camera/core/featuregroup/impl/UseCaseType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final Companion:Lcom/jcraft/jzlib/Adler32;

.field public static final enum IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;


# instance fields
.field public final surfaceClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 2
    .line 3
    const-class v1, Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "PREVIEW"

    .line 7
    .line 8
    invoke-direct {v0, v2, v1, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 12
    .line 13
    new-instance v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    const-string v5, "IMAGE_CAPTURE"

    .line 18
    .line 19
    invoke-direct {v1, v3, v4, v5}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 23
    .line 24
    new-instance v5, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const-string v7, "IMAGE_ANALYSIS"

    .line 28
    .line 29
    invoke-direct {v5, v6, v4, v7}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v5, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 33
    .line 34
    new-instance v7, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 35
    .line 36
    const-class v8, Landroid/media/MediaCodec;

    .line 37
    .line 38
    const/4 v9, 0x3

    .line 39
    const-string v10, "VIDEO_CAPTURE"

    .line 40
    .line 41
    invoke-direct {v7, v9, v8, v10}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v7, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 45
    .line 46
    new-instance v8, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 47
    .line 48
    const-class v10, Landroid/graphics/SurfaceTexture;

    .line 49
    .line 50
    const/4 v11, 0x4

    .line 51
    const-string v12, "STREAM_SHARING"

    .line 52
    .line 53
    invoke-direct {v8, v11, v10, v12}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v8, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 57
    .line 58
    new-instance v10, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 59
    .line 60
    const/4 v12, 0x5

    .line 61
    const-string v13, "UNDEFINED"

    .line 62
    .line 63
    invoke-direct {v10, v12, v4, v13}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v10, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 67
    .line 68
    const/4 v4, 0x6

    .line 69
    new-array v4, v4, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 70
    .line 71
    aput-object v0, v4, v2

    .line 72
    .line 73
    aput-object v1, v4, v3

    .line 74
    .line 75
    aput-object v5, v4, v6

    .line 76
    .line 77
    aput-object v7, v4, v9

    .line 78
    .line 79
    aput-object v8, v4, v11

    .line 80
    .line 81
    aput-object v10, v4, v12

    .line 82
    .line 83
    sput-object v4, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 84
    .line 85
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    .line 86
    .line 87
    invoke-direct {v0, v6}, Lcom/jcraft/jzlib/Adler32;-><init>(I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    const-string p0, "Undefined"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const-string p0, "StreamSharing"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    const-string p0, "VideoCapture"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    const-string p0, "ImageAnalysis"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_4
    const-string p0, "ImageCapture"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_5
    const-string p0, "Preview"

    .line 43
    .line 44
    return-object p0
.end method
