.class public final Lcom/google/android/gms/internal/ads/zzhnd;
.super Lcom/google/android/gms/internal/ads/zzhpq;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhnf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhta;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhnf;Lcom/google/android/gms/internal/ads/zzhta;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhpq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhnc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnc;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnf;->zzf()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhnb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnf;->zzf()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhnf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnd;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    return-object v0
.end method
