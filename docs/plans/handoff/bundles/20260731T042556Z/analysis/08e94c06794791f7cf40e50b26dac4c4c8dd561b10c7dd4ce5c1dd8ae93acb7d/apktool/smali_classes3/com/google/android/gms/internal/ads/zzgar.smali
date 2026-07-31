.class final Lcom/google/android/gms/internal/ads/zzgar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgab;


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzghy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzifw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfxt;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzghy;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifw;Lcom/google/android/gms/internal/ads/zzfxt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgar;->zze:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzf:Lcom/google/android/gms/internal/ads/zzifw;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzg:Lcom/google/android/gms/internal/ads/zzfxt;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "1.808261137"

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgaq;-><init>(Lcom/google/android/gms/internal/ads/zzgar;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzf:Lcom/google/android/gms/internal/ads/zzifw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifw;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbh;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghy;->zzb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgbh;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauz;->zzj()Lcom/google/android/gms/internal/ads/zzauc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgbh;->zzc(Lcom/google/android/gms/internal/ads/zzauc;)Lcom/google/android/gms/internal/ads/zzgbh;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyq;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgbh;->zzb(Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zza()Lcom/google/android/gms/internal/ads/zzgbi;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgbi;->zza()Lcom/google/android/gms/internal/ads/zzgbf;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzf:Lcom/google/android/gms/internal/ads/zzifw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifw;->zzb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgbh;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbh;

    move-result-object p2

    .line 3
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzgbh;->zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 4
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzgbh;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgbh;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzg:Lcom/google/android/gms/internal/ads/zzfxt;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfxt;->zze()Z

    move-result p4

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string p4, ""

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzgbh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgbh;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    .line 6
    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzghy;->zzc(Landroid/content/Context;Landroid/view/View;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauz;->zzj()Lcom/google/android/gms/internal/ads/zzauc;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzc(Lcom/google/android/gms/internal/ads/zzauc;)Lcom/google/android/gms/internal/ads/zzgbh;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfyq;->zzb:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 8
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzb(Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgbh;->zza()Lcom/google/android/gms/internal/ads/zzgbi;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgbi;->zza()Lcom/google/android/gms/internal/ads/zzgbf;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgar;->zze:Lcom/google/android/gms/internal/ads/zzifb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghy;->zzd()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgaz;->zzb(Ljava/util/Map;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzf:Lcom/google/android/gms/internal/ads/zzifw;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzifw;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgbh;

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbh;

    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzgbh;->zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgbh;

    const/4 p3, 0x0

    .line 6
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzgbh;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgbh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgbh;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgbh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfyq;->zzc:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgbh;->zzb(Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauz;->zzj()Lcom/google/android/gms/internal/ads/zzauc;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgbh;->zzc(Lcom/google/android/gms/internal/ads/zzauc;)Lcom/google/android/gms/internal/ads/zzgbh;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgbh;->zza()Lcom/google/android/gms/internal/ads/zzgbi;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgbi;->zza()Lcom/google/android/gms/internal/ads/zzgbf;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zze:Lcom/google/android/gms/internal/ads/zzifb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgaz;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaz;->zza(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method final synthetic zzh()Ljava/lang/Void;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbk;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zza()V

    const/4 v0, 0x0

    return-object v0
.end method
