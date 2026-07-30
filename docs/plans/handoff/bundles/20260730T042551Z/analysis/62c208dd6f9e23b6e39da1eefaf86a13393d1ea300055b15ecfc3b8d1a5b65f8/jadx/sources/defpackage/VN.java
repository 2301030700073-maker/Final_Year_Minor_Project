package defpackage;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class VN extends LN implements WN {
    public VN() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // defpackage.LN
    public final boolean a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) PN.m1769do(parcel, Bundle.CREATOR);
            PN.m1770if(parcel);
            e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) PN.m1769do(parcel, Bundle.CREATOR);
            PN.m1770if(parcel);
            c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) PN.m1769do(parcel, Bundle.CREATOR);
            PN.m1770if(parcel);
            d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) PN.m1769do(parcel, Bundle.CREATOR);
        PN.m1770if(parcel);
        b(bundle4);
        return true;
    }
}
