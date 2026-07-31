package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbbu extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final zzbbl zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;

    public zzbbu() {
        zzbbl zzbblVar = new zzbbl();
        this.zza = false;
        this.zzb = false;
        this.zzd = zzbblVar;
        this.zzc = new Object();
        this.zzf = ((Long) zzbgl.zzd.zze()).intValue();
        this.zzg = ((Long) zzbgl.zza.zze()).intValue();
        this.zzh = ((Long) zzbgl.zze.zze()).intValue();
        this.zzi = ((Long) zzbgl.zzc.zze()).intValue();
        this.zzj = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzan)).intValue();
        this.zzk = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzao)).intValue();
        this.zzl = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzap)).intValue();
        this.zze = ((Long) zzbgl.zzf.zze()).intValue();
        this.zzm = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzar);
        this.zzn = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzas)).booleanValue();
        this.zzo = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzat)).booleanValue();
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzau)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0042, code lost:
    
        if (r3.importance != 100) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0048, code lost:
    
        if (r2.inKeyguardRestrictedInputMode() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004a, code lost:
    
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0052, code lost:
    
        if (r0 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0058, code lost:
    
        if (r0.isScreenOn() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005a, code lost:
    
        r0 = com.google.android.gms.ads.internal.zzt.zzg().zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0062, code lost:
    
        if (r0 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0064, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("ContentFetchThread: no activity. Sleeping.");
        zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x006f, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0074, code lost:
    
        if (r0.getWindow() == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x007e, code lost:
    
        if (r0.getWindow().getDecorView() == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0080, code lost:
    
        r1 = r0.getWindow().getDecorView().findViewById(android.R.id.content);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0090, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0091, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzh().zzg(r0, "ContentFetchTask.extractContent");
        r2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Failed getting root view of activity. Content not extracted.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00dc, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ca, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzt.zzh().zzg(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e6 A[EXC_TOP_SPLITTER, LOOP:1: B:9:0x00e6->B:16:0x00e6, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbu.run():void");
    }

    public final void zza() {
        synchronized (this.zzc) {
            if (this.zza) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Content hash thread already started, quitting...");
            } else {
                this.zza = true;
                start();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006a, code lost:
    
        if (r11 == 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzb(android.view.View r11) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzbbk r9 = new com.google.android.gms.internal.ads.zzbbk     // Catch: java.lang.Exception -> L7c
            int r1 = r10.zzf     // Catch: java.lang.Exception -> L7c
            int r2 = r10.zzg     // Catch: java.lang.Exception -> L7c
            int r3 = r10.zzh     // Catch: java.lang.Exception -> L7c
            int r4 = r10.zzi     // Catch: java.lang.Exception -> L7c
            int r5 = r10.zzj     // Catch: java.lang.Exception -> L7c
            int r6 = r10.zzk     // Catch: java.lang.Exception -> L7c
            int r7 = r10.zzl     // Catch: java.lang.Exception -> L7c
            boolean r8 = r10.zzo     // Catch: java.lang.Exception -> L7c
            r0 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzbbp r0 = com.google.android.gms.ads.internal.zzt.zzg()     // Catch: java.lang.Exception -> L7c
            android.content.Context r0 = r0.zze()     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L50
            java.lang.String r1 = r10.zzm     // Catch: java.lang.Exception -> L7c
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L7c
            if (r2 != 0) goto L50
            android.content.res.Resources r2 = r0.getResources()     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzbel r3 = com.google.android.gms.internal.ads.zzbeu.zzaq     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> L7c
            java.lang.Object r3 = r4.zzd(r3)     // Catch: java.lang.Exception -> L7c
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = "id"
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L7c
            int r0 = r2.getIdentifier(r3, r4, r0)     // Catch: java.lang.Exception -> L7c
            java.lang.Object r0 = r11.getTag(r0)     // Catch: java.lang.Exception -> L7c
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L50
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7c
            if (r0 != 0) goto L75
        L50:
            com.google.android.gms.internal.ads.zzbbt r11 = r10.zzc(r11, r9)     // Catch: java.lang.Exception -> L7c
            r9.zzi()     // Catch: java.lang.Exception -> L7c
            int r0 = r11.zza     // Catch: java.lang.Exception -> L7c
            if (r0 != 0) goto L5f
            int r0 = r11.zzb     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L75
        L5f:
            int r11 = r11.zzb     // Catch: java.lang.Exception -> L7c
            if (r11 != 0) goto L6a
            int r11 = r9.zzl()     // Catch: java.lang.Exception -> L7c
            if (r11 == 0) goto L75
            goto L6c
        L6a:
            if (r11 != 0) goto L76
        L6c:
            com.google.android.gms.internal.ads.zzbbl r11 = r10.zzd     // Catch: java.lang.Exception -> L7c
            boolean r11 = r11.zza(r9)     // Catch: java.lang.Exception -> L7c
            if (r11 != 0) goto L75
            goto L76
        L75:
            return
        L76:
            com.google.android.gms.internal.ads.zzbbl r11 = r10.zzd     // Catch: java.lang.Exception -> L7c
            r11.zzc(r9)     // Catch: java.lang.Exception -> L7c
            return
        L7c:
            r11 = move-exception
            int r0 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r0 = "Exception in fetchContentOnUIThread"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r11)
            java.lang.String r0 = "ContentFetchTask.fetchContent"
            com.google.android.gms.internal.ads.zzcbj r1 = com.google.android.gms.ads.internal.zzt.zzh()
            r1.zzg(r11, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbu.zzb(android.view.View):void");
    }

    final zzbbt zzc(View view, zzbbk zzbbkVar) {
        if (view == null) {
            return new zzbbt(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzbbt(this, 0, 0);
            }
            zzbbkVar.zzg(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzbbt(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzcgy)) {
            WebView webView = (WebView) view;
            zzbbkVar.zze();
            webView.post(new zzbbs(this, zzbbkVar, webView, globalVisibleRect));
            return new zzbbt(this, 0, 1);
        }
        if (!(view instanceof ViewGroup)) {
            return new zzbbt(this, 0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            zzbbt zzc = zzc(viewGroup.getChildAt(i3), zzbbkVar);
            i += zzc.zza;
            i2 += zzc.zzb;
        }
        return new zzbbt(this, i, i2);
    }

    final void zzd(zzbbk zzbbkVar, WebView webView, String str, boolean z) {
        zzbbkVar.zzd();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzn || TextUtils.isEmpty(webView.getTitle())) {
                    zzbbkVar.zzf(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzbbkVar.zzf(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzbbkVar.zza()) {
                this.zzd.zzb(zzbbkVar);
            }
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Json string may be malformed.");
        } catch (Throwable th) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzt.zzh().zzg(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            this.zzb = true;
            StringBuilder sb = new StringBuilder(40);
            sb.append("ContentFetchThread: paused, pause = true");
            String sb2 = sb.toString();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
        }
    }
}
