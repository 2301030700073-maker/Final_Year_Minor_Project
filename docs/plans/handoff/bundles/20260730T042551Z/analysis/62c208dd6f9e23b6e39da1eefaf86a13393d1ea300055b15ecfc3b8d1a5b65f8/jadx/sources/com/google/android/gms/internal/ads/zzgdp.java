package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* loaded from: classes.dex */
public final class zzgdp {
    private final OutputStream zza;

    private zzgdp(OutputStream outputStream) {
        this.zza = outputStream;
    }

    public static zzgdp zzb(OutputStream outputStream) {
        return new zzgdp(outputStream);
    }

    public final void zza(zzgsx zzgsxVar) {
        try {
            zzgsxVar.zzaU(this.zza);
        } finally {
            this.zza.close();
        }
    }
}
