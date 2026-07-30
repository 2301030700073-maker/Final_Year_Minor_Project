package defpackage;

import com.joeykrim.rootcheck.gpiab.BillingDataSource;

/* renamed from: q5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3546q5 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BillingDataSource f15036do;

    public RunnableC3546q5(BillingDataSource billingDataSource) {
        this.f15036do = billingDataSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            BillingDataSource billingDataSource = this.f15036do;
            billingDataSource.f12302do.mo6743this(billingDataSource);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }
}
