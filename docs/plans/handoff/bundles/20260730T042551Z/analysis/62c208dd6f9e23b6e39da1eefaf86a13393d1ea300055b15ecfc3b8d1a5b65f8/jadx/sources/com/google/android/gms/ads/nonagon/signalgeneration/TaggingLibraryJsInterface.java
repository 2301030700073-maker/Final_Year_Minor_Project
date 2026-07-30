package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzava;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzdsb;
import com.google.android.gms.internal.ads.zzfcn;
import com.google.android.gms.internal.ads.zzfja;
import com.google.android.gms.internal.ads.zzgcs;
import defpackage.PQ;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class TaggingLibraryJsInterface {

    /* renamed from: do, reason: not valid java name */
    public final int f9954do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f9955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WebView f9956do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzf f9957do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzj f9958do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzo f9959do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzava f9960do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdsb f9961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfcn f9962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfja f9963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzgcs f9964do = zzbzw.zzf;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9965do;

    public TaggingLibraryJsInterface(WebView webView, zzava zzavaVar, zzdsb zzdsbVar, zzfja zzfjaVar, zzfcn zzfcnVar, zzo zzoVar, zzf zzfVar, zzj zzjVar) {
        this.f9956do = webView;
        Context context = webView.getContext();
        this.f9955do = context;
        this.f9960do = zzavaVar;
        this.f9961do = zzdsbVar;
        zzbcl.zza(context);
        this.f9954do = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjv)).intValue();
        this.f9965do = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjw)).booleanValue();
        this.f9963do = zzfjaVar;
        this.f9962do = zzfcnVar;
        this.f9959do = zzoVar;
        this.f9957do = zzfVar;
        this.f9958do = zzjVar;
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignals(String str) {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            String zzd = this.f9960do.zzc().zzd(this.f9955do, str, this.f9956do);
            if (this.f9965do) {
                zzaa.zzd(this.f9961do, null, "csg", new Pair("clat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - currentTimeMillis)));
            }
            return zzd;
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.getClickSignals");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignalsWithTimeout(final String str, int i) {
        if (i <= 0) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid timeout for getting click signals. Timeout=" + i);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            return (String) zzbzw.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getClickSignals(str);
                }
            }).get(Math.min(i, this.f9954do), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.getClickSignalsWithTimeout");
            return e instanceof TimeoutException ? "17" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzv.zzq();
        String uuid = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        final PQ pq = new PQ(this, uuid);
        if (((Boolean) zzbeq.zzc.zze()).booleanValue()) {
            this.f9959do.zzg(this.f9956do, pq);
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjy)).booleanValue()) {
                this.f9964do.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbr
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaggingLibraryJsInterface taggingLibraryJsInterface = TaggingLibraryJsInterface.this;
                        Bundle bundle2 = bundle;
                        QueryInfoGenerationCallback queryInfoGenerationCallback = pq;
                        taggingLibraryJsInterface.getClass();
                        com.google.android.gms.ads.internal.util.zzaa zzr = com.google.android.gms.ads.internal.zzv.zzr();
                        Context context = taggingLibraryJsInterface.f9955do;
                        CookieManager zza = zzr.zza(context);
                        bundle2.putBoolean("accept_3p_cookie", zza != null ? zza.acceptThirdPartyCookies(taggingLibraryJsInterface.f9956do) : false);
                        QueryInfo.generate(context, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle2).build(), queryInfoGenerationCallback);
                    }
                });
            } else {
                QueryInfo.generate(this.f9955do, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), pq);
            }
        }
        return uuid;
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignals() {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            String zzh = this.f9960do.zzc().zzh(this.f9955do, this.f9956do, null);
            if (this.f9965do) {
                zzaa.zzd(this.f9961do, null, "vsg", new Pair("vlat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - currentTimeMillis)));
            }
            return zzh;
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.getViewSignals");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i) {
        if (i <= 0) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid timeout for getting view signals. Timeout=" + i);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            return (String) zzbzw.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbo
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getViewSignals();
                }
            }).get(Math.min(i, this.f9954do), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.getViewSignalsWithTimeout");
            return e instanceof TimeoutException ? "17" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void recordClick(final String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjA)).booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbp
            @Override // java.lang.Runnable
            public final void run() {
                zzfcn zzfcnVar;
                TaggingLibraryJsInterface taggingLibraryJsInterface = TaggingLibraryJsInterface.this;
                String str2 = str;
                taggingLibraryJsInterface.getClass();
                Uri parse = Uri.parse(str2);
                try {
                    boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlR)).booleanValue();
                    WebView webView = taggingLibraryJsInterface.f9956do;
                    Context context = taggingLibraryJsInterface.f9955do;
                    parse = (!booleanValue || (zzfcnVar = taggingLibraryJsInterface.f9962do) == null) ? taggingLibraryJsInterface.f9960do.zza(parse, context, webView, null) : zzfcnVar.zza(parse, context, webView, null);
                } catch (zzavb e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to append the click signal to URL: ", e);
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.recordClick");
                }
                taggingLibraryJsInterface.f9963do.zzd(parse.toString(), null, null);
            }
        });
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("x");
            int i2 = jSONObject.getInt("y");
            int i3 = jSONObject.getInt("duration_ms");
            float f = (float) jSONObject.getDouble("force");
            int i4 = jSONObject.getInt("type");
            try {
                this.f9960do.zzd(MotionEvent.obtain(0L, i3, i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? -1 : 3 : 2 : 1 : 0, i, i2, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e) {
                e = e;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
            } catch (JSONException e2) {
                e = e2;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
            }
        } catch (RuntimeException | JSONException e3) {
            e = e3;
        }
    }
}
