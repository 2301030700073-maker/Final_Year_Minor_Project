.class final Lcom/google/android/gms/internal/ads/zzaab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaba;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzabg;

.field private final zzd:Ljava/util/Queue;

.field private zze:Landroid/view/Surface;

.field private zzf:Lcom/google/android/gms/internal/ads/zzv;

.field private zzg:J

.field private zzh:Lcom/google/android/gms/internal/ads/zzabu;

.field private zzi:Ljava/util/concurrent/Executor;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaba;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzaba;->zzg(Lcom/google/android/gms/internal/ads/zzdc;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzabg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaa;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaaa;-><init>(Lcom/google/android/gms/internal/ads/zzaab;[B)V

    invoke-direct {p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzaba;Lcom/google/android/gms/internal/ads/zzabb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzd:Ljava/util/Queue;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzg:J

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabu;->zzb:Lcom/google/android/gms/internal/ads/zzabu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzh:Lcom/google/android/gms/internal/ads/zzabu;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzzw;->zza:Lcom/google/android/gms/internal/ads/zzzw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzi:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzzu;->zza:Lcom/google/android/gms/internal/ads/zzzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzj:Lcom/google/android/gms/internal/ads/zzaax;

    return-void
.end method


# virtual methods
.method final synthetic zzA()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zze:Landroid/view/Surface;

    return-object v0
.end method

.method final synthetic zzB()Lcom/google/android/gms/internal/ads/zzabu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzh:Lcom/google/android/gms/internal/ads/zzabu;

    return-object v0
.end method

.method final synthetic zzC()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzi:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzD()Lcom/google/android/gms/internal/ads/zzaax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzj:Lcom/google/android/gms/internal/ads/zzaax;

    return-object v0
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaba;->zzb()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaba;->zzc()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzabu;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzh:Lcom/google/android/gms/internal/ads/zzabu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzi:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzg(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzl()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabg;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzd:Ljava/util/Queue;

    .line 4
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final zzh(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzi(Z)Z

    move-result p1

    return p1
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabg;->zzf()V

    return-void
.end method

.method public final zzj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabg;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzk()Landroid/view/Surface;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zze:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzaax;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzj:Lcom/google/android/gms/internal/ads/zzaax;

    return-void
.end method

.method public final zzm(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzn(F)V

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzo(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zze:Landroid/view/Surface;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzd(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzq()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zze:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaba;->zzd(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzr(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzm(I)V

    return-void
.end method

.method public final zzs(ILcom/google/android/gms/internal/ads/zzv;JILjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 2
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget v0, p6, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-ne p1, v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-eq v0, p6, :cond_1

    :cond_0
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    invoke-virtual {p6, p1, v0}, Lcom/google/android/gms/internal/ads/zzabg;->zzc(II)V

    .line 4
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    cmpl-float p6, p1, p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    .line 5
    invoke-virtual {p6, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zze(F)V

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzg:J

    cmp-long p1, p3, p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    .line 6
    invoke-virtual {p1, p5, p3, p4}, Lcom/google/android/gms/internal/ads/zzabg;->zzd(IJ)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzg:J

    :cond_3
    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaba;->zzh()V

    return-void
.end method

.method public final zzu(JLcom/google/android/gms/internal/ads/zzabv;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzd:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzabg;->zze(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzi:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzv(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabw;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzc:Lcom/google/android/gms/internal/ads/zzabg;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabg;->zzb(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzib; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabw;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzabw;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    throw p2
.end method

.method public final zzw(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzj(Z)V

    return-void
.end method

.method public final zzx()V
    .locals 0

    return-void
.end method

.method final synthetic zzy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzh:Lcom/google/android/gms/internal/ads/zzabu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zza()V

    return-void
.end method

.method final synthetic zzz()Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzd:Ljava/util/Queue;

    return-object v0
.end method
