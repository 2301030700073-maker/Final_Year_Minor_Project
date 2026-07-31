.class public Lcom/google/android/gms/ads/internal/client/zze;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg<",
        "Lcom/google/android/gms/ads/internal/client/zzs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;I)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzak(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzs;

    const v5, 0x738638

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzs;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;II)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzr$zza;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Could not create remote AdManager."

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;I)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using BannerAdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v0, 0x1

    const v1, 0x738638

    invoke-direct {v6, v1, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    :cond_1
    return-object v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;I)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using InterstitialAdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v0, 0x1

    const v1, 0x738638

    invoke-direct {v6, v1, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzj;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    :cond_1
    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zze;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object p1

    return-object p1
.end method

.method protected zze(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zzl(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object p1

    return-object p1
.end method
