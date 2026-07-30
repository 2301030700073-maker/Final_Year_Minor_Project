package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0303Jm;

/* renamed from: Rm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0478Rm extends IInterface {

    /* renamed from: new, reason: not valid java name */
    public static final String f3236new = "android$support$customtabs$IPostMessageService".replace('$', '.');

    /* renamed from: Rm$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0478Rm {
        public Cdo() {
            attachInterface(this, InterfaceC0478Rm.f3236new);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = InterfaceC0478Rm.f3236new;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()).mo1062import((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()).a(parcel.readString(), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
                parcel2.writeNoException();
            }
            return true;
        }
    }
}
