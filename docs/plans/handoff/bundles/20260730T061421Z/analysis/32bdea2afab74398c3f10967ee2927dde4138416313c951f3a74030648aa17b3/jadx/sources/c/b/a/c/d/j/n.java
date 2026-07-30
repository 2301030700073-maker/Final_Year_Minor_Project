package c.b.a.c.d.j;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.IGmsCallbacks;
import com.google.android.gms.common.internal.IGmsServiceBroker;

/* loaded from: classes.dex */
public final class n implements IGmsServiceBroker {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f2975a;

    public n(IBinder iBinder) {
        this.f2975a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2975a;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void getService(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(iGmsCallbacks.asBinder());
            obtain.writeInt(1);
            getServiceRequest.writeToParcel(obtain, 0);
            this.f2975a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
