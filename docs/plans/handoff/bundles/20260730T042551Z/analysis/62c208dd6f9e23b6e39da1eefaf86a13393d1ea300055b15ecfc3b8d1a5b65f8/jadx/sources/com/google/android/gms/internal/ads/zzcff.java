package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.C3385nL;
import defpackage.QK;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class zzcff extends WebViewClient implements zzcgp {
    public static final /* synthetic */ int zzb = 0;
    private zzdrw zzA;
    private boolean zzB;
    private boolean zzC;
    private int zzD;
    private boolean zzE;
    private final zzebv zzG;
    private View.OnAttachStateChangeListener zzH;
    protected zzbxu zza;
    private final zzcex zzc;
    private final zzbbj zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzr zzh;
    private zzcgn zzi;
    private zzcgo zzj;
    private zzbif zzk;
    private zzbih zzl;
    private zzdds zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private com.google.android.gms.ads.internal.overlay.zzac zzw;
    private zzbsh zzx;
    private com.google.android.gms.ads.internal.zzb zzy;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzr = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzbsc zzz = null;
    private final HashSet zzF = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfC)).split(",")));

    public zzcff(zzcex zzcexVar, zzbbj zzbbjVar, boolean z, zzbsh zzbshVar, zzbsc zzbscVar, zzebv zzebvVar) {
        this.zzd = zzbbjVar;
        this.zzc = zzcexVar;
        this.zzs = z;
        this.zzx = zzbshVar;
        this.zzG = zzebvVar;
    }

    private static WebResourceResponse zzW() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaU)).booleanValue()) {
            return new WebResourceResponse(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    private final WebResourceResponse zzX(String str, Map map) {
        HttpURLConnection httpURLConnection;
        WebResourceResponse webResourceResponse;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i > 20) {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(10000);
                openConnection.setReadTimeout(10000);
                for (Map.Entry entry : map.entrySet()) {
                    openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (!(openConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                httpURLConnection = (HttpURLConnection) openConnection;
                com.google.android.gms.ads.internal.zzv.zzq().zzf(this.zzc.getContext(), this.zzc.zzn().afmaVersion, false, httpURLConnection, false, 60000);
                webResourceResponse = null;
                com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
                zzlVar.zzc(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                zzlVar.zze(httpURLConnection, responseCode);
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField == null) {
                    throw new IOException("Missing Location header in redirect");
                }
                if (headerField.startsWith("tel:")) {
                    break;
                }
                URL url2 = new URL(url, headerField);
                String protocol = url2.getProtocol();
                if (protocol == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Protocol is null");
                    webResourceResponse = zzW();
                    break;
                }
                if (!protocol.equals("http") && !protocol.equals("https")) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unsupported scheme: " + protocol);
                    webResourceResponse = zzW();
                    break;
                }
                com.google.android.gms.ads.internal.util.client.zzo.zze("Redirecting to " + headerField);
                httpURLConnection.disconnect();
                url = url2;
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            com.google.android.gms.ads.internal.zzv.zzq();
            String contentType = httpURLConnection.getContentType();
            boolean isEmpty = TextUtils.isEmpty(contentType);
            String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            String trim = isEmpty ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : contentType.split(";")[0].trim();
            com.google.android.gms.ads.internal.zzv.zzq();
            String contentType2 = httpURLConnection.getContentType();
            if (!TextUtils.isEmpty(contentType2)) {
                String[] split = contentType2.split(";");
                if (split.length != 1) {
                    int i2 = 1;
                    while (true) {
                        if (i2 >= split.length) {
                            break;
                        }
                        if (split[i2].trim().startsWith("charset")) {
                            String[] split2 = split[i2].trim().split("=");
                            if (split2.length > 1) {
                                str2 = split2[1].trim();
                                break;
                            }
                        }
                        i2++;
                    }
                }
            }
            String str3 = str2;
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            HashMap hashMap = new HashMap(headerFields.size());
            for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                    hashMap.put(entry2.getKey(), entry2.getValue().get(0));
                }
            }
            webResourceResponse = com.google.android.gms.ads.internal.zzv.zzr().zzb(trim, str3, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
            return webResourceResponse;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzY(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbjp) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzZ() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzH;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(final View view, final zzbxu zzbxuVar, final int i) {
        if (!zzbxuVar.zzi() || i <= 0) {
            return;
        }
        zzbxuVar.zzg(view);
        if (zzbxuVar.zzi()) {
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcey
                @Override // java.lang.Runnable
                public final void run() {
                    zzcff.this.zzq(view, zzbxuVar, i);
                }
            }, 100L);
        }
    }

    private static final boolean zzab(zzcex zzcexVar) {
        return zzcexVar.zzD() != null && zzcexVar.zzD().zzb();
    }

    private static final boolean zzac(boolean z, zzcex zzcexVar) {
        return (!z || zzcexVar.zzO().zzi() || zzcexVar.zzU().equals("interstitial_mb")) ? false : true;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzk(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            if (this.zzc.zzaE()) {
                com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                this.zzc.zzX();
                return;
            }
            this.zzB = true;
            zzcgo zzcgoVar = this.zzj;
            if (zzcgoVar != null) {
                zzcgoVar.zza();
                this.zzj = null;
            }
            zzh();
            if (this.zzc.zzL() != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlM)).booleanValue()) {
                    this.zzc.zzL().zzG(str);
                }
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
        this.zzp = i;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        int rendererPriorityAtExit;
        zzcex zzcexVar = this.zzc;
        didCrash = renderProcessGoneDetail.didCrash();
        rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
        return zzcexVar.zzaD(didCrash, rendererPriorityAtExit);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case ModuleDescriptor.MODULE_VERSION /* 127 */:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzk(parse);
        } else {
            if (this.zzn && webView == this.zzc.zzG()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzbxu zzbxuVar = this.zza;
                        if (zzbxuVar != null) {
                            zzbxuVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzdds zzddsVar = this.zzm;
                    if (zzddsVar != null) {
                        zzddsVar.zzdd();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.zzc.zzG().willNotDraw()) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    zzava zzI = this.zzc.zzI();
                    zzfcn zzS = this.zzc.zzS();
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlR)).booleanValue() || zzS == null) {
                        if (zzI != null && zzI.zzf(parse)) {
                            Context context = this.zzc.getContext();
                            zzcex zzcexVar = this.zzc;
                            parse = zzI.zza(parse, context, (View) zzcexVar, zzcexVar.zzi());
                        }
                    } else if (zzI != null && zzI.zzf(parse)) {
                        Context context2 = this.zzc.getContext();
                        zzcex zzcexVar2 = this.zzc;
                        parse = zzS.zza(parse, context2, (View) zzcexVar2, zzcexVar2.zzi());
                    }
                } catch (zzavb unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzy;
                if (zzbVar == null || zzbVar.zzc()) {
                    com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null);
                    zzcex zzcexVar3 = this.zzc;
                    zzv(zzcVar, true, false, zzcexVar3 != null ? zzcexVar3.zzr() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                } else {
                    zzbVar.zzb(str);
                }
            }
        }
        return true;
    }

    public final void zzA(boolean z, int i, String str, boolean z2, boolean z3) {
        zzcex zzcexVar = this.zzc;
        boolean zzaF = zzcexVar.zzaF();
        boolean zzac = zzac(zzaF, zzcexVar);
        boolean z4 = true;
        if (!zzac && z2) {
            z4 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzac ? null : this.zzg;
        zzcfe zzcfeVar = zzaF ? null : new zzcfe(this.zzc, this.zzh);
        zzbif zzbifVar = this.zzk;
        zzbih zzbihVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzac zzacVar = this.zzw;
        zzcex zzcexVar2 = this.zzc;
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfeVar, zzbifVar, zzbihVar, zzacVar, zzcexVar2, z, i, str, zzcexVar2.zzn(), z4 ? null : this.zzm, zzab(this.zzc) ? this.zzG : null, z3));
    }

    public final void zzB(String str, zzbjp zzbjpVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList();
                this.zze.put(str, list);
            }
            list.add(zzbjpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzC(zzcgn zzcgnVar) {
        this.zzi = zzcgnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzD(int i, int i2) {
        zzbsc zzbscVar = this.zzz;
        if (zzbscVar != null) {
            zzbscVar.zze(i, i2);
        }
    }

    public final void zzE(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzF(boolean z) {
        synchronized (this.zzf) {
            this.zzu = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzG(boolean z) {
        synchronized (this.zzf) {
            this.zzv = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzH() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcez
                @Override // java.lang.Runnable
                public final void run() {
                    zzcff.this.zzo();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzI(boolean z) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzJ(zzcgo zzcgoVar) {
        this.zzj = zzcgoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzK(zzcmk zzcmkVar, zzebk zzebkVar, zzfja zzfjaVar) {
        zzO("/click");
        if (zzebkVar == null || zzfjaVar == null) {
            zzB("/click", new zzbin(this.zzm, zzcmkVar));
        } else {
            zzB("/click", new zzfcr(this.zzm, zzcmkVar, zzfjaVar, zzebkVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzL(zzcmk zzcmkVar) {
        zzO("/click");
        zzB("/click", new zzbin(this.zzm, zzcmkVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzM(zzcmk zzcmkVar, zzebk zzebkVar, zzdrw zzdrwVar) {
        zzO("/open");
        zzB("/open", new zzbkb(this.zzy, this.zzz, zzebkVar, zzdrwVar, zzcmkVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzN(zzfbo zzfboVar) {
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(this.zzc.getContext())) {
            zzO("/logScionEvent");
            new HashMap();
            zzB("/logScionEvent", new zzbjv(this.zzc.getContext(), zzfboVar.zzaw));
        }
    }

    public final void zzO(String str) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.clear();
        }
    }

    public final void zzP(String str, zzbjp zzbjpVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbjpVar);
        }
    }

    public final void zzQ(String str, Predicate predicate) {
        synchronized (this.zzf) {
            List<zzbjp> list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbjp zzbjpVar : list) {
                if (predicate.apply(zzbjpVar)) {
                    arrayList.add(zzbjpVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final boolean zzR() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzu;
        }
        return z;
    }

    public final boolean zzS() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzv;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final boolean zzT() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzs;
        }
        return z;
    }

    public final boolean zzU() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzV(com.google.android.gms.ads.internal.client.zza zzaVar, zzbif zzbifVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbih zzbihVar, com.google.android.gms.ads.internal.overlay.zzac zzacVar, boolean z, zzbjs zzbjsVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbsj zzbsjVar, zzbxu zzbxuVar, final zzebk zzebkVar, final zzfja zzfjaVar, zzdrw zzdrwVar, zzbkj zzbkjVar, zzdds zzddsVar, zzbki zzbkiVar, zzbkc zzbkcVar, zzbjq zzbjqVar, zzcmk zzcmkVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzbxuVar, null) : zzbVar;
        this.zzz = new zzbsc(this.zzc, zzbsjVar);
        this.zza = zzbxuVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbb)).booleanValue()) {
            zzB("/adMetadata", new zzbie(zzbifVar));
        }
        if (zzbihVar != null) {
            zzB("/appEvent", new zzbig(zzbihVar));
        }
        zzB("/backButton", zzbjo.zzj);
        zzB("/refresh", zzbjo.zzk);
        zzB("/canOpenApp", zzbjo.zzb);
        zzB("/canOpenURLs", zzbjo.zza);
        zzB("/canOpenIntents", zzbjo.zzc);
        zzB("/close", zzbjo.zzd);
        zzB("/customClose", zzbjo.zze);
        zzB("/instrument", zzbjo.zzn);
        zzB("/delayPageLoaded", zzbjo.zzp);
        zzB("/delayPageClosed", zzbjo.zzq);
        zzB("/getLocationInfo", zzbjo.zzr);
        zzB("/log", zzbjo.zzg);
        zzB("/mraid", new zzbjw(zzbVar2, this.zzz, zzbsjVar));
        zzbsh zzbshVar = this.zzx;
        if (zzbshVar != null) {
            zzB("/mraidLoaded", zzbshVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzB("/open", new zzbkb(zzbVar2, this.zzz, zzebkVar, zzdrwVar, zzcmkVar));
        zzB("/precache", new zzcdf());
        zzB("/touch", zzbjo.zzi);
        zzB("/video", zzbjo.zzl);
        zzB("/videoMeta", zzbjo.zzm);
        if (zzebkVar == null || zzfjaVar == null) {
            zzB("/click", new zzbin(zzddsVar, zzcmkVar));
            zzB("/httpTrack", zzbjo.zzf);
        } else {
            zzB("/click", new zzfcr(zzddsVar, zzcmkVar, zzfjaVar, zzebkVar));
            zzB("/httpTrack", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzfcs
                @Override // com.google.android.gms.internal.ads.zzbjp
                public final void zza(Object obj, Map map) {
                    zzceo zzceoVar = (zzceo) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
                        return;
                    }
                    zzfbo zzD = zzceoVar.zzD();
                    if (zzD != null && !zzD.zzai) {
                        zzfja.this.zzd(str, zzD.zzax, null);
                        return;
                    }
                    zzfbr zzR = ((zzcga) zzceoVar).zzR();
                    if (zzR != null) {
                        zzebkVar.zzd(new zzebm(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis(), zzR.zzb, str, 2));
                    } else {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(this.zzc.getContext())) {
            Map hashMap = new HashMap();
            if (this.zzc.zzD() != null) {
                hashMap = this.zzc.zzD().zzaw;
            }
            zzB("/logScionEvent", new zzbjv(this.zzc.getContext(), hashMap));
        }
        if (zzbjsVar != null) {
            zzB("/setInterstitialProperties", new zzbjr(zzbjsVar));
        }
        if (zzbkjVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue()) {
                zzB("/inspectorNetworkExtras", zzbkjVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjg)).booleanValue() && zzbkiVar != null) {
            zzB("/shareSheet", zzbkiVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjl)).booleanValue() && zzbkcVar != null) {
            zzB("/inspectorOutOfContextTest", zzbkcVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjp)).booleanValue() && zzbjqVar != null) {
            zzB("/inspectorStorage", zzbjqVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlr)).booleanValue()) {
            zzB("/bindPlayStoreOverlay", zzbjo.zzu);
            zzB("/presentPlayStoreOverlay", zzbjo.zzv);
            zzB("/expandPlayStoreOverlay", zzbjo.zzw);
            zzB("/collapsePlayStoreOverlay", zzbjo.zzx);
            zzB("/closePlayStoreOverlay", zzbjo.zzy);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdr)).booleanValue()) {
            zzB("/setPAIDPersonalizationEnabled", zzbjo.zzA);
            zzB("/resetPAID", zzbjo.zzz);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlL)).booleanValue()) {
            zzcex zzcexVar = this.zzc;
            if (zzcexVar.zzD() != null && zzcexVar.zzD().zzar) {
                zzB("/writeToLocalStorage", zzbjo.zzB);
                zzB("/clearLocalStorageKeys", zzbjo.zzC);
            }
        }
        this.zzg = zzaVar;
        this.zzh = zzrVar;
        this.zzk = zzbifVar;
        this.zzl = zzbihVar;
        this.zzw = zzacVar;
        this.zzy = zzbVar3;
        this.zzm = zzddsVar;
        this.zzA = zzdrwVar;
        this.zzn = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b2 A[Catch: NoClassDefFoundError -> 0x02b3, Exception | NoClassDefFoundError -> 0x02b5, TRY_ENTER, TryCatch #12 {Exception | NoClassDefFoundError -> 0x02b5, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0021, B:8:0x0033, B:11:0x003a, B:13:0x0046, B:15:0x0062, B:17:0x007b, B:19:0x0092, B:20:0x0095, B:21:0x0098, B:24:0x00b2, B:26:0x00ca, B:28:0x00e3, B:45:0x01a1, B:46:0x01c4, B:49:0x0289, B:63:0x0213, B:64:0x0239, B:57:0x01ec, B:59:0x0143, B:79:0x00d7, B:80:0x023a, B:82:0x0244, B:84:0x024a, B:86:0x027d, B:90:0x0298, B:92:0x029e, B:94:0x02ac), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0289 A[Catch: NoClassDefFoundError -> 0x02b3, Exception | NoClassDefFoundError -> 0x02b5, TryCatch #12 {Exception | NoClassDefFoundError -> 0x02b5, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0021, B:8:0x0033, B:11:0x003a, B:13:0x0046, B:15:0x0062, B:17:0x007b, B:19:0x0092, B:20:0x0095, B:21:0x0098, B:24:0x00b2, B:26:0x00ca, B:28:0x00e3, B:45:0x01a1, B:46:0x01c4, B:49:0x0289, B:63:0x0213, B:64:0x0239, B:57:0x01ec, B:59:0x0143, B:79:0x00d7, B:80:0x023a, B:82:0x0244, B:84:0x024a, B:86:0x027d, B:90:0x0298, B:92:0x029e, B:94:0x02ac), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01e1 A[Catch: all -> 0x01c8, TryCatch #0 {all -> 0x01c8, blocks: (B:41:0x017d, B:43:0x018f, B:44:0x0196, B:53:0x01cf, B:55:0x01e1, B:56:0x01e8), top: B:27:0x00e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x023a A[Catch: NoClassDefFoundError -> 0x02b3, Exception | NoClassDefFoundError -> 0x02b5, TryCatch #12 {Exception | NoClassDefFoundError -> 0x02b5, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0021, B:8:0x0033, B:11:0x003a, B:13:0x0046, B:15:0x0062, B:17:0x007b, B:19:0x0092, B:20:0x0095, B:21:0x0098, B:24:0x00b2, B:26:0x00ca, B:28:0x00e3, B:45:0x01a1, B:46:0x01c4, B:49:0x0289, B:63:0x0213, B:64:0x0239, B:57:0x01ec, B:59:0x0143, B:79:0x00d7, B:80:0x023a, B:82:0x0244, B:84:0x024a, B:86:0x027d, B:90:0x0298, B:92:0x029e, B:94:0x02ac), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029e A[Catch: NoClassDefFoundError -> 0x02b3, Exception | NoClassDefFoundError -> 0x02b5, TryCatch #12 {Exception | NoClassDefFoundError -> 0x02b5, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0021, B:8:0x0033, B:11:0x003a, B:13:0x0046, B:15:0x0062, B:17:0x007b, B:19:0x0092, B:20:0x0095, B:21:0x0098, B:24:0x00b2, B:26:0x00ca, B:28:0x00e3, B:45:0x01a1, B:46:0x01c4, B:49:0x0289, B:63:0x0213, B:64:0x0239, B:57:0x01ec, B:59:0x0143, B:79:0x00d7, B:80:0x023a, B:82:0x0244, B:84:0x024a, B:86:0x027d, B:90:0x0298, B:92:0x029e, B:94:0x02ac), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02b1 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse zzc(java.lang.String r19, java.util.Map r20) {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcff.zzc(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzdd() {
        zzdds zzddsVar = this.zzm;
        if (zzddsVar != null) {
            zzddsVar.zzdd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final zzdrw zze() {
        return this.zzA;
    }

    public final void zzh() {
        if (this.zzi != null && ((this.zzB && this.zzD <= 0) || this.zzC || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbY)).booleanValue() && this.zzc.zzm() != null) {
                zzbcs.zza(this.zzc.zzm().zza(), this.zzc.zzk(), "awfllc");
            }
            zzcgn zzcgnVar = this.zzi;
            boolean z = false;
            if (!this.zzC && !this.zzo) {
                z = true;
            }
            zzcgnVar.zza(z, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzaf();
    }

    public final void zzi() {
        zzbxu zzbxuVar = this.zza;
        if (zzbxuVar != null) {
            zzbxuVar.zze();
            this.zza = null;
        }
        zzZ();
        synchronized (this.zzf) {
            this.zze.clear();
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
            this.zzj = null;
            this.zzk = null;
            this.zzl = null;
            this.zzn = false;
            this.zzs = false;
            this.zzt = false;
            this.zzu = false;
            this.zzw = null;
            this.zzy = null;
            this.zzx = null;
            zzbsc zzbscVar = this.zzz;
            if (zzbscVar != null) {
                zzbscVar.zza(true);
                this.zzz = null;
            }
        }
    }

    public final void zzj(boolean z) {
        this.zzE = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzk(Uri uri) {
        com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(String.valueOf(uri)));
        HashMap hashMap = this.zze;
        String path = uri.getPath();
        List list = (List) hashMap.get(path);
        if (path == null || list == null) {
            com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgB)).booleanValue() || com.google.android.gms.ads.internal.zzv.zzp().zzg() == null) {
                return;
            }
            final String substring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfa
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzcff.zzb;
                    com.google.android.gms.ads.internal.zzv.zzp().zzg().zze(substring);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfB)).booleanValue() && this.zzF.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfD)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                zzgch.zzr(com.google.android.gms.ads.internal.zzv.zzq().zzb(uri), new zzcfd(this, list, path, uri), zzbzw.zzf);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        zzY(com.google.android.gms.ads.internal.util.zzs.zzP(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzl() {
        zzbbj zzbbjVar = this.zzd;
        if (zzbbjVar != null) {
            zzbbjVar.zzc(10005);
        }
        this.zzC = true;
        this.zzp = 10004;
        this.zzq = "Page loaded delay cancel.";
        zzh();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzm() {
        synchronized (this.zzf) {
        }
        this.zzD++;
        zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzn() {
        this.zzD--;
        zzh();
    }

    public final /* synthetic */ void zzo() {
        this.zzc.zzad();
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zzc.zzL();
        if (zzL != null) {
            zzL.zzz();
        }
    }

    public final /* synthetic */ void zzp(boolean z, long j) {
        this.zzc.zzv(z, j);
    }

    public final /* synthetic */ void zzq(View view, zzbxu zzbxuVar, int i) {
        zzaa(view, zzbxuVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzr(int i, int i2, boolean z) {
        zzbsh zzbshVar = this.zzx;
        if (zzbshVar != null) {
            zzbshVar.zzb(i, i2);
        }
        zzbsc zzbscVar = this.zzz;
        if (zzbscVar != null) {
            zzbscVar.zzd(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgp
    public final void zzs() {
        zzbxu zzbxuVar = this.zza;
        if (zzbxuVar != null) {
            WebView zzG = this.zzc.zzG();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (zzG.isAttachedToWindow()) {
                zzaa(zzG, zzbxuVar, 10);
                return;
            }
            zzZ();
            zzcfc zzcfcVar = new zzcfc(this, zzbxuVar);
            this.zzH = zzcfcVar;
            ((View) this.zzc).addOnAttachStateChangeListener(zzcfcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzu() {
        zzdds zzddsVar = this.zzm;
        if (zzddsVar != null) {
            zzddsVar.zzu();
        }
    }

    public final void zzv(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        zzcex zzcexVar = this.zzc;
        boolean zzaF = zzcexVar.zzaF();
        boolean z3 = zzac(zzaF, zzcexVar) || z2;
        boolean z4 = z3 || !z;
        com.google.android.gms.ads.internal.client.zza zzaVar = z3 ? null : this.zzg;
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = zzaF ? null : this.zzh;
        com.google.android.gms.ads.internal.overlay.zzac zzacVar = this.zzw;
        zzcex zzcexVar2 = this.zzc;
        zzy(new AdOverlayInfoParcel(zzcVar, zzaVar, zzrVar, zzacVar, zzcexVar2.zzn(), zzcexVar2, z4 ? null : this.zzm, str));
    }

    public final void zzw(String str, String str2, int i) {
        zzebv zzebvVar = this.zzG;
        zzcex zzcexVar = this.zzc;
        zzy(new AdOverlayInfoParcel(zzcexVar, zzcexVar.zzn(), str, str2, 14, zzebvVar));
    }

    public final void zzx(boolean z, int i, boolean z2) {
        zzcex zzcexVar = this.zzc;
        boolean zzac = zzac(zzcexVar.zzaF(), zzcexVar);
        boolean z3 = true;
        if (!zzac && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzac ? null : this.zzg;
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzh;
        com.google.android.gms.ads.internal.overlay.zzac zzacVar = this.zzw;
        zzcex zzcexVar2 = this.zzc;
        zzy(new AdOverlayInfoParcel(zzaVar, zzrVar, zzacVar, zzcexVar2, z, i, zzcexVar2.zzn(), z3 ? null : this.zzm, zzab(this.zzc) ? this.zzG : null));
    }

    public final void zzy(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbsc zzbscVar = this.zzz;
        boolean zzf = zzbscVar != null ? zzbscVar.zzf() : false;
        com.google.android.gms.ads.internal.zzv.zzj();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzc.getContext(), adOverlayInfoParcel, !zzf, this.zzA);
        zzbxu zzbxuVar = this.zza;
        if (zzbxuVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzbxuVar.zzh(str);
        }
    }

    public final void zzz(boolean z, int i, String str, String str2, boolean z2) {
        zzcex zzcexVar = this.zzc;
        boolean zzaF = zzcexVar.zzaF();
        boolean zzac = zzac(zzaF, zzcexVar);
        boolean z3 = true;
        if (!zzac && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzac ? null : this.zzg;
        zzcfe zzcfeVar = zzaF ? null : new zzcfe(this.zzc, this.zzh);
        zzbif zzbifVar = this.zzk;
        zzbih zzbihVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzac zzacVar = this.zzw;
        zzcex zzcexVar2 = this.zzc;
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfeVar, zzbifVar, zzbihVar, zzacVar, zzcexVar2, z, i, str, str2, zzcexVar2.zzn(), z3 ? null : this.zzm, zzab(this.zzc) ? this.zzG : null));
    }
}
