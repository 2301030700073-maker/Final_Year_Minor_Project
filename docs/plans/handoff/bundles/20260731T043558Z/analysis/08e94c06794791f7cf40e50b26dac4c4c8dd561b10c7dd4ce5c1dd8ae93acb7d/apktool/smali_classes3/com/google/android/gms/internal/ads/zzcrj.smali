.class final Lcom/google/android/gms/internal/ads/zzcrj;
.super Lcom/google/android/gms/internal/ads/zzcrg;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzffv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzctm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdma;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdgx;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzifb;

.field private final zzk:Ljava/util/concurrent/Executor;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzffv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/internal/ads/zzdma;Lcom/google/android/gms/internal/ads/zzdgx;Lcom/google/android/gms/internal/ads/zzifb;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcrg;-><init>(Lcom/google/android/gms/internal/ads/zzctn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zze:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzf:Lcom/google/android/gms/internal/ads/zzffv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzg:Lcom/google/android/gms/internal/ads/zzctm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzh:Lcom/google/android/gms/internal/ads/zzdma;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzi:Lcom/google/android/gms/internal/ads/zzdgx;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzj:Lcom/google/android/gms/internal/ads/zzifb;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzk:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzd:Landroid/view/View;

    return-object v0
.end method

.method public final zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zze:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcji;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaf(Lcom/google/android/gms/internal/ads/zzcji;)V

    .line 2
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    :cond_0
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzg:Lcom/google/android/gms/internal/ads/zzctm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzctm;->zza()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfgu; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzffv;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzffv;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzac:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzffu;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "FirstParty"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzd:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffv;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzffv;-><init>(IIZ)V

    return-object v1

    .line 4
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffv;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzffv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzf:Lcom/google/android/gms/internal/ads/zzffv;

    return-object v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zziI:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzffu;->zzag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zziJ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzffx;->zzc:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzffx;->zzd:I

    return v0
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzi:Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgx;->zza()V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Lcom/google/android/gms/internal/ads/zzcrj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzk:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcrg;->zzj()V

    return-void
.end method

.method final synthetic zzk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzh:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zzd()Lcom/google/android/gms/internal/ads/zzbjt;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzj:Lcom/google/android/gms/internal/ads/zzifb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjt;->zze(Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
