package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import defpackage.InterfaceFutureC3942wq;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzfhg {
    public static void zza(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        zzg(interfaceFutureC3942wq, zzfhhVar, zzfgwVar, false);
    }

    public static void zzb(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        zzg(interfaceFutureC3942wq, zzfhhVar, zzfgwVar, true);
    }

    public static void zzc(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(interfaceFutureC3942wq), new zzfhf(zzfhhVar, zzfgwVar), zzbzw.zzg);
        }
    }

    public static void zzd(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfgw zzfgwVar) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(interfaceFutureC3942wq), new zzfhd(zzfgwVar), zzbzw.zzg);
        }
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziH), str);
    }

    public static int zzf(zzfcj zzfcjVar) {
        int zzf = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(zzfcjVar) - 1;
        return (zzf == 0 || zzf == 1) ? 7 : 23;
    }

    private static void zzg(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfhh zzfhhVar, zzfgw zzfgwVar, boolean z) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(interfaceFutureC3942wq), new zzfhe(zzfhhVar, zzfgwVar, z), zzbzw.zzg);
        }
    }
}
