package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzfqw;
import defpackage.C0315Kc;
import defpackage.C0687aM;
import defpackage.Cif;
import defpackage.InterfaceFutureC3942wq;
import defpackage.YL;
import defpackage.ZL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
final class zzcfw extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcex {
    public static final /* synthetic */ int zza = 0;
    private final String zzA;
    private zzcfz zzB;
    private boolean zzC;
    private boolean zzD;
    private zzbfk zzE;
    private zzbfi zzF;
    private zzazx zzG;
    private int zzH;
    private int zzI;
    private zzbcx zzJ;
    private final zzbcx zzK;
    private zzbcx zzL;
    private final zzbcy zzM;
    private int zzN;
    private com.google.android.gms.ads.internal.overlay.zzm zzO;
    private boolean zzP;
    private final com.google.android.gms.ads.internal.util.zzck zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private Map zzV;
    private final WindowManager zzW;
    private final zzbbj zzX;
    private boolean zzY;
    private final zzcgq zzb;
    private final zzava zzc;
    private final zzfcn zzd;
    private final zzbds zze;
    private final VersionInfoParcel zzf;
    private com.google.android.gms.ads.internal.zzn zzg;
    private final com.google.android.gms.ads.internal.zza zzh;
    private final DisplayMetrics zzi;
    private final float zzj;
    private zzfbo zzk;
    private zzfbr zzl;
    private boolean zzm;
    private boolean zzn;
    private zzcff zzo;
    private com.google.android.gms.ads.internal.overlay.zzm zzp;
    private zzecr zzq;
    private zzecp zzr;
    private zzcgr zzs;
    private final String zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private Boolean zzy;
    private boolean zzz;

