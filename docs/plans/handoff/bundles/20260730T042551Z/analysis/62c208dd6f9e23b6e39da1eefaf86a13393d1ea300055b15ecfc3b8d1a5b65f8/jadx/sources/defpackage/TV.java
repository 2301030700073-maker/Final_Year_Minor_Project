package defpackage;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class TV extends JV {
    public TV(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // defpackage.JV
    /* renamed from: do */
    public final void mo373do(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            toString();
            String.valueOf(bundle2);
        }
        ((JV) this).f1648do.m721if(bundle2);
    }

    @Override // defpackage.JV
    /* renamed from: if */
    public final boolean mo374if() {
        return false;
    }
}
