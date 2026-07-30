package defpackage;

import android.os.IBinder;
import android.os.Parcel;

/* renamed from: Nm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0390Nm implements InterfaceC0412Om {

    /* renamed from: do, reason: not valid java name */
    public final IBinder f2433do;

    public C0390Nm(IBinder iBinder) {
        this.f2433do = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2433do;
    }

    @Override // defpackage.InterfaceC0412Om
    /* renamed from: super, reason: not valid java name */
    public final void mo1551super(String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
            obtain.writeStringArray(strArr);
            this.f2433do.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
