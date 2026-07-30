package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzfkr {
    private final zzflc zza;
    private final WebView zzb;
    private final List zzc = new ArrayList();
    private final Map zzd = new HashMap();
    private final String zze;
    private final String zzf;
    private final zzfks zzg;

    private zzfkr(zzflc zzflcVar, WebView webView, String str, List list, String str2, String str3, zzfks zzfksVar) {
        this.zza = zzflcVar;
        this.zzb = webView;
        this.zzg = zzfksVar;
        this.zzf = str2;
        this.zze = str3;
    }

    public static zzfkr zzb(zzflc zzflcVar, WebView webView, String str, String str2) {
        if (str2 != null) {
            zzfmk.zzd(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new zzfkr(zzflcVar, webView, null, null, str, str2, zzfks.HTML);
    }

    public static zzfkr zzc(zzflc zzflcVar, WebView webView, String str, String str2) {
        zzfmk.zzd(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 256, "CustomReferenceData is greater than 256 characters");
        return new zzfkr(zzflcVar, webView, null, null, str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzfks.JAVASCRIPT);
    }

    public final WebView zza() {
        return this.zzb;
    }

    public final zzfks zzd() {
        return this.zzg;
    }

    public final zzflc zze() {
        return this.zza;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zze;
    }

    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    public final Map zzi() {
        return DesugarCollections.unmodifiableMap(this.zzd);
    }
}
