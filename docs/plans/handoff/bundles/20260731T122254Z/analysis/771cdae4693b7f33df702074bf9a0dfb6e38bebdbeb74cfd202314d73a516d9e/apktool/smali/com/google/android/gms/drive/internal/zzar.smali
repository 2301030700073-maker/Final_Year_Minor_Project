.class public final Lcom/google/android/gms/drive/internal/zzar;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/drive/internal/zzar;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzafV:J

.field public zzafX:Ljava/lang/String;

.field public zzafY:J

.field public zzafZ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzar;->zzpH()Lcom/google/android/gms/drive/internal/zzar;

    return-void
.end method

.method public static zzl([B)Lcom/google/android/gms/drive/internal/zzar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzrm;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzar;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;[B)Lcom/google/android/gms/internal/zzrn;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/internal/zzar;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/drive/internal/zzar;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/internal/zzar;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    iget v3, v0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    iget v3, v0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzar;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v0, v6

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzar;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzar;->zzn(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzar;

    move-result-object p1

    return-object p1
.end method

.method public zzn(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzar;
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

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzar;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public zzpH()Lcom/google/android/gms/drive/internal/zzar;
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafX:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafY:J

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafV:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzafZ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/drive/internal/zzar;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzaWf:I

    return-object p0
.end method
