.class public Lcom/google/android/gms/ads/internal/client/zzaa;
.super Ljava/lang/Object;


# static fields
.field private static final zzoW:Ljava/lang/Object;

.field private static zzta:Lcom/google/android/gms/ads/internal/client/zzaa;


# instance fields
.field private zztb:Lcom/google/android/gms/ads/internal/client/zzv;

.field private zztc:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzaa;->zzoW:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzcP()Lcom/google/android/gms/ads/internal/client/zzaa;
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzaa;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzaa;->zzta:Lcom/google/android/gms/ads/internal/client/zzaa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/zzaa;-><init>()V

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzaa;->zzta:Lcom/google/android/gms/ads/internal/client/zzaa;

    :cond_0
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzaa;->zzta:Lcom/google/android/gms/ads/internal/client/zzaa;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 3

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzaa;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztc:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztc:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzee;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzee;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcF()Lcom/google/android/gms/ads/internal/reward/client/zzf;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzee;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/client/zzi;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/reward/client/zzb;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztc:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztc:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzab;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzaa;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztb:Lcom/google/android/gms/ads/internal/client/zzv;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "applicationCode cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcD()Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzac;->zzt(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztb:Lcom/google/android/gms/ads/internal/client/zzv;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaa;->zztb:Lcom/google/android/gms/ads/internal/client/zzv;

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;

    invoke-direct {v1, p3}, Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zzab;)V

    move-object p3, v1

    :goto_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p1, "Fail to initialize mobile ads setting manager"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
