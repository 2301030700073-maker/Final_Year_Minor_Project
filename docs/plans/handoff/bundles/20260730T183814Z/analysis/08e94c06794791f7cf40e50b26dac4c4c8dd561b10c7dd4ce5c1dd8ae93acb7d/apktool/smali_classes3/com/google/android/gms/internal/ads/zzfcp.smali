.class final Lcom/google/android/gms/internal/ads/zzfcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfiv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfiw;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcs;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcs;->zzb:Lcom/google/android/gms/internal/ads/zzfdn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcs;->zza:Lcom/google/android/gms/internal/ads/zzfdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    const/4 v2, 0x0

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfco;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfco;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfil;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfco;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfco;->zza()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfil;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method
