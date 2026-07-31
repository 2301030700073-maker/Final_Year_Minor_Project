.class public final Lcom/google/android/gms/internal/zzfl;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg<",
        "Lcom/google/android/gms/internal/zzfh;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzBb:Lcom/google/android/gms/internal/zzfl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfl;->zzBb:Lcom/google/android/gms/internal/zzfl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static zzc(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfl$zza;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzfl$zza;

    const-string v0, "InAppPurchaseManager requires the useClientJar flag in intent extras."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfl$zza;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.purchase.useClientJar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static zze(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfg;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzfl;->zzc(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using AdOverlay from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzfl;->zzBb:Lcom/google/android/gms/internal/zzfl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfl;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfg;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfl$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfl$zza;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfg;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfl;->zzak(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfh;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzfh;->zzd(Lcom/google/android/gms/dynamic/zzd;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfg$zza;->zzN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfg;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Could not create remote InAppPurchaseManager."

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method protected zzR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfh;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfh$zza;->zzO(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfh;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfl;->zzR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfh;

    move-result-object p1

    return-object p1
.end method
