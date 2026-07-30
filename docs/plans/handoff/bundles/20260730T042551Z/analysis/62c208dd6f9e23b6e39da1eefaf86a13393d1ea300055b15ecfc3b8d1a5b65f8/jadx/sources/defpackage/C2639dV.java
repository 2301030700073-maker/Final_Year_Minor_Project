package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzbl;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzfdk;

/* renamed from: dV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2639dV extends WebViewClient {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzu f12503do;

    public C2639dV(zzu zzuVar) {
        this.f12503do = zzuVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzu zzuVar = this.f12503do;
        zzbl zzblVar = zzuVar.f9880do;
        if (zzblVar != null) {
            try {
                zzblVar.zzf(zzfdk.zzd(1, null, null));
            } catch (RemoteException e) {
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzbl zzblVar2 = zzuVar.f9880do;
        if (zzblVar2 != null) {
            try {
                zzblVar2.zze(0);
            } catch (RemoteException e2) {
                zzo.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzu zzuVar = this.f12503do;
        int i = 0;
        if (str.startsWith(zzuVar.zzq())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzbl zzblVar = zzuVar.f9880do;
            if (zzblVar != null) {
                try {
                    zzblVar.zzf(zzfdk.zzd(3, null, null));
                } catch (RemoteException e) {
                    zzo.zzl("#007 Could not call remote method.", e);
                }
            }
            zzbl zzblVar2 = zzuVar.f9880do;
            if (zzblVar2 != null) {
                try {
                    zzblVar2.zze(3);
                } catch (RemoteException e2) {
                    zzo.zzl("#007 Could not call remote method.", e2);
                }
            }
            zzuVar.n(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzbl zzblVar3 = zzuVar.f9880do;
            if (zzblVar3 != null) {
                try {
                    zzblVar3.zzf(zzfdk.zzd(1, null, null));
                } catch (RemoteException e3) {
                    zzo.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzbl zzblVar4 = zzuVar.f9880do;
            if (zzblVar4 != null) {
                try {
                    zzblVar4.zze(0);
                } catch (RemoteException e4) {
                    zzo.zzl("#007 Could not call remote method.", e4);
                }
            }
            zzuVar.n(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            zzbl zzblVar5 = zzuVar.f9880do;
            if (zzblVar5 != null) {
                try {
                    zzblVar5.zzi();
                } catch (RemoteException e5) {
                    zzo.zzl("#007 Could not call remote method.", e5);
                }
            }
            zzuVar.getClass();
            String queryParameter = Uri.parse(str).getQueryParameter(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    zzbc.zzb();
                    i = zzf.zzx(zzuVar.f9877do, Integer.parseInt(queryParameter));
                } catch (NumberFormatException unused) {
                }
            }
            zzuVar.n(i);
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzbl zzblVar6 = zzuVar.f9880do;
        if (zzblVar6 != null) {
            try {
                zzblVar6.zzc();
                zzuVar.f9880do.zzh();
            } catch (RemoteException e6) {
                zzo.zzl("#007 Could not call remote method.", e6);
            }
        }
        if (zzuVar.f9883do != null) {
            Uri parse = Uri.parse(str);
            try {
                parse = zzuVar.f9883do.zza(parse, zzuVar.f9877do, null, null);
            } catch (zzavb e7) {
                zzo.zzk("Unable to process ad data", e7);
            }
            str = parse.toString();
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzuVar.f9877do.startActivity(intent);
        return true;
    }
}
