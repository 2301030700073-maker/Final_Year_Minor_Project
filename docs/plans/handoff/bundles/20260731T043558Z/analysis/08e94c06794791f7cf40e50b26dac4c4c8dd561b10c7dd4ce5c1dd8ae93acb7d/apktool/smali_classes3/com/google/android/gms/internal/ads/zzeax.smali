.class public final Lcom/google/android/gms/internal/ads/zzeax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzebw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzifb;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzebw;Lcom/google/android/gms/internal/ads/zzifb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeax;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzc:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzd:Lcom/google/android/gms/internal/ads/zzebw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeax;->zze:Lcom/google/android/gms/internal/ads/zzifb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

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

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzia:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzd:Lcom/google/android/gms/internal/ads/zzebw;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzc:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeau;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzeax;Lcom/google/android/gms/internal/ads/zzbxj;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzgi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeax;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-static {v0, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgui;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeaw;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Lcom/google/android/gms/internal/ads/zzeax;Lcom/google/android/gms/internal/ads/zzbxj;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    const-class v1, Ljava/lang/Throwable;

    .line 15
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbxj;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeax;->zze:Lcom/google/android/gms/internal/ads/zzifb;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzeea;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzeea;->zzk(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeav;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzeav;-><init>(Lcom/google/android/gms/internal/ads/zzbxj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/android/gms/internal/ads/zzeck;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeax;->zzd:Lcom/google/android/gms/internal/ads/zzebw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
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
