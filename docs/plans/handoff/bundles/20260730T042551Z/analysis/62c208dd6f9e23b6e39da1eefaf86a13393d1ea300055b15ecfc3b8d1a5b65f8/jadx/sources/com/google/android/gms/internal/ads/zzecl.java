package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzecl implements zzecm {
    public static /* synthetic */ zzecr zzc(String str, String str2, String str3, zzecn zzecnVar, String str4, WebView webView, String str5, String str6, zzeco zzecoVar) {
        zzflc zza = zzflc.zza("Google", str2);
        zzflb zzp = zzp("javascript");
        zzfku zzn = zzn(zzecnVar.toString());
        zzflb zzflbVar = zzflb.NONE;
        if (zzp == zzflbVar) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzn == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(zzecnVar)));
            return null;
        }
        zzflb zzp2 = zzp(str4);
        if (zzn == zzfku.VIDEO && zzp2 == zzflbVar) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        zzfkr zzb = zzfkr.zzb(zza, webView, str5, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        return new zzecr(zzfkp.zza(zzfkq.zza(zzn, zzo(zzecoVar.toString()), zzp, zzp2, true), zzb), zzb);
    }

    public static /* synthetic */ zzecr zzd(String str, String str2, String str3, String str4, zzecn zzecnVar, WebView webView, String str5, String str6, zzeco zzecoVar) {
        zzflc zza = zzflc.zza(str, str2);
        zzflb zzp = zzp("javascript");
        zzflb zzp2 = zzp(str4);
        zzfku zzn = zzn(zzecnVar.toString());
        zzflb zzflbVar = zzflb.NONE;
        if (zzp == zzflbVar) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzn == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(zzecnVar)));
            return null;
        }
        if (zzn == zzfku.VIDEO && zzp2 == zzflbVar) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        zzfkr zzc = zzfkr.zzc(zza, webView, str5, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        return new zzecr(zzfkp.zza(zzfkq.zza(zzn, zzo(zzecoVar.toString()), zzp, zzp2, true), zzc), zzc);
    }

    private static zzfku zzn(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -382745961) {
            if (str.equals("htmlDisplay")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 112202875) {
            if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                c = 2;
            }
            c = 65535;
        }
        if (c == 0) {
            return zzfku.HTML_DISPLAY;
        }
        if (c == 1) {
            return zzfku.NATIVE_DISPLAY;
        }
        if (c != 2) {
            return null;
        }
        return zzfku.VIDEO;
    }

    private static zzfkx zzo(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1104128070) {
            if (str.equals("beginToRender")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 1318088141) {
            if (hashCode == 1988248512 && str.equals("onePixel")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals("definedByJavascript")) {
                c = 1;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? c != 2 ? zzfkx.UNSPECIFIED : zzfkx.ONE_PIXEL : zzfkx.DEFINED_BY_JAVASCRIPT : zzfkx.BEGIN_TO_RENDER;
    }

    private static zzflb zzp(String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str) ? zzflb.NATIVE : "javascript".equals(str) ? zzflb.JAVASCRIPT : zzflb.NONE;
    }

    private static final Object zzq(zzeck zzeckVar) {
        try {
            return zzeckVar.zza();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "omid exception");
            return null;
        }
    }

    private static final void zzr(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "omid exception");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final zzecr zza(final String str, final WebView webView, String str2, String str3, final String str4, final zzeco zzecoVar, final zzecn zzecnVar, final String str5) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() || !zzfkn.zzb()) {
            return null;
        }
        final String str6 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        final String str7 = "javascript";
        final String str8 = "Google";
        return (zzecr) zzq(new zzeck(str8, str, str7, zzecnVar, str4, webView, str5, str6, zzecoVar) { // from class: com.google.android.gms.internal.ads.zzeca
            public final /* synthetic */ String zzb;
            public final /* synthetic */ zzecn zzd;
            public final /* synthetic */ String zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzeco zzi;
            public final /* synthetic */ String zza = "Google";
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

            {
                this.zzb = str;
                this.zzd = zzecnVar;
                this.zze = str4;
                this.zzf = webView;
                this.zzg = str5;
                this.zzi = zzecoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzeck
            public final Object zza() {
                return zzecl.zzc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final zzecr zzb(final String str, final WebView webView, String str2, String str3, final String str4, final String str5, final zzeco zzecoVar, final zzecn zzecnVar, final String str6) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() || !zzfkn.zzb()) {
            return null;
        }
        final String str7 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        final String str8 = "javascript";
        return (zzecr) zzq(new zzeck(str5, str, str8, str4, zzecnVar, webView, str6, str7, zzecoVar) { // from class: com.google.android.gms.internal.ads.zzecd
            public final /* synthetic */ String zza;
            public final /* synthetic */ String zzb;
            public final /* synthetic */ String zzd;
            public final /* synthetic */ zzecn zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzeco zzi;
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

            {
                this.zzd = str4;
                this.zze = zzecnVar;
                this.zzf = webView;
                this.zzg = str6;
                this.zzi = zzecoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzeck
            public final Object zza() {
                return zzecl.zzd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final zzfla zze(final VersionInfoParcel versionInfoParcel, final WebView webView, boolean z) {
        final boolean z2 = true;
        return (zzfla) zzq(new zzeck(webView, z2) { // from class: com.google.android.gms.internal.ads.zzeci
            public final /* synthetic */ WebView zzb;

            @Override // com.google.android.gms.internal.ads.zzeck
            public final Object zza() {
                VersionInfoParcel versionInfoParcel2 = VersionInfoParcel.this;
                return zzfla.zzb(zzflc.zza("Google", versionInfoParcel2.buddyApkVersion + "." + versionInfoParcel2.clientJarVersion), this.zzb, true);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final String zzf(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue()) {
            return (String) zzq(new zzeck() { // from class: com.google.android.gms.internal.ads.zzecg
                @Override // com.google.android.gms.internal.ads.zzeck
                public final Object zza() {
                    return "a.1.5.2-google_20241009";
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzg(final zzfkp zzfkpVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebz
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() && zzfkn.zzb()) {
                    zzfkp.this.zzb(view, zzfkw.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzh(final zzfla zzflaVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecf
            @Override // java.lang.Runnable
            public final void run() {
                zzfla.this.zzf(view, zzfkw.NOT_VISIBLE, "Ad overlay");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzi(final zzfkp zzfkpVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecj
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() && zzfkn.zzb()) {
                    zzfkp.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzj(final zzfkp zzfkpVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecb
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() && zzfkn.zzb()) {
                    zzfkp.this.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzk(final zzfkp zzfkpVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue() && zzfkn.zzb()) {
            Objects.requireNonNull(zzfkpVar);
            zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecc
                @Override // java.lang.Runnable
                public final void run() {
                    zzfkp.this.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final boolean zzl(final Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfc)).booleanValue()) {
            Boolean bool = (Boolean) zzq(new zzeck() { // from class: com.google.android.gms.internal.ads.zzece
                @Override // com.google.android.gms.internal.ads.zzeck
                public final Object zza() {
                    if (zzfkn.zzb()) {
                        return Boolean.TRUE;
                    }
                    zzfkn.zza(context);
                    return Boolean.valueOf(zzfkn.zzb());
                }
            });
            return bool != null && bool.booleanValue();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid flag is disabled");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzecm
    public final void zzm(final zzfla zzflaVar, final zzcfo zzcfoVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzech
            @Override // java.lang.Runnable
            public final void run() {
                zzfla.this.zzg(zzcfoVar);
            }
        });
    }
}
