package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgvo {
    private final OutputStream zza;

    private zzgvo(OutputStream outputStream) {
        this.zza = outputStream;
    }

    public static zzgvo zzb(OutputStream outputStream) {
        return new zzgvo(outputStream);
    }

    public final void zza(zzhlg zzhlgVar) throws IOException {
        try {
            zzhlgVar.zzaO(this.zza);
        } finally {
            this.zza.close();
        }
    }
}
