.class public final Lcom/google/android/gms/internal/zzgk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzCw:I

.field private zzCx:I

.field private zzCy:F

.field private zzEA:I

.field private zzEB:I

.field private zzEC:I

.field private zzED:D

.field private zzEE:Z

.field private zzEF:Z

.field private zzEG:I

.field private zzEn:I

.field private zzEo:Z

.field private zzEp:Z

.field private zzEq:Ljava/lang/String;

.field private zzEr:Ljava/lang/String;

.field private zzEs:Z

.field private zzEt:Z

.field private zzEu:Z

.field private zzEv:Ljava/lang/String;

.field private zzEw:Ljava/lang/String;

.field private zzEx:I

.field private zzEy:I

.field private zzEz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgk$zza;->zzA(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgk$zza;->zzB(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEo:Z

    const-string v2, "http://www.google.com"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEp:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEr:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgv()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEs:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEv:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEw:Ljava/lang/String;

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCy:F

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCw:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCx:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgk$zza;->zzA(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgk$zza;->zzB(Landroid/content/Context;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEo:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEo:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEp:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEp:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEr:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEr:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEs:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEs:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEv:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEv:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzgk;->zzEw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEw:Ljava/lang/String;

    iget p1, p2, Lcom/google/android/gms/internal/zzgk;->zzCy:F

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCy:F

    iget p1, p2, Lcom/google/android/gms/internal/zzgk;->zzCw:I

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCw:I

    iget p1, p2, Lcom/google/android/gms/internal/zzgk;->zzCx:I

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzCx:I

    return-void
.end method

.method private zzA(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEn:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEt:Z

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEu:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEx:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEB:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEC:I

    return-void
.end method

.method private zzB(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "level"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v2, v3

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzED:D

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    const/4 p1, 0x5

    if-ne v1, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzED:D

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEE:Z

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, p2, p0, v1}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    move-object p0, v1

    return-object p0

    :catch_0
    move-exception p0

    return-object v1
.end method

.method private zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEq:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/zzgk$zza;->zza(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEy:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEz:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEA:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, -0x1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEF:Z

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEG:I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEF:Z

    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/zzgk$zza;->zzEG:I

    return-void
.end method


# virtual methods
.method public zzfJ()Lcom/google/android/gms/internal/zzgk;
    .locals 36

    move-object/from16 v0, p0

    new-instance v26, Lcom/google/android/gms/internal/zzgk;

    iget v2, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEn:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEo:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEp:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEq:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEr:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEs:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEt:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEu:Z

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEv:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEw:Ljava/lang/String;

    iget v12, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEx:I

    iget v13, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEy:I

    iget v14, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEz:I

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEA:I

    iget v1, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEB:I

    move/from16 v27, v15

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEC:I

    move/from16 v28, v15

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzCy:F

    move/from16 v29, v15

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzCw:I

    move/from16 v30, v15

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzCx:I

    move/from16 v31, v14

    move/from16 v32, v15

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzED:D

    move-wide/from16 v33, v14

    iget-boolean v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEE:Z

    iget-boolean v14, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEF:Z

    move/from16 v35, v15

    iget v15, v0, Lcom/google/android/gms/internal/zzgk$zza;->zzEG:I

    move/from16 v16, v1

    move-object/from16 v1, v26

    move/from16 v24, v14

    move-wide/from16 v21, v33

    move/from16 v14, v31

    move/from16 v25, v15

    move/from16 v17, v28

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v32

    move/from16 v23, v35

    move/from16 v15, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/zzgk;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIFIIDZZI)V

    return-object v26
.end method
