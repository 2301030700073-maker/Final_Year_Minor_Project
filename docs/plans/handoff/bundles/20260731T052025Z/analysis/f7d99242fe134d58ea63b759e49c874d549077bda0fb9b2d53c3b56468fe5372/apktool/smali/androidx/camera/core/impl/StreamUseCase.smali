.class public final enum Landroidx/camera/core/impl/StreamUseCase;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

.field public static final enum VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;


# instance fields
.field public final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroidx/camera/core/impl/StreamUseCase;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/camera/core/impl/StreamUseCase;->DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

    .line 10
    .line 11
    new-instance v1, Landroidx/camera/core/impl/StreamUseCase;

    .line 12
    .line 13
    const-string v3, "PREVIEW"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

    .line 20
    .line 21
    new-instance v3, Landroidx/camera/core/impl/StreamUseCase;

    .line 22
    .line 23
    const-string v5, "VIDEO_RECORD"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v3, v5, v6, v7}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    .line 31
    .line 32
    new-instance v5, Landroidx/camera/core/impl/StreamUseCase;

    .line 33
    .line 34
    const-string v8, "STILL_CAPTURE"

    .line 35
    .line 36
    invoke-direct {v5, v8, v7, v6}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/camera/core/impl/StreamUseCase;->STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

    .line 40
    .line 41
    new-instance v8, Landroidx/camera/core/impl/StreamUseCase;

    .line 42
    .line 43
    const-string v9, "VIDEO_CALL"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v9, v10, v11}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v9, Landroidx/camera/core/impl/StreamUseCase;

    .line 51
    .line 52
    const-string v12, "PREVIEW_VIDEO_STILL"

    .line 53
    .line 54
    invoke-direct {v9, v12, v11, v10}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v9, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    .line 58
    .line 59
    new-instance v12, Landroidx/camera/core/impl/StreamUseCase;

    .line 60
    .line 61
    const-string v13, "CROPPED_RAW"

    .line 62
    .line 63
    const/4 v14, 0x6

    .line 64
    invoke-direct {v12, v13, v14, v14}, Landroidx/camera/core/impl/StreamUseCase;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    const/4 v13, 0x7

    .line 68
    new-array v13, v13, [Landroidx/camera/core/impl/StreamUseCase;

    .line 69
    .line 70
    aput-object v0, v13, v2

    .line 71
    .line 72
    aput-object v1, v13, v4

    .line 73
    .line 74
    aput-object v3, v13, v6

    .line 75
    .line 76
    aput-object v5, v13, v7

    .line 77
    .line 78
    aput-object v8, v13, v10

    .line 79
    .line 80
    aput-object v9, v13, v11

    .line 81
    .line 82
    aput-object v12, v13, v14

    .line 83
    .line 84
    sput-object v13, Landroidx/camera/core/impl/StreamUseCase;->$VALUES:[Landroidx/camera/core/impl/StreamUseCase;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    int-to-long p1, p3

    .line 5
    iput-wide p1, p0, Landroidx/camera/core/impl/StreamUseCase;->value:J

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/StreamUseCase;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/impl/StreamUseCase;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/impl/StreamUseCase;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/StreamUseCase;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->$VALUES:[Landroidx/camera/core/impl/StreamUseCase;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/camera/core/impl/StreamUseCase;

    .line 8
    .line 9
    return-object v0
.end method
