package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: Jm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0303Jm extends IInterface {

    /* renamed from: do, reason: not valid java name */
    public static final String f1687do = "android$support$customtabs$ICustomTabsCallback".replace('$', '.');

    /* renamed from: Jm$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0303Jm {

        /* renamed from: Jm$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0001do implements InterfaceC0303Jm {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f1688do;

            public C0001do(IBinder iBinder) {
                this.f1688do = iBinder;
            }

            @Override // defpackage.InterfaceC0303Jm
            public final void a(String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeString(str);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1688do;
            }

            @Override // defpackage.InterfaceC0303Jm
            public final void b(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: break */
            public final void mo1059break(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeInt(i);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: else */
            public final Bundle mo1060else(String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeString(str);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) Cif.m1066do(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            public final void f(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: implements */
            public final void mo1061implements(int i, int i2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: import */
            public final void mo1062import(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            public final void l(String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeString(str);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: private */
            public final void mo1063private(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: return */
            public final void mo1064return(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0303Jm
            /* renamed from: switch */
            public final void mo1065switch(int i, Uri uri, boolean z, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0303Jm.f1687do);
                    obtain.writeInt(i);
                    Cif.m1067if(obtain, uri, 0);
                    obtain.writeInt(z ? 1 : 0);
                    Cif.m1067if(obtain, bundle, 0);
                    this.f1688do.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Cdo() {
            attachInterface(this, InterfaceC0303Jm.f1687do);
        }

        public static InterfaceC0303Jm n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(InterfaceC0303Jm.f1687do);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0303Jm)) ? new C0001do(iBinder) : (InterfaceC0303Jm) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = InterfaceC0303Jm.f1687do;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 2:
                    ((BinderC3810uc) this).mo1059break(parcel.readInt(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 3:
                    ((BinderC3810uc) this).l(parcel.readString(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 4:
                    ((BinderC3810uc) this).mo1062import((Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    ((BinderC3810uc) this).a(parcel.readString(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    ((BinderC3810uc) this).mo1065switch(parcel.readInt(), (Uri) Cif.m1066do(parcel, Uri.CREATOR), parcel.readInt() != 0, (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 7:
                    Bundle mo1060else = ((BinderC3810uc) this).mo1060else(parcel.readString(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    Cif.m1067if(parcel2, mo1060else, 1);
                    return true;
                case 8:
                    ((BinderC3810uc) this).mo1061implements(parcel.readInt(), parcel.readInt(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 9:
                    ((BinderC3810uc) this).mo1063private((Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 10:
                    ((BinderC3810uc) this).b(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 11:
                    ((BinderC3810uc) this).f((Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                case 12:
                    ((BinderC3810uc) this).mo1064return((Bundle) Cif.m1066do(parcel, Bundle.CREATOR));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: Jm$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Object m1066do(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m1067if(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            }
        }
    }

    void a(String str, Bundle bundle);

    void b(int i, int i2, int i3, int i4, int i5, Bundle bundle);

    /* renamed from: break, reason: not valid java name */
    void mo1059break(int i, Bundle bundle);

    /* renamed from: else, reason: not valid java name */
    Bundle mo1060else(String str, Bundle bundle);

    void f(Bundle bundle);

    /* renamed from: implements, reason: not valid java name */
    void mo1061implements(int i, int i2, Bundle bundle);

    /* renamed from: import, reason: not valid java name */
    void mo1062import(Bundle bundle);

    void l(String str, Bundle bundle);

    /* renamed from: private, reason: not valid java name */
    void mo1063private(Bundle bundle);

    /* renamed from: return, reason: not valid java name */
    void mo1064return(Bundle bundle);

    /* renamed from: switch, reason: not valid java name */
    void mo1065switch(int i, Uri uri, boolean z, Bundle bundle);
}
