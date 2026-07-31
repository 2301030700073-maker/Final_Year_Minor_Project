.class public final Lcom/google/android/gms/internal/zzrc$zza$zza$zza;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrc$zza$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzrc$zza$zza$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaVA:[Ljava/lang/String;

.field public zzaVB:[J

.field public zzaVC:[F

.field public zzaVD:J

.field public zzaVq:[B

.field public zzaVr:Ljava/lang/String;

.field public zzaVs:D

.field public zzaVt:F

.field public zzaVu:J

.field public zzaVv:I

.field public zzaVw:I

.field public zzaVx:Z

.field public zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

.field public zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzBp()Lcom/google/android/gms/internal/zzrc$zza$zza$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    iget v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    iget v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrl;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrl;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v0, v6

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 11

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzrg;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzB(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v5, v5

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    aget-object v5, v5, v0

    if-eqz v5, :cond_8

    const/16 v6, 0x9

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    array-length v5, v5

    if-ge v0, v5, :cond_c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    aget-object v5, v5, v0

    if-eqz v5, :cond_b

    const/16 v6, 0xa

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    move v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v9, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_f

    iget-object v9, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    aget-object v9, v9, v1

    if-eqz v9, :cond_e

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9}, Lcom/google/android/gms/internal/zzrg;->zzfj(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v5, v9

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v0, v5

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v1, v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v5, v5

    if-ge v3, v5, :cond_11

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    aget-wide v9, v5, v3

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/zzrg;->zzY(J)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_12
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_13

    const/16 v1, 0xd

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v1, v1

    if-lez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public zzBp()Lcom/google/android/gms/internal/zzrc$zza$zza$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    iput v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzrc$zza;->zzBl()[Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzrc$zza$zza;->zzBn()[Lcom/google/android/gms/internal/zzrc$zza$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWm:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWi:[J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWj:[F

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrg;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zza(ID)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IF)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzz(II)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_8

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v4, v4

    if-ge v0, v4, :cond_e

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    aget-wide v6, v5, v0

    invoke-virtual {p1, v4, v6, v7}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v0, v0

    if-lez v0, :cond_10

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v0, v0

    if-ge v1, v0, :cond_10

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzrg;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzy(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc$zza$zza$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzy(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc$zza$zza$zza;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x75

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [F

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readFloat()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readFloat()F

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v2

    div-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    new-array v0, v0, [F

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v0

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readFloat()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVC:[F

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkD(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVD:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v2, v2

    :goto_6
    add-int/2addr v3, v2

    new-array v3, v3, [J

    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    array-length v1, v3

    if-ge v2, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    iput-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkD(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_9
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVB:[J

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    array-length v2, v2

    :goto_a
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_b
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVA:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    array-length v2, v2

    :goto_c
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13

    new-instance v1, Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzrc$zza$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzrc$zza$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVz:[Lcom/google/android/gms/internal/zzrc$zza$zza;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzrc$zza;

    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/zzrc$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzrc$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/zzrc$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzrc$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVy:[Lcom/google/android/gms/internal/zzrc$zza;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVx:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVw:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVv:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVu:J

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVt:F

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVs:D

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVr:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza$zza$zza;->zzaVq:[B

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x19 -> :sswitch_d
        0x25 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method
