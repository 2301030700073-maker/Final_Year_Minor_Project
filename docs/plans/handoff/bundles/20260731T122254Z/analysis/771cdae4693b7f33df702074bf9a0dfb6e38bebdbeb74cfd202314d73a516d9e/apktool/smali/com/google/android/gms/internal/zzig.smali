.class public Lcom/google/android/gms/internal/zzig;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzig$zza;
    }
.end annotation


# instance fields
.field private final zzBd:Lcom/google/android/gms/internal/zzie;

.field private zzFO:Ljava/lang/Boolean;

.field private final zzHo:Lcom/google/android/gms/internal/zzig$zza;

.field private zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzHq:Z

.field private zzHr:Z

.field private zzHs:Z

.field private zzHt:Z

.field private zzHu:Z

.field private zzHv:I

.field private zzHw:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field zzHx:Z

.field private final zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzqF:Landroid/view/WindowManager;

.field private final zzqt:Ljava/lang/Object;

.field private final zzvA:Lcom/google/android/gms/internal/zzan;

.field private zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private zzyW:I

.field private zzyX:I

.field private zzyZ:I

.field private zzza:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzig$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzyX:I

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzyW:I

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzyZ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzHo:Lcom/google/android/gms/internal/zzig$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzig;->zzHu:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzHv:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzig;->zzvA:Lcom/google/android/gms/internal/zzan;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzig;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p5, "window"

    invoke-virtual {p3, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzig;->zzqF:Landroid/view/WindowManager;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzig;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 p5, 0x1

    invoke-virtual {p3, p5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p3, p2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p3, p5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p3, p5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_0

    invoke-virtual {p3, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object p2

    iget-object p5, p6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {p2, p1, p5, p3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzig;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/google/android/gms/internal/zzhm;->zzb(Lcom/google/android/gms/internal/zzid;Z)Lcom/google/android/gms/internal/zzie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzhm;->zzf(Lcom/google/android/gms/internal/zzid;)Landroid/webkit/WebChromeClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgX()V

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoW()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzih;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzih;-><init>(Lcom/google/android/gms/internal/zzid;)V

    const-string p2, "googleAdsJsInterface"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzig;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzig;
    .locals 7

    new-instance v1, Lcom/google/android/gms/internal/zzig$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzig$zza;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzig;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzig$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object p0
.end method

.method private zzgU()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhc;->zzgc()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzFO:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzFO:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzig;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzig;->zzb(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzig;->zzb(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private zzgV()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgB()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHu:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/zzhm;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzHu:Z

    :cond_0
    return-void
.end method

.method private zzgX()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsn:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    const-string v1, "Disabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgY()V

    goto :goto_3

    :cond_1
    const-string v1, "Enabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgZ()V

    goto :goto_3

    :cond_2
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    const-string v1, "Disabling hardware acceleration on an overlay."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "Enabling hardware acceleration on an overlay."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private zzgY()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHt:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzhm;->zzm(Landroid/view/View;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHt:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private zzgZ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHt:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzhm;->zzl(Landroid/view/View;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHt:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgV()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzie;->reset()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHr:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbH()Lcom/google/android/gms/internal/zzdq;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzid;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHr:Z

    const-string v1, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzie;->zzgN()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "The webview is destroyed. Ignoring action."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestedOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzig;->zzHv:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public isDestroyed()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHr:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "The webview is destroyed. Ignoring action."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "The webview is destroyed. Ignoring action."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "The webview is destroyed. Ignoring action."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgW()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgV()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHx:Z

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgT()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgD()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzev()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzig;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsn:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzqF:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzig;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    if-eq v1, v7, :cond_4

    if-ne v1, v6, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7fffffff

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    :goto_1
    if-eq v4, v7, :cond_5

    if-ne v4, v6, :cond_6

    :cond_5
    move v8, v5

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    const/16 v6, 0x8

    if-gt v4, v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    if-le v1, v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_8

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzig;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzig;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHo:Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzig$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not enough space to show ad. Needs "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dp, but only has "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v5

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_a

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzig;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzig;->setMeasuredDimension(II)V

    :goto_3
    monitor-exit v0

    return-void

    :cond_b
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzvA:Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzvA:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzan;->zza(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzHo:Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzig$zza;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzig;->zzHv:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzHv:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public zzB(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgX()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzC(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzig;->zzHq:Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgV()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->setContext(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzig;->zzHq:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/zzig;->zzHv:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/zzhm;->zzb(Landroid/webkit/WebView;)Z

    const-string p2, "about:blank"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzig;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzie;->reset()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->requestLayout()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzig;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->zzaF(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzig;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzaD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected zzaE(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected zzaF(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoX()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgc()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzgU()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgc()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzig;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->zzaE(Ljava/lang/String;)V

    return-void
.end method

.method public zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzxT:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzHw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzb(Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzFO:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhc;->zzb(Ljava/lang/Boolean;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AFMA_ReceiveMessage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dispatching AFMA event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzig;->zzaF(Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzhl;->zzy(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzig;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public zzew()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzig;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzgA()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzig;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzgB()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzHo:Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->zzgB()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public zzgC()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzHo:Lcom/google/android/gms/internal/zzig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig$zza;->zzgC()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzgD()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHp:Lcom/google/android/gms/ads/internal/overlay/zzc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgE()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzHw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgF()Lcom/google/android/gms/internal/zzie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzBd:Lcom/google/android/gms/internal/zzie;

    return-object v0
.end method

.method public zzgG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzHq:Z

    return v0
.end method

.method public zzgH()Lcom/google/android/gms/internal/zzan;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzvA:Lcom/google/android/gms/internal/zzan;

    return-object v0
.end method

.method public zzgI()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public zzgJ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHs:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgK()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Destroying WebView!"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgW()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgT()Z
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzqF:Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgB()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzhl;->zzg(Landroid/app/Activity;)[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    aget v7, v2, v1

    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v7

    aget v2, v2, v3

    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    move v8, v2

    move v7, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v5

    move v8, v6

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzyW:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzyX:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzyZ:I

    if-ne v2, v7, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzza:I

    if-ne v2, v8, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzyW:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzyX:I

    if-eq v2, v6, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput v5, p0, Lcom/google/android/gms/internal/zzig;->zzyW:I

    iput v6, p0, Lcom/google/android/gms/internal/zzig;->zzyX:I

    iput v7, p0, Lcom/google/android/gms/internal/zzig;->zzyZ:I

    iput v8, p0, Lcom/google/android/gms/internal/zzig;->zzza:I

    new-instance v4, Lcom/google/android/gms/internal/zzeu;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzeu;-><init>(Lcom/google/android/gms/internal/zzid;)V

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqF:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/zzeu;->zza(IIIIFI)V

    return v1
.end method

.method zzgW()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzig;->zzgB()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHu:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzHx:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzHu:Z

    :cond_0
    return-void
.end method

.method zzgc()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzFO:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzv(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzig;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
