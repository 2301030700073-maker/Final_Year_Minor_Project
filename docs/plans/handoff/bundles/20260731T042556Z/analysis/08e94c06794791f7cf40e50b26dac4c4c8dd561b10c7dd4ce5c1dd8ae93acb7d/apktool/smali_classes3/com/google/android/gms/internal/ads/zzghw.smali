.class final Lcom/google/android/gms/internal/ads/zzghw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzght;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgjd;

.field private final zzb:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzgjd;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghw;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzghw;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgaa;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zze()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzb()Lcom/google/android/gms/internal/ads/zzbag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbag;->zzb()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzghw;->zzb:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzghw;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x4eeb

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    :cond_2
    return v0

    .line 1
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzghw;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x4eea

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zze()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzghw;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x4eec

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    const/4 p1, 0x0

    return p1
.end method
