package com.google.android.gms.internal.ads;

import java.io.EOFException;

/* loaded from: classes.dex */
public final class zzadd {
    private final zzdy zza = new zzdy(10);

    public final zzay zza(zzaco zzacoVar, zzage zzageVar) {
        zzay zzayVar = null;
        int i = 0;
        while (true) {
            try {
                zzacoVar.zzh(this.zza.zzN(), 0, 10);
                this.zza.zzL(0);
                if (this.zza.zzo() != 4801587) {
                    break;
                }
                this.zza.zzM(3);
                int zzl = this.zza.zzl();
                int i2 = zzl + 10;
                if (zzayVar == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.zza.zzN(), 0, bArr, 0, 10);
                    zzacoVar.zzh(bArr, 10, zzl);
                    zzayVar = zzagg.zza(bArr, i2, zzageVar, new zzafi());
                } else {
                    zzacoVar.zzg(zzl);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        zzacoVar.zzj();
        zzacoVar.zzg(i);
        return zzayVar;
    }
}
