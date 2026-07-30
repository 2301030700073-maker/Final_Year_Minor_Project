package com.google.android.gms.internal.ads;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.internal.security.CertificateUtil;
import defpackage.Cif;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzcew extends WebChromeClient {
    private final zzcex zza;

    public zzcew(zzcex zzcexVar) {
        this.zza = zzcexVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final Context zzb(WebView webView) {
        if (!(webView instanceof zzcex)) {
            return webView.getContext();
        }
        zzcex zzcexVar = (zzcex) webView;
        Activity zzi = zzcexVar.zzi();
        return zzi != null ? zzi : zzcexVar.getContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzcex)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzm zzL = ((zzcex) webView).zzL();
        if (zzL == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzL.zzb();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        String m2506this = V1.m2506this(Cif.m6919this("JS: ", message, " (", sourceId, CertificateUtil.DELIMITER), consoleMessage.lineNumber(), ")");
        if (m2506this.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = zzcev.zza[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(m2506this);
        } else if (i == 2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj(m2506this);
        } else if (i == 3 || i == 4) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(m2506this);
        } else if (i != 5) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(m2506this);
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zze(m2506this);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.zza.zzH() != null) {
            webView2.setWebViewClient(this.zza.zzH());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072L, j4) + j, 1048576L);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            zzcex zzcexVar = this.zza;
            com.google.android.gms.ads.internal.zzv.zzq();
            if (!com.google.android.gms.ads.internal.util.zzs.zzB(zzcexVar.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                zzcex zzcexVar2 = this.zza;
                com.google.android.gms.ads.internal.zzv.zzq();
                if (!com.google.android.gms.ads.internal.util.zzs.zzB(zzcexVar2.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zza.zzL();
        if (zzL == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get ad overlay when hiding custom view.");
        } else {
            zzL.zzg();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zzb(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zza.zzL();
        if (zzL == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            zzL.zzC(view, customViewCallback);
            zzL.zzA(i);
        }
    }

    public final boolean zza(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zzcex zzcexVar;
        com.google.android.gms.ads.internal.zzb zzd;
        try {
            zzcexVar = this.zza;
        } catch (WindowManager.BadTokenException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to display Dialog.", e);
        }
        if (zzcexVar != null && zzcexVar.zzN() != null && this.zza.zzN().zzd() != null && (zzd = this.zza.zzN().zzd()) != null && !zzd.zzc()) {
            zzd.zzb("window." + str + "('" + str3 + "')");
            return false;
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(context);
        zzL.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            zzL.setView(linearLayout).setPositiveButton(R.string.ok, new zzceu(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new zzcet(jsPromptResult)).setOnCancelListener(new zzces(jsPromptResult)).create().show();
        } else {
            zzL.setMessage(str3).setPositiveButton(R.string.ok, new zzcer(jsResult)).setNegativeButton(R.string.cancel, new zzceq(jsResult)).setOnCancelListener(new zzcep(jsResult)).create().show();
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
