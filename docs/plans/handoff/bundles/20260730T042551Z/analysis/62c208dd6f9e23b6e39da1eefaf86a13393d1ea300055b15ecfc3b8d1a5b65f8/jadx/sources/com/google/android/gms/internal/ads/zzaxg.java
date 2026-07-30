package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzaxg extends zzaxr {
    public zzaxg(zzawd zzawdVar, String str, String str2, zzasc zzascVar, int i, int i2) {
        super(zzawdVar, "VbyGv7sES/oWGQr2qJ1ojtDXkdOVtq/qZqCmKZiE07d+0W3i1KsQhhRGQ9Xgn5dY", "qVy1S3GZ9+f6FFC31TUnbavXTKbKjAeTCoTlnIfZI+M=", zzascVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzaxr
    public final void zza() {
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue();
            zzasc zzascVar = this.zzd;
            if (true == booleanValue) {
                i = 2;
            }
            zzascVar.zzaf(i);
        } catch (InvocationTargetException unused) {
            this.zzd.zzaf(3);
        }
    }
}
