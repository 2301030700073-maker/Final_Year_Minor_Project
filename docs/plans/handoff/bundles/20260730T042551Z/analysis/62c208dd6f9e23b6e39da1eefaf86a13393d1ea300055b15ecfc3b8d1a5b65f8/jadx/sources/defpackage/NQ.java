package defpackage;

import com.android.billingclient.api.Cif;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.play_billing.zzav;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzr;

/* loaded from: classes.dex */
public final /* synthetic */ class NQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2376do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2811gR f2377do;

    public /* synthetic */ NQ(C2811gR c2811gR, int i) {
        this.f2377do = c2811gR;
        this.f2376do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1529do(zzr zzrVar) {
        String str;
        C2811gR c2811gR = this.f2377do;
        int i = this.f2376do;
        c2811gR.getClass();
        try {
            c2811gR.f13171do.getClass();
            zzav zzavVar = c2811gR.f13171do;
            String packageName = c2811gR.f13175if.getPackageName();
            switch (i) {
                case 2:
                    str = "LAUNCH_BILLING_FLOW";
                    break;
                case 3:
                    str = "ACKNOWLEDGE_PURCHASE";
                    break;
                case 4:
                    str = "CONSUME_ASYNC";
                    break;
                case 5:
                    str = "IS_FEATURE_SUPPORTED";
                    break;
                case 6:
                    str = "START_CONNECTION";
                    break;
                case 7:
                    str = "QUERY_PRODUCT_DETAILS_ASYNC";
                    break;
                default:
                    str = "QUERY_SKU_DETAILS_ASYNC";
                    break;
            }
            zzavVar.zza(packageName, str, new YQ(zzrVar));
        } catch (Exception e) {
            c2811gR.m6738interface(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 28, Cif.f9125return);
            zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", e);
            zzrVar.zzb(0);
        }
    }
}
