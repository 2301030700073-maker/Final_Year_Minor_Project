package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzalw implements zzakf {
    private final zzdy zza = new zzdy();
    private final zzalm zzb = new zzalm();

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        this.zza.zzJ(bArr, i2 + i);
        this.zza.zzL(i);
        ArrayList arrayList = new ArrayList();
        try {
            zzdy zzdyVar = this.zza;
            int zzd = zzdyVar.zzd();
            String zzz = zzdyVar.zzz(StandardCharsets.UTF_8);
            if (zzz == null || !zzz.startsWith("WEBVTT")) {
                zzdyVar.zzL(zzd);
                throw zzbc.zza("Expected WEBVTT. Got ".concat(String.valueOf(zzdyVar.zzz(StandardCharsets.UTF_8))), null);
            }
            while (!TextUtils.isEmpty(this.zza.zzz(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                zzdy zzdyVar2 = this.zza;
                char c = 65535;
                int i3 = 0;
                while (c == 65535) {
                    i3 = zzdyVar2.zzd();
                    String zzz2 = zzdyVar2.zzz(StandardCharsets.UTF_8);
                    c = zzz2 == null ? (char) 0 : "STYLE".equals(zzz2) ? (char) 2 : zzz2.startsWith("NOTE") ? (char) 1 : (char) 3;
                }
                zzdyVar2.zzL(i3);
                if (c == 0) {
                    zzajz.zza(new zzalz(arrayList2), zzakeVar, zzdbVar);
                    return;
                }
                if (c == 1) {
                    while (!TextUtils.isEmpty(this.zza.zzz(StandardCharsets.UTF_8))) {
                    }
                } else if (c != 2) {
                    zzalo zzc = zzalv.zzc(this.zza, arrayList);
                    if (zzc != null) {
                        arrayList2.add(zzc);
                    }
                } else {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    this.zza.zzz(StandardCharsets.UTF_8);
                    arrayList.addAll(this.zzb.zzb(this.zza));
                }
            }
        } catch (zzbc e) {
            throw new IllegalArgumentException(e);
        }
    }
}
