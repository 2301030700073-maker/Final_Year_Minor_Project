package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.core.content.UnusedAppRestrictionsBackportService;

/* renamed from: Ym, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0632Ym extends IInterface {

    /* renamed from: goto, reason: not valid java name */
    public static final String f4756goto = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportService".replace('$', '.');

    /* renamed from: Ym$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0632Ym {
        public Cdo() {
            attachInterface(this, InterfaceC0632Ym.f4756goto);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            InterfaceC0610Xm c0588Wm;
            String str = InterfaceC0632Ym.f4756goto;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c0588Wm = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(InterfaceC0610Xm.f4599else);
                c0588Wm = (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0610Xm)) ? new C0588Wm(readStrongBinder) : (InterfaceC0610Xm) queryLocalInterface;
            }
            UnusedAppRestrictionsBackportService.Cdo cdo = (UnusedAppRestrictionsBackportService.Cdo) this;
            if (c0588Wm != null) {
                UnusedAppRestrictionsBackportService.this.m3718do();
            }
            return true;
        }
    }
}
