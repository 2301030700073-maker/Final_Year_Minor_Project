.class final Lcom/google/android/gms/internal/ads/zzdjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctr;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdma;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzifw;Lcom/google/android/gms/internal/ads/zzdma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzd:Lcom/google/android/gms/internal/ads/zzifw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zze:Lcom/google/android/gms/internal/ads/zzdma;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzehk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zza:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzehk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejq;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzejq;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzehk;

    if-nez p1, :cond_5

    :goto_0
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zze:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zzd()Lcom/google/android/gms/internal/ads/zzbjt;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzd:Lcom/google/android/gms/internal/ads/zzifw;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifw;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctr;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_1
    return-object v1

    .line 4
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctw;->zzb(Lcom/google/android/gms/internal/ads/zzehk;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object p1

    return-object p1
.end method
