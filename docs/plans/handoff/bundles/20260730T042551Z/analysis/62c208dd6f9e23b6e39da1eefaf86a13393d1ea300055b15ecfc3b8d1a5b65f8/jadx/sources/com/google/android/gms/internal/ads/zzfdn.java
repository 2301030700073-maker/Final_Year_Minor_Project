package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.FG;
import defpackage.InterfaceC3248l2;

/* loaded from: classes.dex */
public final class zzfdn {
    static FG zza;
    public static InterfaceC3248l2 zzb;
    private static final Object zzc = new Object();

    public static FG zza(Context context) {
        FG fg;
        zzb(context, false);
        synchronized (zzc) {
            fg = zza;
        }
        return fg;
    }

    public static void zzb(Context context, boolean z) {
        synchronized (zzc) {
            try {
                if (zzb == null) {
                    zzb = new com.google.android.gms.internal.appset.zzr(context);
                }
                FG fg = zza;
                if (fg == null || ((fg.mo602super() && !zza.mo604throw()) || (z && zza.mo602super()))) {
                    zza = ((InterfaceC3248l2) Preconditions.checkNotNull(zzb, "the appSetIdClient shouldn't be null")).getAppSetIdInfo();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
