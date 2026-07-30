package defpackage;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzlk;

/* renamed from: nR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3391nR {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3617rI f14521do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14522do;

    public C3391nR(Context context) {
        try {
            BI.m174if(context);
            this.f14521do = BI.m173do().m175for(C3547q6.f15038do).mo8467do("PLAY_BILLING_LIBRARY", new C0823cg("proto"), new QJ(1));
        } catch (Throwable unused) {
            this.f14522do = true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7568do(zzlk zzlkVar) {
        if (this.f14522do) {
            zze.zzl("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            InterfaceC3617rI interfaceC3617rI = this.f14521do;
            V3 v3 = new V3(zzlkVar, Ex.DEFAULT, null);
            C3971xI c3971xI = (C3971xI) interfaceC3617rI;
            c3971xI.getClass();
            c3971xI.m8640do(v3, new C0472Rg(4));
        } catch (Throwable unused) {
            zze.zzl("BillingLogger", "logging failed.");
        }
    }
}
