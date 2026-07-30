package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import defpackage.AbstractC3884vr;
import defpackage.F2;
import defpackage.FG;
import defpackage.GG;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zal {
    private int zad;
    private final F2 zab = new F2();
    private final GG zac = new GG();
    private boolean zae = false;
    private final F2 zaa = new F2();

    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zaa.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.zad = ((AbstractC3884vr.Cfor) this.zaa.keySet()).size();
    }

    public final FG zaa() {
        return this.zac.f1160do;
    }

    public final Set zab() {
        return this.zaa.keySet();
    }

    public final void zac(ApiKey apiKey, ConnectionResult connectionResult, String str) {
        this.zaa.put(apiKey, connectionResult);
        this.zab.put(apiKey, str);
        this.zad--;
        if (!connectionResult.isSuccess()) {
            this.zae = true;
        }
        if (this.zad == 0) {
            if (!this.zae) {
                this.zac.m721if(this.zab);
            } else {
                this.zac.m719do(new AvailabilityException(this.zaa));
            }
        }
    }
}
