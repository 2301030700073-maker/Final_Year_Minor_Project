package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: sN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3681sN implements IInterface {

    /* renamed from: break, reason: not valid java name */
    public final String f15445break;

    /* renamed from: do, reason: not valid java name */
    public final IBinder f15446do;

    public C3681sN(IBinder iBinder, String str) {
        this.f15446do = iBinder;
        this.f15445break = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f15446do;
    }

    public final void n(int i, Parcel parcel) {
        try {
            this.f15446do.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
