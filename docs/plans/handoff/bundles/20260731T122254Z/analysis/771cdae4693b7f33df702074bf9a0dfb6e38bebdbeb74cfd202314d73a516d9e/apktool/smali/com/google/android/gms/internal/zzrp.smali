.class final Lcom/google/android/gms/internal/zzrp;
.super Ljava/lang/Object;


# instance fields
.field final tag:I

.field final zzaWg:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->tag:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzrp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/zzrp;

    iget v3, p0, Lcom/google/android/gms/internal/zzrp;->tag:I

    iget v4, v1, Lcom/google/android/gms/internal/zzrp;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->tag:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method zzB()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrg;->zzkO(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrg;->zzkN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzaWg:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrg;->zzD([B)V

    return-void
.end method
