.class final Lcom/google/android/gms/internal/ads/zzgqr;
.super Lcom/google/android/gms/internal/ads/zzgqq;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgqs;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqr;->zza:Lcom/google/android/gms/internal/ads/zzgqs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgpz;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqr;->zza:Lcom/google/android/gms/internal/ads/zzgqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqs;->zza()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgqp;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqp;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqu;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqu;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgmv;)V

    return-object v2
.end method
