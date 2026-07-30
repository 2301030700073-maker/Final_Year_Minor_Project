package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.Cif;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzccs implements zzbjp {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzbc.zzb();
                i = com.google.android.gms.ads.internal.util.client.zzf.zzx(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            StringBuilder m6919this = Cif.m6919this("Parse pixels for ", str, ", got string ", str2, ", int ");
            m6919this.append(i);
            m6919this.append(".");
            com.google.android.gms.ads.internal.util.zze.zza(m6919this.toString());
        }
        return i;
    }

    private static void zzc(zzcbg zzcbgVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcbgVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcbgVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcbgVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcbgVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcbgVar.zzD(Integer.parseInt(str5));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbjp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zza(java.lang.Object r22, java.util.Map r23) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzccs.zza(java.lang.Object, java.util.Map):void");
    }
}
