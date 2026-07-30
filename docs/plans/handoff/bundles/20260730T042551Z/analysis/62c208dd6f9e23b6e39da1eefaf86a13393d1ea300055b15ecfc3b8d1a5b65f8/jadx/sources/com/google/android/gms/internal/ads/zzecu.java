package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.MobileAds;
import defpackage.C0173Do;
import defpackage.C0630Yk;
import defpackage.C3187k0;
import defpackage.InterfaceFutureC3942wq;
import defpackage.RH;
import defpackage.SH;
import defpackage.TH;
import defpackage.UH;

/* loaded from: classes.dex */
public final class zzecu {
    private final Context zza;

    public zzecu(Context context) {
        this.zza = context;
    }

    public final InterfaceFutureC3942wq zza(boolean z) {
        UH rh;
        try {
            new C0630Yk.Cdo();
            C0630Yk c0630Yk = new C0630Yk(MobileAds.ERROR_DOMAIN, z);
            Context context = this.zza;
            C0173Do.m401try(context, "context");
            int i = Build.VERSION.SDK_INT;
            C3187k0 c3187k0 = C3187k0.f13862do;
            if ((i >= 30 ? c3187k0.m7208do() : 0) >= 5) {
                rh = new SH(context);
            } else {
                rh = (i >= 30 ? c3187k0.m7208do() : 0) == 4 ? new RH(context) : null;
            }
            TH.Cdo cdo = rh != null ? new TH.Cdo(rh) : null;
            return cdo != null ? cdo.m2234do(c0630Yk) : zzgch.zzg(new IllegalStateException());
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }
}
