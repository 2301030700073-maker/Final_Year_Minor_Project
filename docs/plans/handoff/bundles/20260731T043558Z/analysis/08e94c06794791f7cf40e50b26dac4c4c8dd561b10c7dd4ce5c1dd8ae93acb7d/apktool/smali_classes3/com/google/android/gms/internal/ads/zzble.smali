.class final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaz()Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaz()Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbch;->zza()V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb()V

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzM()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb()V

    return-void

    .line 8
    :cond_2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method
