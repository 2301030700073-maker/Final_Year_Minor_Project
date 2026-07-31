.class final synthetic Lcom/google/android/gms/internal/ads/zzehs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehv;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcqr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehs;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehs;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehs;->zzc:Lcom/google/android/gms/internal/ads/zzcqr;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehs;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehs;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzM:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzav()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehs;->zzc:Lcom/google/android/gms/internal/ads/zzcqr;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzJ()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->onPause()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqr;->zzh()Lcom/google/android/gms/internal/ads/zzcra;

    move-result-object p1

    return-object p1
.end method
