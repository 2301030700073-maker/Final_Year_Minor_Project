.class public final Lcom/google/android/gms/internal/ads/zzerd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcbn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcbn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzc:Lcom/google/android/gms/internal/ads/zzcbn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzerc;-><init>(Lcom/google/android/gms/internal/ads/zzerd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzere;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzere;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzc:Lcom/google/android/gms/internal/ads/zzcbn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfgn;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl()Z

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzere;-><init>(Lcom/google/android/gms/ads/internal/client/zzx;Z)V

    return-object v0
.end method
