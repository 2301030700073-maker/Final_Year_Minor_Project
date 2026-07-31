.class public final Lcom/google/android/gms/internal/ads/zzfw;
.super Lcom/google/android/gms/internal/ads/zzft;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfv;

.field private zzb:Landroid/net/Uri;

.field private zzc:[B

.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfu;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzft;-><init>(Z)V

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zza:Lcom/google/android/gms/internal/ads/zzfv;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zza(Z)V

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzc:[B

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzft;->zzh(I)V

    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgf;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzft;->zzf(Lcom/google/android/gms/internal/ads/zzgf;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgf;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzb:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zza:Lcom/google/android/gms/internal/ads/zzfv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfv;->zza(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzc:[B

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgf;->zze:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzc:[B

    array-length v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gtz v3, :cond_2

    long-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzd:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgf;->zzf:J

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    int-to-long v4, v2

    .line 6
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzf:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzft;->zzg(Lcom/google/android/gms/internal/ads/zzgf;)V

    if-eqz v3, :cond_1

    return-wide v0

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zze:I

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgc;

    const/16 v0, 0x7d8

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(I)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzft;->zzi()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzb:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zzc:[B

    return-void
.end method
