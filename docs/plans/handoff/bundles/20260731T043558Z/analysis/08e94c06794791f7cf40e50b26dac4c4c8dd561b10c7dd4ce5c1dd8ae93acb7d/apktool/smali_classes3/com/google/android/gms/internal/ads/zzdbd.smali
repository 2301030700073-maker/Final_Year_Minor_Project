.class public final Lcom/google/android/gms/internal/ads/zzdbd;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczi;
.implements Lcom/google/android/gms/internal/ads/zzdan;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgf;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzd:Lcom/google/android/gms/internal/ads/zzfgf;

    return-void
.end method

.method private final zzb()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zziG:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzae:Lcom/google/android/gms/ads/internal/client/zzt;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzt;->zza:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zzs(Lcom/google/android/gms/internal/ads/zzdel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzd:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzfgf;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzaB:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdem;->zzs(Lcom/google/android/gms/internal/ads/zzdel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzdw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb()V

    return-void
.end method

.method public final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbd;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb()V

    :cond_0
    return-void
.end method
