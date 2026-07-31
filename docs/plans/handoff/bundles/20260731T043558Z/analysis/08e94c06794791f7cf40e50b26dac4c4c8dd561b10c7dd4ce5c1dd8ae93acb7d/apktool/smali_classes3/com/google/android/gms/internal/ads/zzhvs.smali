.class final Lcom/google/android/gms/internal/ads/zzhvs;
.super Lcom/google/android/gms/internal/ads/zzhvp;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# instance fields
.field private final zzg:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvp;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzg:Ljava/io/OutputStream;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzH(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzI()V

    :cond_0
    return-void
.end method

.method private final zzI()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzg:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zza:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    return-void
.end method


# virtual methods
.method public final zzJ(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    return-void
.end method

.method public final zzK(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zze(J)V

    return-void
.end method

.method public final zzL(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    return-void
.end method

.method public final zzM(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zzf(I)V

    return-void
.end method

.method public final zzN(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhvp;->zze(J)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhvs;->zzw([BII)V

    return-void
.end method

.method public final zzh(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhvp;->zzg(J)V

    return-void
.end method

.method public final zzi(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zzc(B)V

    return-void
.end method

.method public final zzj(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvs;->zzx(Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(ILcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvs;->zzl(Lcom/google/android/gms/internal/ads/zzhvi;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzk(Lcom/google/android/gms/internal/ads/zzhuz;)V

    return-void
.end method

.method public final zzm([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhvs;->zzw([BII)V

    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/ads/zzhxz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzL(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhvs;->zzp(Lcom/google/android/gms/internal/ads/zzhxz;)V

    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzL(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhvs;->zzk(ILcom/google/android/gms/internal/ads/zzhvi;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzhxz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhxz;->zzbr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxz;->zzdc(Lcom/google/android/gms/internal/ads/zzhvt;)V

    return-void
.end method

.method public final zzq(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzb:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzI()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzc(B)V

    return-void
.end method

.method public final zzr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhvs;->zzu(J)V

    return-void
.end method

.method public final zzs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    return-void
.end method

.method public final zzt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhvp;->zzf(I)V

    return-void
.end method

.method public final zzu(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zze(J)V

    return-void
.end method

.method public final zzv(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhvp;->zzg(J)V

    return-void
.end method

.method public final zzw([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zza:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zza:[B

    .line 2
    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzI()V

    sub-int/2addr p3, v2

    if-gt p3, v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzg:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    return-void
.end method

.method public final zzx(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzA(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzb:I

    if-le v2, v3, :cond_0

    .line 12
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhzo;->zzd(Ljava/lang/String;[BII)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzs(I)V

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzw([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzI()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzA(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhzn; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zza:[B

    sub-int/2addr v3, v1

    .line 5
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzhzo;->zzd(Ljava/lang/String;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhzo;->zzc(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzhvp;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    .line 9
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhzo;->zzd(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    .line 6
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhzn; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhvr;

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhvr;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    .line 11
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzhzn; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzF(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhzn;)V

    return-void
.end method

.method public final zzy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhvs;->zzc:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhvs;->zzI()V

    :cond_0
    return-void
.end method
