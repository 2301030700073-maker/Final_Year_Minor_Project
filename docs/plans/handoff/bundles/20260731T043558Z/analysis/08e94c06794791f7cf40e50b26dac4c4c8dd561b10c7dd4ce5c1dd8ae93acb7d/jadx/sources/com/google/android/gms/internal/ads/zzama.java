package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzama implements zzaki {
    private final zzeg zza = new zzeg();
    private final zzalr zzb = new zzalr();

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzeg zzegVar = this.zza;
        zzegVar.zzb(bArr, i2 + i);
        zzegVar.zzh(i);
        ArrayList arrayList = new ArrayList();
        try {
            int zzg = zzegVar.zzg();
            String zzN = zzegVar.zzN(StandardCharsets.UTF_8);
            if (zzN == null || !zzN.startsWith("WEBVTT")) {
                zzegVar.zzh(zzg);
                String zzN2 = zzegVar.zzN(StandardCharsets.UTF_8);
                String.valueOf(zzN2);
                throw zzat.zzb("Expected WEBVTT. Got ".concat(String.valueOf(zzN2)), null);
            }
            while (!TextUtils.isEmpty(zzegVar.zzN(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                char c = 65535;
                int i3 = 0;
                while (c == 65535) {
                    i3 = zzegVar.zzg();
                    String zzN3 = zzegVar.zzN(StandardCharsets.UTF_8);
                    c = zzN3 == null ? (char) 0 : "STYLE".equals(zzN3) ? (char) 2 : zzN3.startsWith("NOTE") ? (char) 1 : (char) 3;
                }
                zzegVar.zzh(i3);
                if (c == 0) {
                    zzakc.zza(new zzamd(arrayList2), zzakhVar, zzdgVar);
                    return;
                }
                if (c == 1) {
                    while (!TextUtils.isEmpty(zzegVar.zzN(StandardCharsets.UTF_8))) {
                    }
                } else if (c != 2) {
                    zzalt zza = zzalz.zza(zzegVar, arrayList);
                    if (zza != null) {
                        arrayList2.add(zza);
                    }
                } else {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    zzegVar.zzN(StandardCharsets.UTF_8);
                    arrayList.addAll(this.zzb.zza(zzegVar));
                }
            }
        } catch (zzat e) {
            throw new IllegalArgumentException(e);
        }
    }
}
