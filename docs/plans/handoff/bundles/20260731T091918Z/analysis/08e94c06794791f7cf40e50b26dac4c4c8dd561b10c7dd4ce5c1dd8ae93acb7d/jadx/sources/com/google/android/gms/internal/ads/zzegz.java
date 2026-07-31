package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzegz implements zzeha {
    static /* synthetic */ zzehf zzl(String str, String str2, String str3, zzehb zzehbVar, String str4, WebView webView, String str5, String str6, zzehc zzehcVar) {
        zzfpi zza = zzfpi.zza("Google", str2);
        zzfph zzn = zzn("javascript");
        zzfoz zzp = zzp(zzehbVar.toString());
        zzfph zzfphVar = zzfph.NONE;
        if (zzn == zzfphVar) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzp == null) {
            String valueOf = String.valueOf(zzehbVar);
            String.valueOf(valueOf);
            String valueOf2 = String.valueOf(valueOf);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Unable to parse creative type: ".concat(valueOf2));
            return null;
        }
        zzfph zzn2 = zzn(str4);
        if (zzp != zzfoz.VIDEO || zzn2 != zzfphVar) {
            zzfow zza2 = zzfow.zza(zza, webView, str5, "");
            return new zzehf(zzfou.zze(zzfov.zza(zzp, zzo(zzehcVar.toString()), zzn, zzn2, true), zza2), zza2);
        }
        String.valueOf(str4);
        String valueOf3 = String.valueOf(str4);
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Video events owner unknown for video creative: ".concat(valueOf3));
        return null;
    }

    static /* synthetic */ zzehf zzm(String str, String str2, String str3, String str4, zzehb zzehbVar, WebView webView, String str5, String str6, zzehc zzehcVar) {
        zzfpi zza = zzfpi.zza(str, str2);
        zzfph zzn = zzn("javascript");
        zzfph zzn2 = zzn(str4);
        zzfoz zzp = zzp(zzehbVar.toString());
        zzfph zzfphVar = zzfph.NONE;
        if (zzn == zzfphVar) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzp == null) {
            String valueOf = String.valueOf(zzehbVar);
            String.valueOf(valueOf);
            String valueOf2 = String.valueOf(valueOf);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Unable to parse creative type: ".concat(valueOf2));
            return null;
        }
        if (zzp != zzfoz.VIDEO || zzn2 != zzfphVar) {
            zzfow zzb = zzfow.zzb(zza, webView, str5, "");
            return new zzehf(zzfou.zze(zzfov.zza(zzp, zzo(zzehcVar.toString()), zzn, zzn2, true), zzb), zzb);
        }
        String.valueOf(str4);
        String valueOf3 = String.valueOf(str4);
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Video events owner unknown for video creative: ".concat(valueOf3));
        return null;
    }

    private static zzfph zzn(String str) {
        return "native".equals(str) ? zzfph.NATIVE : "javascript".equals(str) ? zzfph.JAVASCRIPT : zzfph.NONE;
    }

    private static zzfpc zzo(String str) {
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
        return c != 0 ? c != 1 ? c != 2 ? zzfpc.UNSPECIFIED : zzfpc.ONE_PIXEL : zzfpc.DEFINED_BY_JAVASCRIPT : zzfpc.BEGIN_TO_RENDER;
    }

    private static zzfoz zzp(String str) {
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
            if (str.equals("video")) {
                c = 2;
            }
            c = 65535;
        }
        if (c == 0) {
            return zzfoz.HTML_DISPLAY;
        }
        if (c == 1) {
            return zzfoz.NATIVE_DISPLAY;
        }
        if (c != 2) {
            return null;
        }
        return zzfoz.VIDEO;
    }

    private static final Object zzq(zzegy zzegyVar) {
        try {
            return zzegyVar.zza();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, "omid exception");
            return null;
        }
    }

    private static final void zzr(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, "omid exception");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final boolean zza(final Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue()) {
            Boolean bool = (Boolean) zzq(new zzegy() { // from class: com.google.android.gms.internal.ads.zzegx
                @Override // com.google.android.gms.internal.ads.zzegy
                public final /* synthetic */ Object zza() {
                    if (zzfos.zzb()) {
                        return true;
                    }
                    zzfos.zza(context);
                    return Boolean.valueOf(zzfos.zzb());
                }
            });
            return bool != null && bool.booleanValue();
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid flag is disabled");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final String zzb(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue()) {
            return (String) zzq(zzego.zza);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final zzehf zzc(final String str, final WebView webView, String str2, String str3, final String str4, final zzehc zzehcVar, final zzehb zzehbVar, final String str5) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() || !zzfos.zzb()) {
            return null;
        }
        final String str6 = "javascript";
        final String str7 = "Google";
        final String str8 = "";
        return (zzehf) zzq(new zzegy(str7, str, str6, zzehbVar, str4, webView, str5, str8, zzehcVar) { // from class: com.google.android.gms.internal.ads.zzegp
            private final /* synthetic */ String zzb;
            private final /* synthetic */ zzehb zzd;
            private final /* synthetic */ String zze;
            private final /* synthetic */ WebView zzf;
            private final /* synthetic */ String zzg;
            private final /* synthetic */ zzehc zzi;
            private final /* synthetic */ String zza = "Google";
            private final /* synthetic */ String zzc = "javascript";
            private final /* synthetic */ String zzh = "";

            {
                this.zzb = str;
                this.zzd = zzehbVar;
                this.zze = str4;
                this.zzf = webView;
                this.zzg = str5;
                this.zzi = zzehcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzegy
            public final /* synthetic */ Object zza() {
                return zzegz.zzl(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final zzehf zzd(final String str, final WebView webView, String str2, String str3, final String str4, final String str5, final zzehc zzehcVar, final zzehb zzehbVar, final String str6) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() || !zzfos.zzb()) {
            return null;
        }
        final String str7 = "";
        final String str8 = "javascript";
        return (zzehf) zzq(new zzegy(str5, str, str8, str4, zzehbVar, webView, str6, str7, zzehcVar) { // from class: com.google.android.gms.internal.ads.zzegq
            private final /* synthetic */ String zza;
            private final /* synthetic */ String zzb;
            private final /* synthetic */ String zzd;
            private final /* synthetic */ zzehb zze;
            private final /* synthetic */ WebView zzf;
            private final /* synthetic */ String zzg;
            private final /* synthetic */ zzehc zzi;
            private final /* synthetic */ String zzc = "javascript";
            private final /* synthetic */ String zzh = "";

            {
                this.zzd = str4;
                this.zze = zzehbVar;
                this.zzf = webView;
                this.zzg = str6;
                this.zzi = zzehcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzegy
            public final /* synthetic */ Object zza() {
                return zzegz.zzm(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zze(final zzfou zzfouVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() && zzfos.zzb()) {
            Objects.requireNonNull(zzfouVar);
            zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegn
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfou.this.zza();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zzf(final zzfou zzfouVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() && zzfos.zzb()) {
                    zzfou.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zzg(final zzfou zzfouVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegs
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() && zzfos.zzb()) {
                    zzfou.this.zzd(view, zzfpb.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zzh(final zzfou zzfouVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegt
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue() && zzfos.zzb()) {
                    zzfou.this.zzb(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final zzfpg zzi(final VersionInfoParcel versionInfoParcel, final WebView webView, boolean z) {
        final boolean z2 = true;
        return (zzfpg) zzq(new zzegy(webView, z2) { // from class: com.google.android.gms.internal.ads.zzegu
            private final /* synthetic */ WebView zzb;

            @Override // com.google.android.gms.internal.ads.zzegy
            public final /* synthetic */ Object zza() {
                VersionInfoParcel versionInfoParcel2 = VersionInfoParcel.this;
                int i = versionInfoParcel2.buddyApkVersion;
                int i2 = versionInfoParcel2.clientJarVersion;
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(i2).length());
                sb.append(i);
                sb.append(".");
                sb.append(i2);
                return zzfpg.zza(zzfpi.zza("Google", sb.toString()), this.zzb, true);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zzj(final zzfpg zzfpgVar, final zzfpf zzfpfVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegv
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfpg.this.zzb(zzfpfVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeha
    public final void zzk(final zzfpg zzfpgVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfpg.this.zzd(view, zzfpb.NOT_VISIBLE, "Ad overlay");
            }
        });
    }
}
