.class public final Lcom/google/android/gms/internal/ads/zzcus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzebk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfks;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcns;

.field private final zze:Lcom/google/android/gms/internal/ads/zzelc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzded;

.field private zzg:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzecv;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcxs;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzecg;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzehp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzcns;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzded;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzecv;Lcom/google/android/gms/internal/ads/zzcxs;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzecg;Lcom/google/android/gms/internal/ads/zzehp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzd:Lcom/google/android/gms/internal/ads/zzcns;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcus;->zze:Lcom/google/android/gms/internal/ads/zzelc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzf:Lcom/google/android/gms/internal/ads/zzded;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzg:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzh:Lcom/google/android/gms/internal/ads/zzecv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzi:Lcom/google/android/gms/internal/ads/zzcxs;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzj:Ljava/util/concurrent/Executor;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzk:Lcom/google/android/gms/internal/ads/zzecg;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzl:Lcom/google/android/gms/internal/ads/zzehp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzg:Lcom/google/android/gms/internal/ads/zzfgf;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkm;->zzc:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzg:Lcom/google/android/gms/internal/ads/zzfgf;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfkd;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfkk;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/internal/ads/zzbdb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkm;->zzc:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzk:Lcom/google/android/gms/internal/ads/zzecg;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcur;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcur;-><init>(Lcom/google/android/gms/internal/ads/zzecg;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzi:Lcom/google/android/gms/internal/ads/zzcxs;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcus;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkm;->zzA:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzebk;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfkd;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfkk;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkm;->zzd:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcuq;-><init>(Lcom/google/android/gms/internal/ads/zzcus;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zze:Lcom/google/android/gms/internal/ads/zzelc;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgh:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkj;->zzh(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzded;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzf:Lcom/google/android/gms/internal/ads/zzded;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfij;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzi:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzx:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcup;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcup;-><init>(Lcom/google/android/gms/internal/ads/zzcus;Lcom/google/android/gms/internal/ads/zzfij;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcun;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcun;-><init>(Lcom/google/android/gms/internal/ads/zzcus;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzh:Lcom/google/android/gms/internal/ads/zzecv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzy:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecv;->zzb(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuo;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcuo;-><init>(Lcom/google/android/gms/internal/ads/zzcus;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzl:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhp;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzg:Lcom/google/android/gms/internal/ads/zzfgf;

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzd:Lcom/google/android/gms/internal/ads/zzcns;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcns;->zza(Lcom/google/android/gms/internal/ads/zzfgf;)V

    return-object p1
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfij;Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbxj;->zzi:Lcom/google/android/gms/internal/ads/zzfij;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzh:Lcom/google/android/gms/internal/ads/zzecv;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzecv;->zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzded;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzf:Lcom/google/android/gms/internal/ads/zzded;

    return-object v0
.end method
