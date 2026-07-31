.class public Lcom/google/android/gms/ads/internal/zze;
.super Lcom/google/android/gms/ads/internal/zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzha;)Z
    .locals 3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzha;->zzCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object p2, p2, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzeg;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "View in mediation adapter is null."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzn(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp$zza;->getNextView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/google/android/gms/internal/zzid;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzid;->destroy()V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzp$zza;->removeView(Landroid/view/View;)V

    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zze;->zzb(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Could not add mediation view to view hierarchy."

    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p1

    const-string p2, "Could not get View from mediation adapter."

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/zzha;->zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzha;->zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp$zza;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzha;->zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzha;->zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzp$zza;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zze;->zzb(Landroid/view/View;)V

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzp$zza;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzp$zza;->showNext()V

    :cond_5
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzp$zza;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzid;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/zzid;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzp$zza;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzp;->zzbL()V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzp$zza;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzha;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzha;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzp;->zzbM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zze;->zzb(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzha;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zze;->zze(I)Z

    return v1

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zze;->zza(Lcom/google/android/gms/internal/zzha;Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzp;->zzbM()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzFl:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzop:Lcom/google/android/gms/internal/zzay;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzaz;

    move-result-object p1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaz;->zza(Lcom/google/android/gms/internal/zzaw;)V

    :cond_3
    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzie;->zzgS()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzp;->zzqg:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/google/android/gms/internal/zzha;->zzFl:Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzop:Lcom/google/android/gms/internal/zzay;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzqg:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzha;Landroid/view/View;)Lcom/google/android/gms/internal/zzaz;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected zzaU()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpH:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzhl;->zzG(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzp;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzon:Lcom/google/android/gms/ads/internal/zzp;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzp;->zzpK:Lcom/google/android/gms/ads/internal/zzp$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzp$zza;->setVisibility(I)V

    :cond_2
    return v0
.end method
