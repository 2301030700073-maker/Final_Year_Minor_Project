package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class SN extends C3681sN implements UN {
    public SN(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.UN
    /* renamed from: do, reason: not valid java name */
    public final void mo2153do(Bundle bundle, InterfaceC2632dO interfaceC2632dO) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15445break);
        int i = PN.f2777do;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(interfaceC2632dO);
        n(6, obtain);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.UN
    /* renamed from: finally, reason: not valid java name */
    public final void mo2154finally(Bundle bundle, WN wn) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15445break);
        int i = PN.f2777do;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(wn);
        n(2, obtain);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.UN
    /* renamed from: interface, reason: not valid java name */
    public final void mo2155interface(Bundle bundle, WN wn) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15445break);
        int i = PN.f2777do;
        obtain.writeInt(1);
        bundle.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(wn);
        n(3, obtain);
    }
}
