package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import defpackage.C3631ra;
import defpackage.C3808ua;

/* loaded from: classes.dex */
final class zzl {
    private final Application zza;
    private final zzam zzb;

    public zzl(Application application, zzam zzamVar) {
        this.zza = application;
        this.zzb = zzamVar;
    }

    public final zzcf zzc(Activity activity, C3808ua c3808ua) {
        c3808ua.getClass();
        return zzn.zza(new zzn(this, activity, new C3631ra.Cdo(this.zza).m7972do(), c3808ua, null));
    }
}
