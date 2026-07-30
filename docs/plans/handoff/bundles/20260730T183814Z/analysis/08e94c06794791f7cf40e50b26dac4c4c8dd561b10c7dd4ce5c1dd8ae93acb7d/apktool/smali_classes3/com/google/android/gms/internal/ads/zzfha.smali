.class public final Lcom/google/android/gms/internal/ads/zzfha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfng;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfmy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzflm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcpe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzflm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfha;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzf:Lcom/google/android/gms/internal/ads/zzcpe;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfha;->zze:Lcom/google/android/gms/internal/ads/zzflm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdbd;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfha;->zzc(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzdbd;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/util/List;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzlb:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpe;->zzc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzf:Lcom/google/android/gms/internal/ads/zzcpe;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcpe;->zzb(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgz;

    .line 8
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfgz;-><init>(Lcom/google/android/gms/internal/ads/zzfha;I)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzc(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzdbd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfha;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzai:Z

    if-nez v1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfha;->zze:Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzfng;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzdbd;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfha;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffx;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfmy;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
