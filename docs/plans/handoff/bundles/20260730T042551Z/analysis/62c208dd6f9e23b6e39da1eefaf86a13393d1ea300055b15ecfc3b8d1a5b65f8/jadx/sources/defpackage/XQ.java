package defpackage;

import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzej;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class XQ implements zzej {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4508do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2811gR f4509do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Runnable f4510do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Consumer f4511do;

    public XQ(C2811gR c2811gR, int i, Consumer consumer, Runnable runnable) {
        this.f4508do = i;
        this.f4511do = consumer;
        this.f4510do = runnable;
        this.f4509do = c2811gR;
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final void zza(Throwable th) {
        boolean z = th instanceof TimeoutException;
        C2811gR c2811gR = this.f4509do;
        if (z) {
            c2811gR.m6738interface(114, 28, Cif.f9125return);
            zze.zzm("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            c2811gR.m6738interface(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 28, Cif.f9125return);
            zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.f4510do.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final void zzb(Object obj) {
        Integer num = (Integer) obj;
        if (!(num.intValue() > 0)) {
            this.f4510do.run();
            return;
        }
        int intValue = num.intValue();
        C2811gR c2811gR = this.f4509do;
        c2811gR.getClass();
        Cdo m5221do = Cif.m5221do(intValue, "Billing override value was set by a license tester.");
        c2811gR.m6738interface(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, this.f4508do, m5221do);
        this.f4511do.accept(m5221do);
    }
}
