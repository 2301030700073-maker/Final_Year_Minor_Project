package android.support.v4.os;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IResultReceiver$Stub$Proxy implements IResultReceiver {
    public IBinder mRemote;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.support.v4.os.IResultReceiver
    public final void send(int i, Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IResultReceiver.DESCRIPTOR);
            obtain.writeInt(i);
            obtain.writeTypedObject(bundle, 0);
            if (this.mRemote.transact(1, obtain, null, 1)) {
            } else {
                throw new RemoteException("Method send is unimplemented.");
            }
        } finally {
            obtain.recycle();
        }
    }
}
