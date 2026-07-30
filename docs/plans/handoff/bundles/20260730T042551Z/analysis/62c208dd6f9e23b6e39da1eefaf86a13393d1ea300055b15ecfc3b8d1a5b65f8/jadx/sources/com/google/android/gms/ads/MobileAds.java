package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzex;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbtv;
import com.google.android.gms.internal.ads.zzbyu;
import defpackage.BinderC3652rv;
import defpackage.C3692sc;
import defpackage.C3869vc;
import defpackage.C4105zc;
import java.util.List;

/* loaded from: classes.dex */
public class MobileAds {
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    public static void disableMediationAdapterInitialization(Context context) {
        zzex.zzf().zzn(context);
    }

    public static InitializationStatus getInitializationStatus() {
        return zzex.zzf().zze();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzex.zzf().zzc();
    }

    public static VersionInfo getVersion() {
        zzex.zzf();
        String[] split = TextUtils.split("23.6.0", "\\.");
        if (split.length != 3) {
            return new VersionInfo(0, 0, 0);
        }
        try {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        } catch (NumberFormatException unused) {
            return new VersionInfo(0, 0, 0);
        }
    }

    public static void initialize(Context context) {
        zzex.zzf().zzo(context, null, null);
    }

    public static void openAdInspector(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzex.zzf().zzr(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(Context context, String str) {
        zzex.zzf().zzs(context, str);
    }

    public static boolean putPublisherFirstPartyIdEnabled(boolean z) {
        return zzex.zzf().zzz(z);
    }

    public static C4105zc registerCustomTabsSession(Context context, C3869vc c3869vc, String str, C3692sc c3692sc) {
        zzex.zzf();
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbyu zza = zzbtv.zza(context);
        if (zza == null) {
            zzo.zzg("Internal error, query info generator is null.");
            return null;
        }
        try {
            return (C4105zc) BinderC3652rv.o(zza.zze(new BinderC3652rv(context), new BinderC3652rv(c3869vc), str, new BinderC3652rv(c3692sc)));
        } catch (RemoteException | IllegalArgumentException e) {
            zzo.zzh("Unable to register custom tabs session. Error: ", e);
            return null;
        }
    }

    @KeepForSdk
    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        zzex.zzf().zzt(cls);
    }

    public static void registerWebView(WebView webView) {
        zzex.zzf();
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (webView == null) {
            zzo.zzg("The webview to be registered cannot be null.");
            return;
        }
        zzbyu zza = zzbtv.zza(webView.getContext());
        if (zza == null) {
            zzo.zzg("Internal error, query info generator is null.");
            return;
        }
        try {
            zza.zzj(new BinderC3652rv(webView));
        } catch (RemoteException e) {
            zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    public static void setAppMuted(boolean z) {
        zzex.zzf().zzu(z);
    }

    public static void setAppVolume(float f) {
        zzex.zzf().zzv(f);
    }

    @KeepForSdk
    private static void setPlugin(String str) {
        zzex.zzf().zzw(str);
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        zzex.zzf().zzx(requestConfiguration);
    }

    public static void startPreload(Context context, List<PreloadConfiguration> list, PreloadCallback preloadCallback) {
        zzex.zzf().zzg(context, list, preloadCallback);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzex.zzf().zzo(context, null, onInitializationCompleteListener);
    }
}
