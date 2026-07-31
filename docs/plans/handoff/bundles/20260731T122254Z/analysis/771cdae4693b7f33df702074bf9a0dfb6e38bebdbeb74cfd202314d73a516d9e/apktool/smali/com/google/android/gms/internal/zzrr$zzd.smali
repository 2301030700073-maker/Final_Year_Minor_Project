.class public final Lcom/google/android/gms/internal/zzrr$zzd;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzrr$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzaWA:I

.field public zzaWB:I

.field public zzaWC:Z

.field public zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

.field public zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

.field public zzaWF:[B

.field public zzaWG:[B

.field public zzaWH:[B

.field public zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

.field public zzaWJ:Ljava/lang/String;

.field public zzaWK:J

.field public zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

.field public zzaWM:[B

.field public zzaWy:J

.field public zzaWz:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrr$zzd;->zzBZ()Lcom/google/android/gms/internal/zzrr$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzrr$zzd;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzrr$zzd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    iget v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    iget v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-eqz v2, :cond_b

    return v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrr$zzb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-eqz v2, :cond_10

    return v1

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrr$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    if-eqz v2, :cond_12

    return v1

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-eqz v2, :cond_15

    return v1

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrr$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrr$zzd;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v5, v0, v2

    long-to-int v0, v5

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    ushr-long/2addr v5, v4

    xor-long v7, v2, v5

    long-to-int v0, v7

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrr$zzb;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrr$zza;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    ushr-long v3, v7, v4

    xor-long v7, v5, v3

    long-to-int v0, v7

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrr$zzc;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrr$zzd;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v5, 0x3

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    const-wide/32 v5, 0x2bf20

    cmp-long v7, v1, v5

    if-eqz v7, :cond_d

    const/16 v1, 0xf

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-eqz v1, :cond_e

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    return v0
.end method

.method public zzBZ()Lcom/google/android/gms/internal/zzrr$zzd;
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    iput v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzrr$zze;->zzCa()[Lcom/google/android/gms/internal/zzrr$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWf:I

    return-object p0
.end method

.method public zzE(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrr$zzd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrr$zzd;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzrr$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrr$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrr$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzrr$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrr$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzrr$zze;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzrr$zze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrr$zze;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/zzrr$zze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrr$zze;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x32 -> :sswitch_c
        0x3a -> :sswitch_b
        0x42 -> :sswitch_a
        0x4a -> :sswitch_9
        0x50 -> :sswitch_8
        0x58 -> :sswitch_7
        0x60 -> :sswitch_6
        0x6a -> :sswitch_5
        0x72 -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x88 -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWy:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWD:[Lcom/google/android/gms/internal/zzrr$zze;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWF:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWI:Lcom/google/android/gms/internal/zzrr$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWG:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWE:Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWC:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWA:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWB:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWH:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    const-wide/32 v4, 0x2bf20

    cmp-long v6, v0, v4

    if-eqz v6, :cond_d

    const/16 v0, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWK:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWL:Lcom/google/android/gms/internal/zzrr$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/16 v0, 0x11

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWz:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzd;->zzaWM:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(I[B)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrr$zzd;->zzE(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrr$zzd;

    move-result-object p1

    return-object p1
.end method
