package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.MultiInstanceInvalidationService;

/* renamed from: Pm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0434Pm extends Binder implements IInterface {
    public AbstractBinderC0434Pm() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC0412Om interfaceC0412Om = null;
        if (i == 1) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                interfaceC0412Om = (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0412Om)) ? new C0390Nm(readStrongBinder) : (InterfaceC0412Om) queryLocalInterface;
            }
            int o = ((MultiInstanceInvalidationService.Cif) this).o(interfaceC0412Om, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(o);
            return true;
        }
        if (i != 2) {
            if (i == 3) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                ((MultiInstanceInvalidationService.Cif) this).n(parcel.readInt(), parcel.createStringArray());
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
        parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        IBinder readStrongBinder2 = parcel.readStrongBinder();
        if (readStrongBinder2 != null) {
            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            interfaceC0412Om = (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof InterfaceC0412Om)) ? new C0390Nm(readStrongBinder2) : (InterfaceC0412Om) queryLocalInterface2;
        }
        int readInt = parcel.readInt();
        MultiInstanceInvalidationService.Cif cif = (MultiInstanceInvalidationService.Cif) this;
        synchronized (MultiInstanceInvalidationService.this.f7697do) {
            MultiInstanceInvalidationService.this.f7697do.unregister(interfaceC0412Om);
            MultiInstanceInvalidationService.this.f7699do.remove(Integer.valueOf(readInt));
        }
        parcel2.writeNoException();
        return true;
    }
}
