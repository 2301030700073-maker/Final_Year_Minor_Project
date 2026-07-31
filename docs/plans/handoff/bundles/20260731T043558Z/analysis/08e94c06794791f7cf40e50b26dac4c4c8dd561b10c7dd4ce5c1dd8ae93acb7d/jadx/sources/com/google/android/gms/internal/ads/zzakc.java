package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzakc {
    public static void zza(zzakd zzakdVar, zzakh zzakhVar, zzdg zzdgVar) {
        for (int i = 0; i < zzakdVar.zza(); i++) {
            long zzb = zzakdVar.zzb(i);
            List zzc = zzakdVar.zzc(zzb);
            if (!zzc.isEmpty()) {
                if (i == zzakdVar.zza() - 1) {
                    throw new IllegalStateException();
                }
                long zzb2 = zzakdVar.zzb(i + 1) - zzakdVar.zzb(i);
                if (zzb2 > 0) {
                    zzdgVar.zza(new zzaka(zzc, zzb, zzb2));
                }
            }
        }
    }
}
