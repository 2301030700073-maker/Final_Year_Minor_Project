.class public final Lcom/google/android/gms/internal/ads/zzdky;
.super Lcom/google/android/gms/internal/ads/zzbie;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlq;

.field private zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbie;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)F
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zze()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzab()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzab()F

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzed;->zzm()F

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Remote exception getting video controller aspect ratio."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdky;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zznr:Lcom/google/android/gms/internal/ads/zzbel;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzU()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzU()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzN()Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcji;->zzb:I

    if-ltz v3, :cond_3

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcji;->zza:I

    if-lez v1, :cond_3

    int-to-float v0, v1

    int-to-float v1, v3

    div-float v2, v1, v0

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzD()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zze()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zzf()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zze()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zzf()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    cmpl-float v2, v1, v2

    if-nez v2, :cond_6

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdky;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0

    :cond_6
    move v2, v1

    :goto_1
    return v2
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzD()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbii;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzed;->zzj()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzed;->zzk()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzV()Z

    move-result v0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbjq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zza:Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzcie;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlq;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcie;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcie;->zzv(Lcom/google/android/gms/internal/ads/zzbjq;)V

    :cond_0
    return-void
.end method
