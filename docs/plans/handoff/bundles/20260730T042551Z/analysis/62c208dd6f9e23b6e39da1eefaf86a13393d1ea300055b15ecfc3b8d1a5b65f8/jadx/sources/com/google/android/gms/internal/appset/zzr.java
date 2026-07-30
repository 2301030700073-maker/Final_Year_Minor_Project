package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import defpackage.C3307m2;
import defpackage.FG;
import defpackage.InterfaceC0598Xa;
import defpackage.InterfaceC3248l2;
import defpackage.LG;

/* loaded from: classes.dex */
public final class zzr implements InterfaceC3248l2 {
    private final InterfaceC3248l2 zza;
    private final InterfaceC3248l2 zzb;

    public zzr(Context context) {
        this.zza = new zzp(context, GoogleApiAvailabilityLight.getInstance());
        this.zzb = zzl.zzc(context);
    }

    public static /* synthetic */ FG zza(zzr zzrVar, FG fg) {
        if (fg.mo604throw() || fg.mo596final()) {
            return fg;
        }
        Exception mo591catch = fg.mo591catch();
        if (!(mo591catch instanceof ApiException)) {
            return fg;
        }
        int statusCode = ((ApiException) mo591catch).getStatusCode();
        return (statusCode == 43001 || statusCode == 43002 || statusCode == 43003 || statusCode == 17) ? zzrVar.zzb.getAppSetIdInfo() : statusCode == 43000 ? LG.m1319new(new Exception("Failed to get app set ID due to an internal error. Please try again later.")) : statusCode != 15 ? fg : LG.m1319new(new Exception("The operation to get app set ID timed out. Please try again later."));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.appset.zzq] */
    @Override // defpackage.InterfaceC3248l2
    public final FG<C3307m2> getAppSetIdInfo() {
        return this.zza.getAppSetIdInfo().mo603this(new InterfaceC0598Xa() { // from class: com.google.android.gms.internal.appset.zzq
            @Override // defpackage.InterfaceC0598Xa
            public final Object then(FG fg) {
                return zzr.zza(zzr.this, fg);
            }
        });
    }
}
