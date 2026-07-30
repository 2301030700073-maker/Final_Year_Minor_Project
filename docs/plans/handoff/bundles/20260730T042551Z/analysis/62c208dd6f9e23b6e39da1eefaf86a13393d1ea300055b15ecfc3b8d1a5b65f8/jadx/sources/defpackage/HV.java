package defpackage;

import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.ads.zzava;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbdx;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class HV extends AsyncTask {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzu f1358do;

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        zzu zzuVar = this.f1358do;
        try {
            zzuVar.f9883do = (zzava) zzuVar.f9884do.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            zzo.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        } catch (ExecutionException e2) {
            e = e2;
            zzo.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        } catch (TimeoutException e3) {
            zzo.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e3);
        }
        zzuVar.getClass();
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzbdx.zzd.zze());
        KV kv = zzuVar.f9876do;
        builder.appendQueryParameter("query", kv.f1823if);
        builder.appendQueryParameter("pubId", kv.f1820do);
        builder.appendQueryParameter("mappver", kv.f1824new);
        TreeMap treeMap = kv.f1821do;
        for (String str : treeMap.keySet()) {
            builder.appendQueryParameter(str, (String) treeMap.get(str));
        }
        Uri build = builder.build();
        zzava zzavaVar = zzuVar.f9883do;
        if (zzavaVar != null) {
            try {
                build = zzavaVar.zzb(build, zzuVar.f9877do);
            } catch (zzavb e4) {
                zzo.zzk("Unable to process ad data", e4);
            }
        }
        return Creturn.m7982new(zzuVar.zzq(), "#", build.getEncodedQuery());
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        WebView webView = this.f1358do.f9879do;
        if (webView == null || str == null) {
            return;
        }
        webView.loadUrl(str);
    }
}
