.class final Lcom/google/android/gms/internal/ads/zzgfp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzftl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzght;

.field private final zzd:Ljava/io/File;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgjd;

.field private final zzf:Ljava/util/concurrent/ExecutorService;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftl;Lcom/google/android/gms/internal/ads/zzggu;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzgjd;Ljava/util/concurrent/ExecutorService;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "3.-1"

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzc:Lcom/google/android/gms/internal/ads/zzght;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzd:Ljava/io/File;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzf:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggu;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfo;->zza:Lcom/google/android/gms/internal/ads/zzgfo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgfj;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzf:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgfk;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzf:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgfl;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgfl;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzf:Ljava/util/concurrent/ExecutorService;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzgfm;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzf:Ljava/util/concurrent/ExecutorService;

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzb()Lcom/google/android/gms/internal/ads/zzfrv;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x3a9c

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    return-void

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    check-cast p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfrv;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzftk; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x3a9d

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd(ILjava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgaa;)Ljava/lang/Void;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzc:Lcom/google/android/gms/internal/ads/zzght;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzght;->zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggu;->zzg()Ljava/io/File;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzd:Ljava/io/File;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzftb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zza()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggu;->zze()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzftb;-><init>(Lcom/google/android/gms/internal/ads/zzbai;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-direct {v1, p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzgfn;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;Lcom/google/android/gms/internal/ads/zzftb;Lcom/google/android/gms/internal/ads/zzgaa;)V

    const/16 p1, 0x3a9a

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf(ILjava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x3a9b

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgfi;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(I)V

    throw p1
.end method

.method final synthetic zzi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzb()Lcom/google/android/gms/internal/ads/zzfrv;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x3a9c

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfrv;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x3a9e

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    return-object v1
.end method

.method final synthetic zzj(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftl;->zzb()Lcom/google/android/gms/internal/ads/zzfrv;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p2, 0x3a9c

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {p2, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfrv;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p2, 0x3a9f

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    return-object v0
.end method

.method final synthetic zzk(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzftl;->zzb()Lcom/google/android/gms/internal/ads/zzfrv;

    move-result-object v0

    const-string p4, ""

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p2, 0x3a9c

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfrv;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p4, p1

    :goto_0
    return-object p4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p2, 0x3aa0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    return-object p4
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzftb;Lcom/google/android/gms/internal/ads/zzgaa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftl;->zza(Lcom/google/android/gms/internal/ads/zzftb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfp;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgaa;->zza()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbai;->zza()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "2."

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgfi;

    const/4 p2, 0x2

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(I)V

    throw p1
.end method
