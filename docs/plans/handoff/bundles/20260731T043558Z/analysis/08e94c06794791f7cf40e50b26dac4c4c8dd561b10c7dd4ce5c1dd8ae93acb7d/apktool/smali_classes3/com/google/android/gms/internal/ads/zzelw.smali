.class final synthetic Lcom/google/android/gms/internal/ads/zzelw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzelx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdsi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzdsi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelw;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzd:Lcom/google/android/gms/internal/ads/zzdsi;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelw;->zzd:Lcom/google/android/gms/internal/ads/zzdsi;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzelx;->zzc(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzdsi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
