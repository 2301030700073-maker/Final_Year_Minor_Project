package android.support.v4.media.session;

import android.os.IBinder;
import android.os.Parcel;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IMediaSession$Stub$Proxy implements IMediaSession {
    public IBinder mRemote;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public final PlaybackStateCompat getPlaybackState() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            this.mRemote.transact(28, obtain, obtain2, 0);
            obtain2.readException();
            return (PlaybackStateCompat) Okio.access$000(obtain2, PlaybackStateCompat.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
