.class public Lcom/google/android/gms/ads/internal/overlay/zzc;
.super Lcom/google/android/gms/internal/zzex$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzc$zzb;,
        Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;,
        Lcom/google/android/gms/ads/internal/overlay/zzc$zza;
    }
.end annotation


# static fields
.field static final zzzj:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field zzoA:Lcom/google/android/gms/internal/zzid;

.field zzyG:Landroid/widget/RelativeLayout;

.field zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

.field zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

.field zzzo:Z

.field zzzp:Landroid/widget/FrameLayout;

.field zzzq:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field zzzr:Z

.field zzzs:Z

.field zzzt:Z

.field zzzu:I

.field private zzzv:Z

.field private zzzw:Z

.field private zzzx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzj:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzex$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzw:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzx:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;

    const-string v2, "Could not get info for ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGI:I

    const v3, 0x7270e0

    if-le v2, v3, :cond_2

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzx:Z

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzN:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzN:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzoU:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    :goto_1
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzD:Lcom/google/android/gms/ads/internal/overlay/zzf;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzx:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzD:Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzaW()V

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzK:I

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzC:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzC:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    :cond_6
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc$zzb;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzM:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzK:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;

    goto :goto_3

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    if-eqz v0, :cond_7

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbs()Lcom/google/android/gms/ads/internal/overlay/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzB:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzJ:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/zzk;)Z

    move-result v0

    if-nez v0, :cond_8

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzu(Z)V

    return-void

    :pswitch_2
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;-><init>(Lcom/google/android/gms/internal/zzid;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzu(Z)V

    return-void

    :goto_3
    const-string v2, "Could not determine ad overlay type."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzc$zza; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzeu()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzer()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/webkit/WebView;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzeu()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzK:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhm;->zzb(Landroid/webkit/WebView;)Z

    return-void

    :cond_2
    const-string v0, "The webview does not exit. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzeu()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaE()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzo:Z

    return-void
.end method

.method public zza(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zza(ZZ)V

    :cond_0
    return-void
.end method

.method public zzaE()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzv:Z

    return-void
.end method

.method public zzd(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzf(IIII)V

    :cond_0
    return-void
.end method

.method public zze(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzid;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzf(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzie;->zzD(Z)V

    :cond_0
    return-void
.end method

.method public zzeq()Lcom/google/android/gms/ads/internal/overlay/zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-object v0
.end method

.method public zzer()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaE()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzp:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzo:Z

    return-void
.end method

.method public zzes()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zzet()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzt(Z)V

    return-void
.end method

.method protected zzeu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzu:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzv(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;->zzpH:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzid;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzB(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;->zzzA:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;->index:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;->zzzz:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzm:Lcom/google/android/gms/ads/internal/overlay/zzc$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzD:Lcom/google/android/gms/ads/internal/overlay/zzf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzD:Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzaV()V

    :cond_2
    return-void
.end method

.method public zzev()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzew()V

    :cond_0
    return-void
.end method

.method protected zzew()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzew()V

    return-void
.end method

.method public zzt(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Landroid/content/Context;ILcom/google/android/gms/ads/internal/overlay/zzl;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v1, 0xb

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzH:Z

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zza(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected zzu(Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzc$zza;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzv:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;

    const-string v0, "Invalid activity, no window available."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzN:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzN:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzoV:Z

    if-eqz v2, :cond_3

    :cond_2
    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzhm;->zzgq()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v1, :cond_4

    :goto_0
    const/4 v3, 0x1

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzhm;->zzgr()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_0

    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delay onShow to next orientation change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    sget v3, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzj:I

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaE()V

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbw()Lcom/google/android/gms/internal/zzif;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/zzif;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzF:Lcom/google/android/gms/internal/zzde;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzJ:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzL:Lcom/google/android/gms/internal/zzdi;

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzgM()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/internal/zzie;->zzb(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzf;Lcom/google/android/gms/internal/zzde;Lcom/google/android/gms/ads/internal/overlay/zzk;ZLcom/google/android/gms/internal/zzdi;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzev;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzc$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzie;->zza(Lcom/google/android/gms/internal/zzie$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzf:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzf:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzid;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzI:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzI:Ljava/lang/String;

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/zzid;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzid;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_5

    :cond_a
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;

    const-string v0, "No URL or HTML to display in ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc$zza;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzk:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzzE:Lcom/google/android/gms/internal/zzid;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzid;->setContext(Landroid/content/Context;)V

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzs:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    sget v3, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzj:I

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzid;->setBackgroundColor(I)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzyG:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzt:Z

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzew()V

    :cond_f
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzt(Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgG()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    :cond_10
    return-void
.end method

.method protected zzv(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzid;->zzv(I)V

    return-void
.end method
