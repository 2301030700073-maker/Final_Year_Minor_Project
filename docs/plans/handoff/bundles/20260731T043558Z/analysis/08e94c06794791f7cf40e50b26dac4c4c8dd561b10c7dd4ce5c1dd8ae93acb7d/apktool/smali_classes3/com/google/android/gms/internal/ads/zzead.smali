.class public final Lcom/google/android/gms/internal/ads/zzead;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzebn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzebn;Lcom/google/android/gms/internal/ads/zzifb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzead;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzead;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzead;->zzc:Lcom/google/android/gms/internal/ads/zzebn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzead;->zzd:Lcom/google/android/gms/internal/ads/zzifb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzecj;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzecj;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzead;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeac;-><init>(Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzbxj;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzead;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    const-class v2, Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzdzz;

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeaa;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeaa;-><init>(Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzbxj;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzead;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    const-class v1, Lcom/google/android/gms/internal/ads/zzecj;

    .line 8
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/android/gms/internal/ads/zzeck;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzead;->zzc:Lcom/google/android/gms/internal/ads/zzebn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebn;->zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeck;

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbxj;ILcom/google/android/gms/internal/ads/zzecj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzead;->zzd:Lcom/google/android/gms/internal/ads/zzifb;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzeea;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzeea;->zzb(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeab;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzeab;-><init>(Lcom/google/android/gms/internal/ads/zzbxj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzead;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
