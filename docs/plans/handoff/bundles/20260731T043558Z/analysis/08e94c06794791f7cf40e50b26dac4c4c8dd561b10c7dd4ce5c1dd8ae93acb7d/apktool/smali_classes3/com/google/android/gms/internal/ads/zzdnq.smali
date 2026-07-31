.class public final Lcom/google/android/gms/internal/ads/zzdnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdlv;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlq;Lcom/google/android/gms/internal/ads/zzdlv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzb:Lcom/google/android/gms/internal/ads/zzdlv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzc:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnq;->zzb(Lcom/google/android/gms/internal/ads/zzcgy;)V

    return-void
.end method

.method public final zzdw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzb:Lcom/google/android/gms/internal/ads/zzdlv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlv;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzZ()Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzX()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzfW:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzX()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzY()Lcom/google/android/gms/internal/ads/zzcca;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzq([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdno;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdno;-><init>(Lcom/google/android/gms/internal/ads/zzdnq;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzd:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzW()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzT()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdnq;->zzb(Lcom/google/android/gms/internal/ads/zzcgy;)V

    :cond_4
    :goto_1
    return-void
.end method
