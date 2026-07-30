package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;

/* loaded from: classes.dex */
public final class JU {

    /* renamed from: do, reason: not valid java name */
    public final Ay f1641do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f1642do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3273lR f1643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1645do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3629rU f1644do = new C3629rU(this, true);

    /* renamed from: if, reason: not valid java name */
    public final C3629rU f1646if = new C3629rU(this, false);

    public JU(Context context, Ay ay, InterfaceC3273lR interfaceC3273lR) {
        this.f1642do = context;
        this.f1641do = ay;
        this.f1643do = interfaceC3273lR;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1038do(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f1645do = z;
        this.f1646if.m7966do(this.f1642do, intentFilter2);
        if (!this.f1645do) {
            this.f1644do.m7966do(this.f1642do, intentFilter);
            return;
        }
        C3629rU c3629rU = this.f1644do;
        Context context = this.f1642do;
        synchronized (c3629rU) {
            if (!c3629rU.f15286do) {
                if (Build.VERSION.SDK_INT >= 33) {
                    context.registerReceiver(c3629rU, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != c3629rU.f15287if ? 4 : 2);
                } else {
                    context.registerReceiver(c3629rU, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                c3629rU.f15286do = true;
            }
        }
    }
}
