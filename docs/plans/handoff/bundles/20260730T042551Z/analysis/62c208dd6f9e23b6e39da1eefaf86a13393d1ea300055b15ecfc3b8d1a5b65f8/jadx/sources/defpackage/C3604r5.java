package defpackage;

import android.os.Handler;
import com.android.billingclient.api.Cdo;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import java.util.List;

/* renamed from: r5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3604r5 implements InterfaceC4127zy {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BillingDataSource f15209do;

    public C3604r5(BillingDataSource billingDataSource) {
        this.f15209do = billingDataSource;
    }

    @Override // defpackage.InterfaceC4127zy
    /* renamed from: do */
    public final void mo5222do(Cdo cdo, List<C4009xy> list) {
        if (cdo.f9106do != 0) {
            Handler handler = BillingDataSource.f12294do;
        } else {
            BillingDataSource billingDataSource = this.f15209do;
            billingDataSource.m6389class(list, billingDataSource.f12301do);
        }
    }
}
