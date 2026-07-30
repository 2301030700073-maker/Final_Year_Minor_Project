package defpackage;

import android.os.Bundle;
import android.os.Parcel;

/* renamed from: aO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractBinderC0689aO extends LN implements InterfaceC0749bO {
    public AbstractBinderC0689aO() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // defpackage.LN
    public final boolean a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        Bundle bundle = (Bundle) PN.m1769do(parcel, Bundle.CREATOR);
        PN.m1770if(parcel);
        b(bundle);
        return true;
    }
}
