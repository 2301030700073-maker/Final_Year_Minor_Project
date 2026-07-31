.class final synthetic Lcom/google/android/gms/internal/ads/zzfgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdgv;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcpe;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfng;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzefy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzefy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Lcom/google/android/gms/internal/ads/zzdgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzcpe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzd:Lcom/google/android/gms/internal/ads/zzefy;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Lcom/google/android/gms/internal/ads/zzdgv;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzblw;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdgv;)V

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzd:Lcom/google/android/gms/internal/ads/zzefy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzcpe;

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzblw;->zza(Lcom/google/android/gms/internal/ads/zzcgy;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfgv;

    invoke-direct {v3, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfgv;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzefy;)V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-static {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void
.end method
