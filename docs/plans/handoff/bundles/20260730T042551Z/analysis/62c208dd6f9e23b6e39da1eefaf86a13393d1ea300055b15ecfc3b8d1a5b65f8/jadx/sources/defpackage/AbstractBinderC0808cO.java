package defpackage;

import android.os.Bundle;
import android.os.Parcel;

/* renamed from: cO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractBinderC0808cO extends LN implements InterfaceC2632dO {
    public AbstractBinderC0808cO() {
        super("com.google.android.play.core.integrity.protocol.IRequestDialogCallback");
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
