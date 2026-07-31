.class public abstract Landroidx/camera/core/internal/utils/SizeUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final RESOLUTION_1080P:Landroid/util/Size;

.field public static final RESOLUTION_1440P:Landroid/util/Size;

.field public static final RESOLUTION_480P:Landroid/util/Size;

.field public static final RESOLUTION_720P:Landroid/util/Size;

.field public static final RESOLUTION_VGA:Landroid/util/Size;

.field public static final RESOLUTION_ZERO:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    .line 8
    .line 9
    new-instance v0, Landroid/util/Size;

    .line 10
    .line 11
    const/16 v1, 0x140

    .line 12
    .line 13
    const/16 v2, 0xf0

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/util/Size;

    .line 19
    .line 20
    const/16 v1, 0x280

    .line 21
    .line 22
    const/16 v2, 0x1e0

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    .line 28
    .line 29
    new-instance v0, Landroid/util/Size;

    .line 30
    .line 31
    const/16 v1, 0x2d0

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 37
    .line 38
    new-instance v0, Landroid/util/Size;

    .line 39
    .line 40
    const/16 v2, 0x500

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    .line 46
    .line 47
    new-instance v0, Landroid/util/Size;

    .line 48
    .line 49
    const/16 v1, 0x438

    .line 50
    .line 51
    const/16 v2, 0x780

    .line 52
    .line 53
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    .line 57
    .line 58
    new-instance v0, Landroid/util/Size;

    .line 59
    .line 60
    const/16 v1, 0x5a0

    .line 61
    .line 62
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    .line 66
    .line 67
    new-instance v0, Landroid/util/Size;

    .line 68
    .line 69
    const/16 v2, 0xa00

    .line 70
    .line 71
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroid/util/Size;

    .line 75
    .line 76
    const/16 v1, 0xf00

    .line 77
    .line 78
    const/16 v2, 0x870

    .line 79
    .line 80
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static getArea(Landroid/util/Size;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    mul-int/2addr p0, v0

    .line 10
    return p0
.end method
