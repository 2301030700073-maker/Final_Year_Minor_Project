.class public abstract Lcom/google/android/gms/ads/internal/request/zzd;
.super Lcom/google/android/gms/internal/zzhh;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzd$zza;
    }
.end annotation


# instance fields
.field private zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field private final zzqt:Ljava/lang/Object;

.field private final zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzqt:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfv()V

    return-void
.end method

.method zza(Lcom/google/android/gms/ads/internal/request/zzi;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/request/zzg;-><init>(Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/ads/internal/request/zzi;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const-string p2, "Could not fetch ad response from ad request service due to an Exception."

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Could not fetch ad response from ad request service."

    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzhc;->zzc(Ljava/lang/Throwable;Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance p2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzqt:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzdP()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfw()Lcom/google/android/gms/ads/internal/request/zzi;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzd;->zza(Lcom/google/android/gms/ads/internal/request/zzi;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/zzd;->zzi(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfv()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzfv()V

    throw v0
.end method

.method protected zze(J)Z
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/32 p1, 0xea60

    sub-long v0, p1, v2

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    const/4 p1, 0x0

    if-gtz v2, :cond_0

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzqt:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    return p1
.end method

.method public abstract zzfv()V
.end method

.method public abstract zzfw()Lcom/google/android/gms/ads/internal/request/zzi;
.end method

.method protected zzi(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzd;->zze(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance p2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
