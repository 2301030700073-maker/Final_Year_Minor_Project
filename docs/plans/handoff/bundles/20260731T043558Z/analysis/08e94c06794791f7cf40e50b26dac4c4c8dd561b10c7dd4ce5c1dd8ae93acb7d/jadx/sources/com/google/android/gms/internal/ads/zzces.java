package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzces implements zzblx {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzbb.zza();
                i = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(str.length() + 34 + str2.length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                String sb2 = sb.toString();
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            int length = str.length();
            StringBuilder sb3 = new StringBuilder(length + 30 + String.valueOf(str2).length() + 6 + String.valueOf(i).length() + 1);
            sb3.append("Parse pixels for ");
            sb3.append(str);
            sb3.append(", got string ");
            sb3.append(str2);
            sb3.append(", int ");
            sb3.append(i);
            sb3.append(".");
            com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
        }
        return i;
    }

    private static void zzc(zzcdf zzcdfVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcdfVar.zzx(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                String format = String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(format);
                return;
            }
        }
        if (str2 != null) {
            zzcdfVar.zzy(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcdfVar.zzz(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcdfVar.zzA(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcdfVar.zzB(Integer.parseInt(str5));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzblx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zza(java.lang.Object r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 1350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzces.zza(java.lang.Object, java.util.Map):void");
    }
}
