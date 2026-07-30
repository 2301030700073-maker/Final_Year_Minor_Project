package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.browser.customtabs.CustomTabsService;
import defpackage.InterfaceC0303Jm;
import java.util.ArrayList;

/* renamed from: Km, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0325Km extends IInterface {

    /* renamed from: if, reason: not valid java name */
    public static final String f1877if = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    /* renamed from: Km$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0325Km {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int f1878for = 0;

        /* renamed from: Km$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0002do implements InterfaceC0325Km {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f1879do;

            public C0002do(IBinder iBinder) {
                this.f1879do = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1879do;
            }

            @Override // defpackage.InterfaceC0325Km
            /* renamed from: goto */
            public final boolean mo1207goto(BinderC3810uc binderC3810uc) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeStrongInterface(binderC3810uc);
                    this.f1879do.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0325Km
            public final boolean h(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle, ArrayList arrayList) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeStrongInterface(interfaceC0303Jm);
                    Cif.m1212if(obtain, uri, 0);
                    Cif.m1212if(obtain, bundle, 0);
                    if (arrayList == null) {
                        obtain.writeInt(-1);
                    } else {
                        int size = arrayList.size();
                        obtain.writeInt(size);
                        for (int i = 0; i < size; i++) {
                            Cif.m1212if(obtain, (Parcelable) arrayList.get(i), 0);
                        }
                    }
                    this.f1879do.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0325Km
            public final boolean i(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeStrongInterface(interfaceC0303Jm);
                    Cif.m1212if(obtain, uri, 0);
                    Cif.m1212if(obtain, bundle, 0);
                    this.f1879do.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0325Km
            /* renamed from: instanceof */
            public final int mo1208instanceof(InterfaceC0303Jm interfaceC0303Jm, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeStrongInterface(interfaceC0303Jm);
                    obtain.writeString(str);
                    Cif.m1212if(obtain, bundle, 0);
                    this.f1879do.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0325Km
            /* renamed from: synchronized */
            public final boolean mo1209synchronized(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeLong(j);
                    this.f1879do.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.InterfaceC0325Km
            /* renamed from: volatile */
            public final boolean mo1210volatile(InterfaceC0303Jm interfaceC0303Jm, Uri uri) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(InterfaceC0325Km.f1877if);
                    obtain.writeStrongInterface(interfaceC0303Jm);
                    Cif.m1212if(obtain, uri, 0);
                    this.f1879do.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Cdo() {
            attachInterface(this, InterfaceC0325Km.f1877if);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IInterface queryLocalInterface;
            String str = InterfaceC0325Km.f1877if;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 2:
                    boolean mo1209synchronized = ((CustomTabsService.Cdo) this).mo1209synchronized(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo1209synchronized ? 1 : 0);
                    return true;
                case 3:
                    boolean o = ((CustomTabsService.Cdo) this).o(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), null);
                    parcel2.writeNoException();
                    parcel2.writeInt(o ? 1 : 0);
                    return true;
                case 4:
                    InterfaceC0303Jm n = InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder());
                    Uri uri = (Uri) Cif.m1211do(parcel, Uri.CREATOR);
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean h = ((CustomTabsService.Cdo) this).h(n, uri, (Bundle) Cif.m1211do(parcel, creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(h ? 1 : 0);
                    return true;
                case 5:
                    parcel.readString();
                    Bundle m3549do = CustomTabsService.this.m3549do();
                    parcel2.writeNoException();
                    Cif.m1212if(parcel2, m3549do, 1);
                    return true;
                case 6:
                    new C0095Ac(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), CustomTabsService.Cdo.n((Bundle) Cif.m1211do(parcel, Bundle.CREATOR)));
                    boolean m3550else = CustomTabsService.this.m3550else();
                    parcel2.writeNoException();
                    parcel2.writeInt(m3550else ? 1 : 0);
                    return true;
                case 7:
                    boolean mo1210volatile = ((CustomTabsService.Cdo) this).mo1210volatile(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), (Uri) Cif.m1211do(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(mo1210volatile ? 1 : 0);
                    return true;
                case 8:
                    int mo1208instanceof = ((CustomTabsService.Cdo) this).mo1208instanceof(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), parcel.readString(), (Bundle) Cif.m1211do(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(mo1208instanceof);
                    return true;
                case 9:
                    InterfaceC0303Jm n2 = InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder());
                    parcel.readInt();
                    new C0095Ac(n2, CustomTabsService.Cdo.n((Bundle) Cif.m1211do(parcel, Bundle.CREATOR)));
                    boolean m3552goto = CustomTabsService.this.m3552goto();
                    parcel2.writeNoException();
                    parcel2.writeInt(m3552goto ? 1 : 0);
                    return true;
                case 10:
                    boolean o2 = ((CustomTabsService.Cdo) this).o(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), CustomTabsService.Cdo.n((Bundle) Cif.m1211do(parcel, Bundle.CREATOR)));
                    parcel2.writeNoException();
                    parcel2.writeInt(o2 ? 1 : 0);
                    return true;
                case 11:
                    boolean i3 = ((CustomTabsService.Cdo) this).i(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), (Uri) Cif.m1211do(parcel, Uri.CREATOR), (Bundle) Cif.m1211do(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(i3 ? 1 : 0);
                    return true;
                case 12:
                    InterfaceC0303Jm n3 = InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder());
                    parcel.readInt();
                    new C0095Ac(n3, CustomTabsService.Cdo.n((Bundle) Cif.m1211do(parcel, Bundle.CREATOR)));
                    boolean m3556try = CustomTabsService.this.m3556try();
                    parcel2.writeNoException();
                    parcel2.writeInt(m3556try ? 1 : 0);
                    return true;
                case 13:
                    new C0095Ac(InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder()), CustomTabsService.Cdo.n((Bundle) Cif.m1211do(parcel, Bundle.CREATOR)));
                    CustomTabsService.this.getClass();
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                case 14:
                    InterfaceC0303Jm n4 = InterfaceC0303Jm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    Bundle bundle = (Bundle) Cif.m1211do(parcel, Bundle.CREATOR);
                    CustomTabsService.Cdo cdo = (CustomTabsService.Cdo) this;
                    if (readStrongBinder != null && (queryLocalInterface = readStrongBinder.queryLocalInterface(InterfaceC0347Lm.f1999for)) != null && (queryLocalInterface instanceof InterfaceC0347Lm)) {
                    }
                    new C0095Ac(n4, CustomTabsService.Cdo.n(bundle));
                    CustomTabsService.this.getClass();
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: Km$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Object m1211do(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public static <T extends Parcelable> void m1212if(Parcel parcel, T t, int i) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    boolean mo1207goto(BinderC3810uc binderC3810uc);

    boolean h(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle, ArrayList arrayList);

    boolean i(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle);

    /* renamed from: instanceof, reason: not valid java name */
    int mo1208instanceof(InterfaceC0303Jm interfaceC0303Jm, String str, Bundle bundle);

    /* renamed from: synchronized, reason: not valid java name */
    boolean mo1209synchronized(long j);

    /* renamed from: volatile, reason: not valid java name */
    boolean mo1210volatile(InterfaceC0303Jm interfaceC0303Jm, Uri uri);
}
