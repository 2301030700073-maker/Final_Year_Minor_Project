package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class zzgdo {
    private final InputStream zza;

    private zzgdo(InputStream inputStream) {
        this.zza = inputStream;
    }

    public static zzgdo zzb(byte[] bArr) {
        return new zzgdo(new ByteArrayInputStream(bArr));
    }

    public final zzgsx zza() {
        try {
            return zzgsx.zzg(this.zza, zzgxb.zza());
        } finally {
            this.zza.close();
        }
    }
}
