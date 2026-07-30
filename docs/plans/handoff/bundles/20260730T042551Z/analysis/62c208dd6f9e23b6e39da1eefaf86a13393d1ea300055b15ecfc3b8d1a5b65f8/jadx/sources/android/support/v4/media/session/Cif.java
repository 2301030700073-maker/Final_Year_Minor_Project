package android.support.v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;

/* renamed from: android.support.v4.media.session.if, reason: invalid class name */
/* loaded from: classes.dex */
public interface Cif extends IInterface {

    /* renamed from: android.support.v4.media.session.if$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements Cif {

        /* renamed from: android.support.v4.media.session.if$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0023do implements Cif {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f5081do;

            public C0023do(IBinder iBinder) {
                this.f5081do = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f5081do;
            }

            @Override // android.support.v4.media.session.Cif
            /* renamed from: this */
            public final void mo3185this(MediaControllerCompat$MediaControllerImplApi21.Cdo cdo) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(cdo);
                    this.f5081do.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static Cif n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof Cif)) ? new C0023do(iBinder) : (Cif) queryLocalInterface;
        }
    }

    /* renamed from: this, reason: not valid java name */
    void mo3185this(MediaControllerCompat$MediaControllerImplApi21.Cdo cdo);
}
