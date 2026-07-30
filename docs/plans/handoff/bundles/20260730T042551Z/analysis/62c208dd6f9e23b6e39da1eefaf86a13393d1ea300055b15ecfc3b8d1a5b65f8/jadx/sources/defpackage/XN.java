package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class XN extends C3681sN implements ZN {
    public XN(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ZN
    /* renamed from: do, reason: not valid java name */
    public final void mo2829do(Bundle bundle, InterfaceC2632dO interfaceC2632dO) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15445break);
        int i = PN.f2777do;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(interfaceC2632dO);
        n(3, obtain);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ZN
    /* renamed from: strictfp, reason: not valid java name */
    public final void mo2830strictfp(Bundle bundle, InterfaceC0749bO interfaceC0749bO) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15445break);
        int i = PN.f2777do;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(interfaceC0749bO);
        n(2, obtain);
    }
}
