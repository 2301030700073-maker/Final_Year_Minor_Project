package android.support.v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.Cfor;
import android.support.v4.media.session.MediaSessionCompat;

/* renamed from: android.support.v4.media.session.do, reason: invalid class name */
/* loaded from: classes.dex */
public interface Cdo extends IInterface {

    /* renamed from: android.support.v4.media.session.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractBinderC0022do extends Binder implements Cdo {
        public AbstractBinderC0022do() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                    }
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo3179abstract();
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                    }
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                    }
                    k();
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
                    mo3183new();
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                    }
                    mo3182if();
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                    }
                    mo3180const();
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                    }
                    mo3181continue();
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.readInt();
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.readInt();
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.readInt();
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    parcel.readInt();
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    ((Cfor.Cif) this).f5080do.get();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: abstract */
    void mo3179abstract();

    /* renamed from: const */
    void mo3180const();

    /* renamed from: continue */
    void mo3181continue();

    /* renamed from: if */
    void mo3182if();

    void k();

    /* renamed from: new */
    void mo3183new();
}
