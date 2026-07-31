.class public Lcom/google/android/gms/ads/internal/zzl;
.super Lcom/google/android/gms/ads/internal/client/zzv$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zznw$zza;
.implements Lcom/google/android/gms/internal/zzpw$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field private static final zzoW:Ljava/lang/Object;

.field private static zzoX:Lcom/google/android/gms/ads/internal/zzl;


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzoY:Lcom/google/android/gms/internal/zzpv;

.field zzoZ:Ljava/lang/String;

.field zzpa:Ljava/lang/String;

.field private zzpb:Z

.field private zzpc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzv$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpb:Z

    return-void
.end method

.method public static zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzl;
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/zzl;->zzoX:Lcom/google/android/gms/ads/internal/zzl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/ads/internal/zzl;->zzoX:Lcom/google/android/gms/ads/internal/zzl;

    :cond_0
    sget-object p0, Lcom/google/android/gms/ads/internal/zzl;->zzoX:Lcom/google/android/gms/ads/internal/zzl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpc:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getClientId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzod;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/ads/AdActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzhl;->zzk(Landroid/app/Activity;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzai(Z)V

    const-string p2, "Interstitial Ad"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzod;->setScreenName(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    :cond_2
    const-string p2, "Expanded Ad"

    goto :goto_0

    :cond_3
    instance-of p2, p2, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzod;->setScreenName(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpb:Z

    if-eqz v1, :cond_0

    const-string p1, "Mobile ads is initialized already."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string p1, "Fail to initialize mobile ads because context is null."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Fail to initialize mobile ads because ApplicationCode is empty."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpb:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;)V
    .locals 4

    if-eqz p2, :cond_4

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;->zztf:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Missing permission android.permission.INTERNET"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Missing permission android.permission.ACCESS_NETWORK_STATE"

    goto :goto_0

    :cond_1
    const-string v0, "ca-app-[a-z0-9_-]+~[a-z0-9_-]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid application code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpc:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzoZ:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/ads/internal/client/MobileAdsSettingsParcel;->zztg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpa:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpw;->zzaK(Landroid/content/Context;)Lcom/google/android/gms/internal/zzpw;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzpv$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzoZ:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/zzpv$zza;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpa:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzpv$zza;->zzeS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpv$zza;

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzpv$zza;->zzzW()Lcom/google/android/gms/internal/zzpv;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpw$zza;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/zznw;->zzaC(Landroid/content/Context;)Lcom/google/android/gms/internal/zznw;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/zznw;->zza(Lcom/google/android/gms/internal/zznw$zza;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpw;->start()V

    :cond_4
    return-void
.end method

.method public zzbl()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpc:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzbm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpw;->zzaK(Landroid/content/Context;)Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzzX()Lcom/google/android/gms/internal/zzpv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzoY:Lcom/google/android/gms/internal/zzpv;

    return-void
.end method

.method public zzbn()I
    .locals 3

    sget-object v0, Lcom/google/android/gms/ads/internal/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzpc:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznw;->zzaC(Landroid/content/Context;)Lcom/google/android/gms/internal/zznw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznw;->zzwe()Lcom/google/android/gms/internal/zzod;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzod;->zzbn()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
