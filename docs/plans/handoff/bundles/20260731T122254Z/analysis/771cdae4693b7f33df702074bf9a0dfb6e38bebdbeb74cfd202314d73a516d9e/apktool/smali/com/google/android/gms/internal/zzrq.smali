.class public final Lcom/google/android/gms/internal/zzrq;
.super Ljava/lang/Object;


# static fields
.field public static final zzaWh:[I

.field public static final zzaWi:[J

.field public static final zzaWj:[F

.field public static final zzaWk:[D

.field public static final zzaWl:[Z

.field public static final zzaWm:[Ljava/lang/String;

.field public static final zzaWn:[[B

.field public static final zzaWo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWi:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWj:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWk:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWl:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWm:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWn:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    return-void
.end method

.method static zzD(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzrf;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrf;->zzkA(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrf;->zzkA(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    return v1
.end method

.method static zzkU(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static zzkV(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
