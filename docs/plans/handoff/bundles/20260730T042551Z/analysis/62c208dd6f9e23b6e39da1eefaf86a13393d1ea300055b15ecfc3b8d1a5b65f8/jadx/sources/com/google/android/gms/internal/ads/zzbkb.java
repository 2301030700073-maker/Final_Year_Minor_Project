package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbkb implements zzbjp {
    private final com.google.android.gms.ads.internal.zzb zza;
    private final zzdrw zzb;
    private final zzbsc zzd;
    private final zzebk zze;
    private final zzcmk zzf;
    private com.google.android.gms.ads.internal.overlay.zzaa zzg = null;
    private final zzgcs zzh = zzbzw.zzg;
    private final com.google.android.gms.ads.internal.util.client.zzu zzc = new com.google.android.gms.ads.internal.util.client.zzu(null);

    public zzbkb(com.google.android.gms.ads.internal.zzb zzbVar, zzbsc zzbscVar, zzebk zzebkVar, zzdrw zzdrwVar, zzcmk zzcmkVar) {
        this.zza = zzbVar;
        this.zzd = zzbscVar;
        this.zze = zzebkVar;
        this.zzb = zzdrwVar;
        this.zzf = zzcmkVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    public static Uri zzc(Context context, zzava zzavaVar, Uri uri, View view, Activity activity, zzfcn zzfcnVar) {
        if (zzavaVar == null) {
            return uri;
        }
        try {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlR)).booleanValue() || zzfcnVar == null) {
                if (zzavaVar.zze(uri)) {
                    uri = zzavaVar.zza(uri, context, view, activity);
                }
            } else if (zzavaVar.zze(uri)) {
                uri = zzfcnVar.zza(uri, context, view, activity);
            }
        } catch (zzavb unused) {
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
        }
        return uri;
    }

    public static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("custom_close"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0339  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.String r29, com.google.android.gms.ads.internal.client.zza r30, java.util.Map r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 1059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkb.zzh(java.lang.String, com.google.android.gms.ads.internal.client.zza, java.util.Map, java.lang.String):void");
    }

    private final void zzi(Context context, String str, String str2) {
        this.zze.zzc(str);
        zzdrw zzdrwVar = this.zzb;
        if (zzdrwVar != null) {
            zzebv.zzd(context, zzdrwVar, this.zze, str, "dialog_not_shown", zzfxq.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0108, code lost:
    
        if (com.google.android.gms.internal.ads.zzbka.zzc(r2, r12, r13, r14, r15) == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0157, code lost:
    
        r22 = r7;
        r11 = r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza r21, java.util.Map r22, boolean r23, java.lang.String r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkb.zzj(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    private final void zzk(boolean z) {
        zzbsc zzbscVar = this.zzd;
        if (zzbscVar != null) {
            zzbscVar.zza(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzit)).booleanValue() != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ca, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzio)).booleanValue() : ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzin)).booleanValue()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza r9, android.content.Context r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkb.zzl(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        zzdrw zzdrwVar;
        String str;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeF)).booleanValue() || (zzdrwVar = this.zzb) == null) {
            return;
        }
        zzdrv zza = zzdrwVar.zza();
        zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "cct_action");
        switch (i) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            case 9:
                str = "WRONG_EXP_SETUP";
                break;
            default:
                str = "OPT_OUT";
                break;
        }
        zza.zzb("cct_open_status", str);
        zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcex zzcexVar = (zzcex) zzaVar;
        if (zzcexVar.zzD() != null) {
            hashMap = zzcexVar.zzD().zzaw;
        }
        String zzc = zzbyk.zzc(str, zzcexVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar == null || zzbVar.zzc()) {
            zzgch.zzr((((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjT)).booleanValue() && this.zzf != null && zzcmk.zzj(zzc)) ? this.zzf.zzb(zzc, com.google.android.gms.ads.internal.client.zzbc.zze()) : zzgch.zzh(zzc), new zzbjx(this, map, zzaVar, str2), this.zzh);
        } else {
            zzbVar.zzb(zzc);
        }
    }
}
