.class final Lcom/google/android/gms/internal/ads/zzhtt;
.super Lcom/google/android/gms/internal/ads/zzhtv;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhtu;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhtu;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhtv;-><init>(Lcom/google/android/gms/internal/ads/zzhtx;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtv;->zza()Lcom/google/android/gms/internal/ads/zzhtw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhtw;->zzf:Ljava/lang/Object;

    return-object v0
.end method
