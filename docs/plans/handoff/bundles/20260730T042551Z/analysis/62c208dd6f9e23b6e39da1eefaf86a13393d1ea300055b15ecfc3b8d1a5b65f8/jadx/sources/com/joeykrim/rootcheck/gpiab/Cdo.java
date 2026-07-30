package com.joeykrim.rootcheck.gpiab;

import android.os.Handler;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import defpackage.C4009xy;
import defpackage.InterfaceC0269Ia;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.joeykrim.rootcheck.gpiab.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements InterfaceC0269Ia {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BillingDataSource f12313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4009xy f12314do;

    public Cdo(BillingDataSource billingDataSource, C4009xy c4009xy) {
        this.f12313do = billingDataSource;
        this.f12314do = c4009xy;
    }

    @Override // defpackage.InterfaceC0269Ia
    /* renamed from: case */
    public final void mo957case(com.android.billingclient.api.Cdo cdo, String str) {
        BillingDataSource billingDataSource = this.f12313do;
        HashSet hashSet = billingDataSource.f12305if;
        C4009xy c4009xy = this.f12314do;
        hashSet.remove(c4009xy);
        if (cdo.f9106do != 0) {
            Handler handler = BillingDataSource.f12294do;
            return;
        }
        Iterator<String> it = c4009xy.m8686for().iterator();
        while (it.hasNext()) {
            billingDataSource.m6391final(it.next(), BillingDataSource.Cfor.SKU_STATE_UNPURCHASED);
        }
    }
}
