.class final Lcom/google/android/gms/internal/ads/zzdzd;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzb:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzb:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzg(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzb:Lcom/google/android/gms/internal/ads/zzdzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zza:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
