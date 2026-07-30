package a.a.a.a;

import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.os.IResultReceiver;
import android.support.v4.os.ResultReceiver;

/* loaded from: classes.dex */
public class c extends Binder implements IResultReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ResultReceiver f1a;

    public c(ResultReceiver resultReceiver) {
        this.f1a = resultReceiver;
        attachInterface(this, "android.support.v4.os.IResultReceiver");
    }

    public static IResultReceiver asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof IResultReceiver)) ? new a(iBinder) : (IResultReceiver) queryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
        parcel.enforceInterface("android.support.v4.os.IResultReceiver");
        parcel.readInt();
        if (parcel.readInt() != 0) {
        }
        ResultReceiver resultReceiver = this.f1a;
        Handler handler = resultReceiver.f2a;
        resultReceiver.a();
        return true;
    }
}
