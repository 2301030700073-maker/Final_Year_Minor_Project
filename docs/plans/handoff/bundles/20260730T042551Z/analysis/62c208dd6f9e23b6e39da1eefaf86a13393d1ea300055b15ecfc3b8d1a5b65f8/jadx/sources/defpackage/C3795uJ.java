package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.ResultReceiver;
import androidx.activity.result.ActivityResult;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.internal.play_billing.zze;

/* renamed from: uJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3795uJ implements V, InterfaceC3933wh {

    /* renamed from: do, reason: not valid java name */
    public final Object f15874do;

    public /* synthetic */ C3795uJ(Object obj) {
        this.f15874do = obj;
    }

    @Override // defpackage.V
    /* renamed from: do */
    public final void mo2492do(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.f15874do;
        ActivityResult activityResult = (ActivityResult) obj;
        proxyBillingActivityV2.getClass();
        Intent intent = activityResult.f5147do;
        int i = zze.zzf(intent, "ProxyBillingActivityV2").f9106do;
        ResultReceiver resultReceiver = proxyBillingActivityV2.f9102do;
        if (resultReceiver != null) {
            resultReceiver.send(i, intent == null ? null : intent.getExtras());
        }
        int i2 = activityResult.f5148for;
        if (i2 != -1 || i != 0) {
            zze.zzl("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + i2 + " and billing's responseCode: " + i);
        }
        proxyBillingActivityV2.finish();
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        String packageName = ((Context) ((InterfaceC3597qy) this.f15874do).get()).getPackageName();
        if (packageName != null) {
            return packageName;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
