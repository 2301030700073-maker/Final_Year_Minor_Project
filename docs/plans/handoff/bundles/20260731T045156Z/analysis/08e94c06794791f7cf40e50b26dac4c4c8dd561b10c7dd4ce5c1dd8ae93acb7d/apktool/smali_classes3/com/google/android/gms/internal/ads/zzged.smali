.class final Lcom/google/android/gms/internal/ads/zzged;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzd:Z

.field private final zze:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzged;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzged;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzged;->zzd:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzged;->zze:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfh;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgew;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgec;->zza:Lcom/google/android/gms/internal/ads/zzgec;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgea;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgea;-><init>(Lcom/google/android/gms/internal/ads/zzged;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfh;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzged;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzged;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgeb;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzgeb;-><init>(Lcom/google/android/gms/internal/ads/zzged;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v3, v4, v1, v2, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzged;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgew;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgew;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfh;->zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgfh;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgfh;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgfh;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfh;->zzf(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfh;->zzg()I

    move-result v0

    return v0
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgev;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzged;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfh;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzi()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzged;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgew;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    return-object v0
.end method
