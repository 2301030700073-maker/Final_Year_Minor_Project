.class final Lcom/google/android/gms/internal/ads/zzgai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgjd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzd:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgai;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    return-void
.end method

.method private final zze(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgae;-><init>(Lcom/google/android/gms/internal/ads/zzgai;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgaf;->zza:Lcom/google/android/gms/internal/ads/zzgaf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    return-object p1
.end method


# virtual methods
.method final synthetic zza()Lcom/google/android/gms/internal/ads/zzgjd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgai;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    return-object v0
.end method

.method final zzb(IZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgai;->zze(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p1

    const-class p2, Ljava/lang/Throwable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgad;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzgad;-><init>(Lcom/google/android/gms/internal/ads/zzgai;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    return-object p1

    :cond_0
    return-object v0
.end method

.method final synthetic zzc(I)Lcom/google/android/gms/internal/ads/zzgab;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzc:Lcom/google/android/gms/internal/ads/zzifb;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgab;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zzb:Lcom/google/android/gms/internal/ads/zzifb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgab;

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgab;

    :goto_0
    return-object p1
.end method

.method final synthetic zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgai;->zze(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
