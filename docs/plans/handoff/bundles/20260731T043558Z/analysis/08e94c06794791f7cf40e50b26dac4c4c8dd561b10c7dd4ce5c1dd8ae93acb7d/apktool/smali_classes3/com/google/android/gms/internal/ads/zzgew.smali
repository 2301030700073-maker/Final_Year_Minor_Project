.class final Lcom/google/android/gms/internal/ads/zzgew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzght;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzggu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgjd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzggf;Lcom/google/android/gms/internal/ads/zzggu;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgew;->zza:Lcom/google/android/gms/internal/ads/zzght;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzb:Lcom/google/android/gms/internal/ads/zzggf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzd:Lcom/google/android/gms/internal/ads/zzgjd;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggu;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgeu;->zza:Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgej;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgej;-><init>(Lcom/google/android/gms/internal/ads/zzgew;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgel;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgel;-><init>(Lcom/google/android/gms/internal/ads/zzgew;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgeh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgem;->zza:Lcom/google/android/gms/internal/ads/zzgem;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgeg;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgen;->zza:Lcom/google/android/gms/internal/ads/zzgen;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgei;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgeo;->zza:Lcom/google/android/gms/internal/ads/zzgeo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzgaa;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgew;->zza:Lcom/google/android/gms/internal/ads/zzght;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzght;->zza(Lcom/google/android/gms/internal/ads/zzgaa;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgeh;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgeh;-><init>([B)V

    throw p1
.end method

.method final synthetic zzc(Ljava/lang/Integer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzb:Lcom/google/android/gms/internal/ads/zzggf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzggf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgep;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgep;-><init>(Lcom/google/android/gms/internal/ads/zzgew;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgeq;-><init>(Lcom/google/android/gms/internal/ads/zzgew;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzger;->zza:Lcom/google/android/gms/internal/ads/zzger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzd:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x3ea

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfzy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzj()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzggu;->zzd([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzges;-><init>(Lcom/google/android/gms/internal/ads/zzgew;Lcom/google/android/gms/internal/ads/zzfzy;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzj()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zze()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzggu;->zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzget;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzget;-><init>(Lcom/google/android/gms/internal/ads/zzgew;Lcom/google/android/gms/internal/ads/zzfzy;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgek;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgek;-><init>(Lcom/google/android/gms/internal/ads/zzgew;Lcom/google/android/gms/internal/ads/zzfzy;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    :goto_0
    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unreachable"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfzy;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zza()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzggu;->zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfzy;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    const/4 p2, 0x2

    .line 1
    new-array p2, p2, [Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzb()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzggu;->zzd([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p2, v2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzggu;->zzf([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgui;->zzl([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzfzy;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgew;->zzc:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zza()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzggu;->zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
