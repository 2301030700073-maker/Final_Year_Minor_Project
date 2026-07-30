package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: sS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3686sS extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public final ZU f15494do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15495do;

    /* renamed from: if, reason: not valid java name */
    public boolean f15496if;

    public C3686sS(ZU zu) {
        Preconditions.checkNotNull(zu);
        this.f15494do = zu;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8131do() {
        ZU zu = this.f15494do;
        zu.q();
        zu.mo2253do().mo1960catch();
        zu.mo2253do().mo1960catch();
        if (this.f15495do) {
            zu.mo2249case().f13723this.m7369if("Unregistering connectivity change receiver");
            this.f15495do = false;
            this.f15496if = false;
            try {
                zu.f4833do.f3688do.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                zu.mo2249case().f13717do.m7368for("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ZU zu = this.f15494do;
        zu.q();
        String action = intent.getAction();
        zu.mo2249case().f13723this.m7368for("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zu.mo2249case().f13722new.m7368for("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        C3333mS c3333mS = zu.f4846do;
        ZU.m3016extends(c3333mS);
        boolean m7456return = c3333mS.m7456return();
        if (this.f15496if != m7456return) {
            this.f15496if = m7456return;
            zu.mo2253do().m1964public(new RunnableC3627rS(this, m7456return));
        }
    }
}
