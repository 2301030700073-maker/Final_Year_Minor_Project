package defpackage;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class DV extends JV {
    public DV(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // defpackage.JV
    /* renamed from: do, reason: not valid java name */
    public final void mo373do(Bundle bundle) {
        if (!bundle.getBoolean("ack", false)) {
            m1039for(new C2855hC("Invalid response to one way request", null));
            return;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            toString();
        }
        ((JV) this).f1648do.m721if(null);
    }

    @Override // defpackage.JV
    /* renamed from: if, reason: not valid java name */
    public final boolean mo374if() {
        return true;
    }
}
