.class public Lcom/google/android/gms/internal/zzkt;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/zzkt;->EMPTY_INTS:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/zzkt;->EMPTY_LONGS:[J

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzkt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static binarySearch([III)I
    .locals 4

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    return v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
