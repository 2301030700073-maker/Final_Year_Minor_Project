.class public final Lcom/google/android/gms/internal/zznj$zzd;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zznj$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzabE:Ljava/lang/String;

.field public zzawr:Z

.field public zzaws:J

.field public zzawt:D

.field public zzawu:Lcom/google/android/gms/internal/zznj$zzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj$zzd;->zzua()Lcom/google/android/gms/internal/zznj$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zznj$zzd;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zznj$zzd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-eqz v2, :cond_8

    return v1

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    iget-object v3, v0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zznj$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznj$zzd;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    xor-long v7, v3, v5

    long-to-int v3, v7

    add-int/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v0

    xor-long v7, v3, v5

    long-to-int v0, v7

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznj$zzc;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj$zzd;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zza(ID)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznj$zzd;->zzt(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zznj$zzd;

    move-result-object p1

    return-object p1
.end method

.method public zzt(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zznj$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zznj$zzd;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zznj$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznj$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public zzua()Lcom/google/android/gms/internal/zznj$zzd;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawr:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaws:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawt:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zznj$zzd;->zzaWf:I

    return-object p0
.end method