    public zzcfw(zzcgq zzcgqVar, zzcgr zzcgrVar, String str, boolean z, boolean z2, zzava zzavaVar, zzbds zzbdsVar, VersionInfoParcel versionInfoParcel, zzbda zzbdaVar, com.google.android.gms.ads.internal.zzn zznVar, com.google.android.gms.ads.internal.zza zzaVar, zzbbj zzbbjVar, zzfbo zzfboVar, zzfbr zzfbrVar, zzfcn zzfcnVar) {
        super(zzcgqVar);
        zzfbr zzfbrVar2;
        this.zzm = false;
        this.zzn = false;
        this.zzz = true;
        this.zzA = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzR = -1;
        this.zzS = -1;
        this.zzT = -1;
        this.zzU = -1;
        this.zzb = zzcgqVar;
        this.zzs = zzcgrVar;
        this.zzt = str;
        this.zzw = z;
        this.zzc = zzavaVar;
        this.zzd = zzfcnVar;
        this.zze = zzbdsVar;
        this.zzf = versionInfoParcel;
        this.zzg = zznVar;
        this.zzh = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzW = windowManager;
        com.google.android.gms.ads.internal.zzv.zzq();
        DisplayMetrics zzu = com.google.android.gms.ads.internal.util.zzs.zzu(windowManager);
        this.zzi = zzu;
        this.zzj = zzu.density;
        this.zzX = zzbbjVar;
        this.zzk = zzfboVar;
        this.zzl = zzfbrVar;
        this.zzQ = new com.google.android.gms.ads.internal.util.zzck(zzcgqVar.zza(), this, this, null);
        this.zzY = false;
        setBackgroundColor(0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlv)).booleanValue()) {
            setSoundEffectsEnabled(false);
        }
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlu)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzv.zzq().zzc(zzcgqVar, versionInfoParcel.afmaVersion));
        com.google.android.gms.ads.internal.zzv.zzq();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzcd.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfqw zzfqwVar = zzs.zza;
                String absolutePath = context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings = settings;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaV)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        zzba();
        addJavascriptInterface(new zzcgd(this, new zzcgc(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbi();
        zzbcy zzbcyVar = new zzbcy(new zzbda(true, "make_wv", this.zzt));
        this.zzM = zzbcyVar;
        zzbcyVar.zza().zzc(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbY)).booleanValue() && (zzfbrVar2 = this.zzl) != null && zzfbrVar2.zzb != null) {
            zzbcyVar.zza().zzd("gqi", this.zzl.zzb);
        }
        zzbcyVar.zza();
        zzbcx zzf = zzbda.zzf();
        this.zzK = zzf;
        zzbcyVar.zzb("native:view_create", zzf);
        this.zzL = null;
        this.zzJ = null;
        com.google.android.gms.ads.internal.util.zzcg.zza().zzb(zzcgqVar);
        com.google.android.gms.ads.internal.zzv.zzp().zzt();
    }

    private final synchronized void zzba() {
        zzfbo zzfboVar = this.zzk;
        if (zzfboVar != null && zzfboVar.zzam) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Disabling hardware acceleration on an overlay.");
            zzbc();
            return;
        }
        if (!this.zzw && !this.zzs.zzi()) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Enabling hardware acceleration on an AdView.");
            zzbe();
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzo.zze("Enabling hardware acceleration on an overlay.");
        zzbe();
    }

    private final synchronized void zzbb() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        com.google.android.gms.ads.internal.zzv.zzp().zzr();
    }

    private final synchronized void zzbc() {
        if (!this.zzx) {
            setLayerType(1, null);
        }
        this.zzx = true;
    }

    private final void zzbd(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzd("onAdVisibilityChanged", hashMap);
    }

    private final synchronized void zzbe() {
        if (this.zzx) {
            setLayerType(0, null);
        }
        this.zzx = false;
    }

    private final synchronized void zzbf(String str) {
        final String str2 = "about:blank";
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable(str2) { // from class: com.google.android.gms.internal.ads.zzcfr
                public final /* synthetic */ String zzb = "about:blank";

                @Override // java.lang.Runnable
                public final void run() {
                    zzcfw.this.zzaW(this.zzb);
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdWebViewImpl.loadUrlUnsafe");
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not call loadUrl in destroy(). ", th);
        }
    }

    private final void zzbg() {
        zzbcs.zza(this.zzM.zza(), this.zzK, "aeh2");
    }

    private final synchronized void zzbh() {
        Map map = this.zzV;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((zzcde) it.next()).release();
            }
        }
        this.zzV = null;
    }

    private final void zzbi() {
        zzbcy zzbcyVar = this.zzM;
        if (zzbcyVar == null) {
            return;
        }
        zzbda zza2 = zzbcyVar.zza();
        zzbcq zzg = com.google.android.gms.ads.internal.zzv.zzp().zzg();
        if (zzg != null) {
            zzg.zzf(zza2);
        }
    }

    private final synchronized void zzbj() {
        Boolean zzl = com.google.android.gms.ads.internal.zzv.zzp().zzl();
        this.zzy = zzl;
        if (zzl == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zzaY(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                zzaY(Boolean.FALSE);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final synchronized void destroy() {
        zzbi();
        this.zzQ.zza();
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzb();
            this.zzp.zzm();
            this.zzp = null;
        }
        this.zzq = null;
        this.zzr = null;
        this.zzo.zzi();
        this.zzG = null;
        this.zzg = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.zzv) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzz().zzd(this);
        zzbh();
        this.zzv = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkF)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            zzX();
            return;
        }
        Activity zza2 = this.zzb.zza();
        if (zza2 != null && zza2.isDestroyed()) {
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            zzX();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("Initiating WebView self destruct sequence in 3...");
            com.google.android.gms.ads.internal.util.zze.zza("Loading blank page in WebView, 2...");
            zzbf("about:blank");
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkG)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            zzbzw.zzf.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfw.this.zzaU(str, valueCallback);
                }
            });
        }
    }

    public final void finalize() {
        try {
            synchronized (this) {
                if (!this.zzv) {
                    this.zzo.zzi();
                    com.google.android.gms.ads.internal.zzv.zzz().zzd(this);
                    zzbh();
                    zzbb();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final synchronized void loadData(String str, String str2, String str3) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final synchronized void loadUrl(final String str) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcft
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfw.this.zzaV(str);
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdWebViewImpl.loadUrl");
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not call loadUrl. ", th);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!zzaE()) {
            this.zzQ.zzc();
        }
        if (this.zzY) {
            onResume();
            this.zzY = false;
        }
        boolean z = this.zzC;
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null && zzcffVar.zzU()) {
            if (!this.zzD) {
                this.zzo.zza();
                this.zzo.zzb();
                this.zzD = true;
            }
            zzaZ();
            z = true;
        }
        zzbd(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        zzcff zzcffVar;
        synchronized (this) {
            if (!zzaE()) {
                this.zzQ.zzd();
            }
            super.onDetachedFromWindow();
            if (this.zzD && (zzcffVar = this.zzo) != null && zzcffVar.zzU() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzo.zza();
                this.zzo.zzb();
                this.zzD = false;
            }
        }
        zzbd(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkU)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            com.google.android.gms.ads.internal.util.zzs.zzT(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)));
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (zzaE()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zzaZ = zzaZ();
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL == null || !zzaZ) {
            return;
        }
        zzL.zzn();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01bc A[Catch: all -> 0x01e2, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x000f, B:12:0x0015, B:14:0x0019, B:17:0x0023, B:19:0x002b, B:22:0x0030, B:24:0x0038, B:26:0x004a, B:29:0x004f, B:31:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:41:0x008e, B:45:0x007f, B:48:0x0084, B:52:0x009b, B:54:0x00a3, B:56:0x00b5, B:59:0x00ba, B:61:0x00d6, B:62:0x00df, B:65:0x00db, B:66:0x00e4, B:68:0x00ec, B:71:0x00f7, B:78:0x011d, B:80:0x0124, B:84:0x012c, B:86:0x013e, B:88:0x014c, B:91:0x0159, B:95:0x015e, B:97:0x01a4, B:98:0x01a8, B:100:0x01af, B:105:0x01bc, B:107:0x01c2, B:108:0x01c5, B:110:0x01c9, B:111:0x01d2, B:117:0x01dd), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x013e A[Catch: all -> 0x01e2, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x000f, B:12:0x0015, B:14:0x0019, B:17:0x0023, B:19:0x002b, B:22:0x0030, B:24:0x0038, B:26:0x004a, B:29:0x004f, B:31:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:41:0x008e, B:45:0x007f, B:48:0x0084, B:52:0x009b, B:54:0x00a3, B:56:0x00b5, B:59:0x00ba, B:61:0x00d6, B:62:0x00df, B:65:0x00db, B:66:0x00e4, B:68:0x00ec, B:71:0x00f7, B:78:0x011d, B:80:0x0124, B:84:0x012c, B:86:0x013e, B:88:0x014c, B:91:0x0159, B:95:0x015e, B:97:0x01a4, B:98:0x01a8, B:100:0x01af, B:105:0x01bc, B:107:0x01c2, B:108:0x01c5, B:110:0x01c9, B:111:0x01d2, B:117:0x01dd), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x015e A[Catch: all -> 0x01e2, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x000f, B:12:0x0015, B:14:0x0019, B:17:0x0023, B:19:0x002b, B:22:0x0030, B:24:0x0038, B:26:0x004a, B:29:0x004f, B:31:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:41:0x008e, B:45:0x007f, B:48:0x0084, B:52:0x009b, B:54:0x00a3, B:56:0x00b5, B:59:0x00ba, B:61:0x00d6, B:62:0x00df, B:65:0x00db, B:66:0x00e4, B:68:0x00ec, B:71:0x00f7, B:78:0x011d, B:80:0x0124, B:84:0x012c, B:86:0x013e, B:88:0x014c, B:91:0x0159, B:95:0x015e, B:97:0x01a4, B:98:0x01a8, B:100:0x01af, B:105:0x01bc, B:107:0x01c2, B:108:0x01c5, B:110:0x01c9, B:111:0x01d2, B:117:0x01dd), top: B:3:0x0003 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfw.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final void onPause() {
        if (zzaE()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmu)).booleanValue() && C0315Kc.m1176return("MUTE_AUDIO")) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Muting webview");
                int i = YL.f4729do;
                if (!ZL.f4809new.mo2991new()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                C0687aM.Cdo.f4943do.mo4833new(this).setAudioMuted(true);
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not pause webview.", e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmx)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onPause");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final void onResume() {
        if (zzaE()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmu)).booleanValue() && C0315Kc.m1176return("MUTE_AUDIO")) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Unmuting webview");
                int i = YL.f4729do;
                if (!ZL.f4809new.mo2991new()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                C0687aM.Cdo.f4943do.mo4833new(this).setAudioMuted(false);
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not resume webview.", e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmx)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onResume");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdD)).booleanValue() && this.zzo.zzR();
        if ((!this.zzo.zzU() || this.zzo.zzS()) && !z) {
            zzava zzavaVar = this.zzc;
            if (zzavaVar != null) {
                zzavaVar.zzd(motionEvent);
            }
            zzbds zzbdsVar = this.zze;
            if (zzbdsVar != null) {
                zzbdsVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbfk zzbfkVar = this.zzE;
                if (zzbfkVar != null) {
                    zzbfkVar.zzd(motionEvent);
                }
            }
        }
        if (zzaE()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcex
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcff) {
            this.zzo = (zzcff) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaE()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized void zzA(int i) {
        this.zzN = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzB(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcbs
    public final synchronized void zzC(zzcfz zzcfzVar) {
        if (this.zzB != null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzB = zzcfzVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzceo
    public final zzfbo zzD() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final Context zzE() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcgm
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final WebViewClient zzH() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcgk
    public final zzava zzI() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized zzazx zzJ() {
        return this.zzG;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized zzbfk zzK() {
        return this.zzE;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzM() {
        return this.zzO;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final /* synthetic */ zzcgp zzN() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcgj
    public final synchronized zzcgr zzO() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized zzecp zzP() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized zzecr zzQ() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcga
    public final zzfbr zzR() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final zzfcn zzS() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final InterfaceFutureC3942wq zzT() {
        zzbds zzbdsVar = this.zze;
        return zzbdsVar == null ? zzgch.zzh(null) : zzbdsVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized String zzU() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final List zzV() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzW(zzfbo zzfboVar, zzfbr zzfbrVar) {
        this.zzk = zzfboVar;
        this.zzl = zzfbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzX() {
        com.google.android.gms.ads.internal.util.zze.zza("Destroying WebView!");
        zzbb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcfv(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzY() {
        zzbg();
        HashMap hashMap = new HashMap(1);
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzf.afmaVersion);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzZ(int i) {
        if (i == 0) {
            zzbcy zzbcyVar = this.zzM;
            zzbcs.zza(zzbcyVar.zza(), this.zzK, "aebb2");
        }
        zzbg();
        this.zzM.zza();
        this.zzM.zza().zzd("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzf.afmaVersion);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zza(String str) {
        zzaT(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzaA(String str, Predicate predicate) {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.zzQ(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized boolean zzaB() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized boolean zzaC() {
        return this.zzH > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final boolean zzaD(final boolean z, final int i) {
        destroy();
        this.zzX.zzb(new zzbbi() { // from class: com.google.android.gms.internal.ads.zzcfs
            @Override // com.google.android.gms.internal.ads.zzbbi
            public final void zza(zzbbq.zzt.zza zzaVar) {
                int i2 = zzcfw.zza;
                zzbbq.zzbl.zza zzb = zzbbq.zzbl.zzb();
                boolean zzf = zzb.zzf();
                boolean z2 = z;
                if (zzf != z2) {
                    zzb.zzd(z2);
                }
                zzb.zze(i);
                zzaVar.zzab(zzb.zzbr());
            }
        });
        this.zzX.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized boolean zzaE() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized boolean zzaF() {
        return this.zzw;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final boolean zzaG() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized boolean zzaH() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zzaJ(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        this.zzo.zzv(zzcVar, z, z2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zzaK(String str, String str2, int i) {
        this.zzo.zzw(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zzaL(boolean z, int i, boolean z2) {
        this.zzo.zzx(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.zzo.zzz(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zzo.zzA(z, i, str, z2, z3);
    }

    public final zzcff zzaO() {
        return this.zzo;
    }

    public final synchronized Boolean zzaP() {
        return this.zzy;
    }

    public final synchronized void zzaS(String str, ValueCallback valueCallback) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    public final void zzaT(String str) {
        if (!PlatformVersion.isAtLeastKitKat()) {
            zzaX("javascript:".concat(str));
            return;
        }
        if (zzaP() == null) {
            zzbj();
        }
        if (zzaP().booleanValue()) {
            zzaS(str, null);
        } else {
            zzaX("javascript:".concat(str));
        }
    }

    public final /* synthetic */ void zzaU(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public final /* synthetic */ void zzaV(String str) {
        super.loadUrl(str);
    }

    public final /* synthetic */ void zzaW(String str) {
        super.loadUrl("about:blank");
    }

    public final synchronized void zzaX(String str) {
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    public final void zzaY(Boolean bool) {
        synchronized (this) {
            this.zzy = bool;
        }
        com.google.android.gms.ads.internal.zzv.zzp().zzy(bool);
    }

    public final boolean zzaZ() {
        int i;
        int i2;
        if (this.zzo.zzT() || this.zzo.zzU()) {
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            DisplayMetrics displayMetrics = this.zzi;
            int zzv = com.google.android.gms.ads.internal.util.client.zzf.zzv(displayMetrics, displayMetrics.widthPixels);
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            DisplayMetrics displayMetrics2 = this.zzi;
            int zzv2 = com.google.android.gms.ads.internal.util.client.zzf.zzv(displayMetrics2, displayMetrics2.heightPixels);
            Activity zza2 = this.zzb.zza();
            if (zza2 == null || zza2.getWindow() == null) {
                i = zzv;
                i2 = zzv2;
            } else {
                com.google.android.gms.ads.internal.zzv.zzq();
                int[] zzQ = com.google.android.gms.ads.internal.util.zzs.zzQ(zza2);
                com.google.android.gms.ads.internal.client.zzbc.zzb();
                int zzv3 = com.google.android.gms.ads.internal.util.client.zzf.zzv(this.zzi, zzQ[0]);
                com.google.android.gms.ads.internal.client.zzbc.zzb();
                i2 = com.google.android.gms.ads.internal.util.client.zzf.zzv(this.zzi, zzQ[1]);
                i = zzv3;
            }
            int i3 = this.zzS;
            if (i3 != zzv || this.zzR != zzv2 || this.zzT != i || this.zzU != i2) {
                boolean z = (i3 == zzv && this.zzR == zzv2) ? false : true;
                this.zzS = zzv;
                this.zzR = zzv2;
                this.zzT = i;
                this.zzU = i2;
                new zzbsi(this, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).zzj(zzv, zzv2, i, i2, this.zzi.density, this.zzW.getDefaultDisplay().getRotation());
                return z;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzaa() {
        if (this.zzJ == null) {
            zzbcy zzbcyVar = this.zzM;
            zzbcs.zza(zzbcyVar.zza(), this.zzK, "aes2");
            this.zzM.zza();
            zzbcx zzf = zzbda.zzf();
            this.zzJ = zzf;
            this.zzM.zzb("native:view_show", zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.zzf.afmaVersion);
        zzd("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzab() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzv.zzs().zze()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzv.zzs().zza()));
        hashMap.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.util.zzab.zzb(getContext())));
        zzd("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzac(boolean z) {
        this.zzo.zzj(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzad() {
        this.zzQ.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzae(String str, String str2, String str3) {
        String str4;
        if (zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        String[] strArr = new String[1];
        String str5 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzab);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, str5);
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to build MRAID_ENV", e);
            str4 = null;
        }
        strArr[0] = str4;
        super.loadDataWithBaseURL(str, zzcgi.zzb(str2, strArr), "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzaf() {
        if (this.zzL == null) {
            this.zzM.zza();
            zzbcx zzf = zzbda.zzf();
            this.zzL = zzf;
            this.zzM.zzb("native:view_load", zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzag(String str, zzbjp zzbjpVar) {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.zzB(str, zzbjpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzah() {
        com.google.android.gms.ads.internal.util.zze.zza("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzai(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzp = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzaj(zzcgr zzcgrVar) {
        this.zzs = zzcgrVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzak(zzazx zzazxVar) {
        this.zzG = zzazxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzal(boolean z) {
        this.zzz = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzam() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzan(Context context) {
        this.zzb.setBaseContext(context);
        this.zzQ.zze(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzao(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzy(this.zzo.zzT(), z);
        } else {
            this.zzu = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzap(zzbfi zzbfiVar) {
        this.zzF = zzbfiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzaq(boolean z) {
        boolean z2 = this.zzw;
        this.zzw = z;
        zzba();
        if (z != z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzac)).booleanValue() || !this.zzs.zzi()) {
                new zzbsi(this, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).zzl(true != z ? "default" : "expanded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzar(zzbfk zzbfkVar) {
        this.zzE = zzbfkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzas(zzecp zzecpVar) {
        this.zzr = zzecpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzat(zzecr zzecrVar) {
        this.zzq = zzecrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzau(int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzA(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzav(boolean z) {
        this.zzY = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzaw(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzO = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzax(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        int i = this.zzH + (true != z ? -1 : 1);
        this.zzH = i;
        if (i > 0 || (zzmVar = this.zzp) == null) {
            return;
        }
        zzmVar.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final synchronized void zzay(boolean z) {
        if (z) {
            setBackgroundColor(0);
        }
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzB(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcex
    public final void zzaz(String str, zzbjp zzbjpVar) {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.zzP(str, zzbjpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zzb(String str, String str2) {
        zzaT(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zzd(String str, Map map) {
        try {
            zze(str, com.google.android.gms.ads.internal.client.zzbc.zzb().zzj(map));
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzdd() {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.zzdd();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzde() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzde();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzdf() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzdg() {
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL != null) {
            zzL.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final void zzdn(zzayj zzayjVar) {
        boolean z;
        synchronized (this) {
            z = zzayjVar.zzj;
            this.zzC = z;
        }
        zzbd(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        StringBuilder m6919this = Cif.m6919this("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        com.google.android.gms.ads.internal.util.client.zzo.zze("Dispatching AFMA event: ".concat(m6919this.toString()));
        zzaT(m6919this.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized int zzf() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcge, com.google.android.gms.internal.ads.zzcbs
    public final Activity zzi() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcbs
    public final com.google.android.gms.ads.internal.zza zzj() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final zzbcx zzk() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcbs
    public final zzbcy zzm() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcgl, com.google.android.gms.internal.ads.zzcbs
    public final VersionInfoParcel zzn() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final zzcbh zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized zzcde zzp(String str) {
        Map map = this.zzV;
        if (map == null) {
            return null;
        }
        return (zzcde) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcbs
    public final synchronized zzcfz zzq() {
        return this.zzB;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized String zzr() {
        zzfbr zzfbrVar = this.zzl;
        if (zzfbrVar == null) {
            return null;
        }
        return zzfbrVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized String zzs() {
        return this.zzA;
    }

    @Override // com.google.android.gms.internal.ads.zzcex, com.google.android.gms.internal.ads.zzcbs
    public final synchronized void zzt(String str, zzcde zzcdeVar) {
        if (this.zzV == null) {
            this.zzV = new HashMap();
        }
        this.zzV.put(str, zzcdeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzu() {
        zzcff zzcffVar = this.zzo;
        if (zzcffVar != null) {
            zzcffVar.zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzv(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        hashMap.put("duration", Long.toString(j));
        zzd("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final synchronized void zzw() {
        zzbfi zzbfiVar = this.zzF;
        if (zzbfiVar != null) {
            final zzdmm zzdmmVar = (zzdmm) zzbfiVar;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmk
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdmm.this.zzd();
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzz(boolean z) {
        this.zzo.zzE(false);
    }
}
