.class final synthetic Lcom/google/android/gms/internal/ads/zzdor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbzt;

.field private final synthetic zzd:Lcom/google/android/gms/ads/internal/zzb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzt;Lcom/google/android/gms/ads/internal/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdor;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzc:Lcom/google/android/gms/internal/ads/zzbzt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzd:Lcom/google/android/gms/ads/internal/zzb;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdor;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzc:Lcom/google/android/gms/internal/ads/zzbzt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzd:Lcom/google/android/gms/ads/internal/zzb;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzj(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzt;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
