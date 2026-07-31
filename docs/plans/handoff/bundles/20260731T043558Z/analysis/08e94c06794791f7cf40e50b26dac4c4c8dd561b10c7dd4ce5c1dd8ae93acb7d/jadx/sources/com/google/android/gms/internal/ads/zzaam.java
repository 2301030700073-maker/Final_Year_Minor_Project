package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaam extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzaal zzd;
    private boolean zze;

    /* synthetic */ zzaam(zzaal zzaalVar, SurfaceTexture surfaceTexture, boolean z, byte[] bArr) {
        super(surfaceTexture);
        this.zzd = zzaalVar;
        this.zza = z;
    }

    public static synchronized boolean zza(Context context) {
        int i;
        int i2;
        synchronized (zzaam.class) {
            if (!zzc) {
                try {
                } catch (zzdj e) {
                    String message = e.getMessage();
                    String.valueOf(message);
                    zzdt.zze("PlaceholderSurface", "Failed to determine secure mode due to GL error: ".concat(String.valueOf(message)));
                }
                if (zzdk.zza(context)) {
                    i = zzdk.zzb() ? 1 : 2;
                    zzb = i;
                    zzc = true;
                }
                i = 0;
                zzb = i;
                zzc = true;
            }
            i2 = zzb;
        }
        return i2 != 0;
    }

    public static zzaam zzb(Context context, boolean z) {
        boolean z2 = true;
        if (z && !zza(context)) {
            z2 = false;
        }
        zzgmd.zzh(z2);
        return new zzaal().zza(z ? zzb : 0);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        zzaal zzaalVar = this.zzd;
        synchronized (zzaalVar) {
            if (!this.zze) {
                zzaalVar.zzb();
                this.zze = true;
            }
        }
    }
}
