.class public final Lcom/google/android/gms/drive/internal/zzas;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/drive/internal/zzas;",
        ">;"
    }
.end annotation


# instance fields
.field public zzafV:J

.field public zzafY:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzas;->zzpI()Lcom/google/android/gms/drive/internal/zzas;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/drive/internal/zzas;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/internal/zzas;

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzas;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v5, v0, v2

    long-to-int v0, v5

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    iget-wide v5, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    ushr-long v4, v5, v4

    xor-long v6, v2, v4

    long-to-int v0, v6

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzas;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzas;->zzo(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzas;

    move-result-object p1

    return-object p1
.end method

.method public zzo(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzas;
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

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzas;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public zzpI()Lcom/google/android/gms/drive/internal/zzas;
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafY:J

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzafV:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzaWf:I

    return-object p0
.end method
