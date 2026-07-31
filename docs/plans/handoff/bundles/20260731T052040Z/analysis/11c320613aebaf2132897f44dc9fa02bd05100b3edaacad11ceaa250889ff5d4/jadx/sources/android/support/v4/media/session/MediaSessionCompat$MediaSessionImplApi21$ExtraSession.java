package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaSessionManager$RemoteUserInfo;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaSessionCompat$MediaSessionImplApi21$ExtraSession extends Binder implements IMediaSession {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AtomicReference mMediaSessionImplRef;

    public MediaSessionCompat$MediaSessionImplApi21$ExtraSession(MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22) {
        attachInterface(this, "android.support.v4.media.session.IMediaSession");
        this.mMediaSessionImplRef = new AtomicReference(mediaSessionImplApi22);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public final PlaybackStateCompat getPlaybackState() {
        MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = (MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get();
        if (mediaSessionImplApi22 == null) {
            return null;
        }
        PlaybackStateCompat playbackStateCompat = mediaSessionImplApi22.mPlaybackState;
        MediaMetadataCompat mediaMetadataCompat = mediaSessionImplApi22.mMetadata;
        if (playbackStateCompat != null) {
            float f = playbackStateCompat.mSpeed;
            long j = playbackStateCompat.mUpdateTime;
            int i = playbackStateCompat.mState;
            long j2 = playbackStateCompat.mPosition;
            long j3 = -1;
            if (j2 != -1 && ((i == 3 || i == 4 || i == 5) && j > 0)) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j4 = ((long) (f * (elapsedRealtime - j))) + j2;
                if (mediaMetadataCompat != null) {
                    Bundle bundle = mediaMetadataCompat.mBundle;
                    if (bundle.containsKey("android.media.metadata.DURATION")) {
                        j3 = bundle.getLong("android.media.metadata.DURATION", 0L);
                    }
                }
                long j5 = (j3 < 0 || j4 <= j3) ? j4 < 0 ? 0L : j4 : j3;
                ArrayList arrayList = new ArrayList();
                long j6 = playbackStateCompat.mBufferedPosition;
                long j7 = playbackStateCompat.mActions;
                int i2 = playbackStateCompat.mErrorCode;
                CharSequence charSequence = playbackStateCompat.mErrorMessage;
                ArrayList arrayList2 = playbackStateCompat.mCustomActions;
                if (arrayList2 != null) {
                    arrayList.addAll(arrayList2);
                }
                return new PlaybackStateCompat(playbackStateCompat.mState, j5, j6, playbackStateCompat.mSpeed, j7, i2, charSequence, elapsedRealtime, arrayList, playbackStateCompat.mActiveItemId, playbackStateCompat.mExtras);
            }
        }
        return playbackStateCompat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.support.v4.media.session.IMediaControllerCallback] */
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        int i3;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
        }
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaSession");
            return true;
        }
        IMediaControllerCallback iMediaControllerCallback = null;
        IMediaControllerCallback$Stub$Proxy iMediaControllerCallback$Stub$Proxy = null;
        switch (i) {
            case 1:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 2:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (queryLocalInterface == null || !(queryLocalInterface instanceof IMediaControllerCallback)) {
                        IMediaControllerCallback$Stub$Proxy iMediaControllerCallback$Stub$Proxy2 = new IMediaControllerCallback$Stub$Proxy();
                        iMediaControllerCallback$Stub$Proxy2.mRemote = readStrongBinder;
                        iMediaControllerCallback = iMediaControllerCallback$Stub$Proxy2;
                    } else {
                        iMediaControllerCallback = (IMediaControllerCallback) queryLocalInterface;
                    }
                }
                registerCallbackListener(iMediaControllerCallback);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof IMediaControllerCallback)) {
                        IMediaControllerCallback$Stub$Proxy iMediaControllerCallback$Stub$Proxy3 = new IMediaControllerCallback$Stub$Proxy();
                        iMediaControllerCallback$Stub$Proxy3.mRemote = readStrongBinder2;
                        iMediaControllerCallback$Stub$Proxy = iMediaControllerCallback$Stub$Proxy3;
                    } else {
                        iMediaControllerCallback$Stub$Proxy = (IMediaControllerCallback) queryLocalInterface2;
                    }
                }
                MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = (MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get();
                if (mediaSessionImplApi22 != null) {
                    mediaSessionImplApi22.mExtraControllerCallbacks.unregister(iMediaControllerCallback$Stub$Proxy);
                    Binder.getCallingPid();
                    Binder.getCallingUid();
                    synchronized (mediaSessionImplApi22.mLock) {
                    }
                }
                parcel2.writeNoException();
                return true;
            case 5:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 6:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 7:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 8:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 9:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 10:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 11:
                parcel.readInt();
                parcel.readInt();
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 12:
                parcel.readInt();
                parcel.readInt();
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 13:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 14:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 15:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 16:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 17:
                parcel.readLong();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 18:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 19:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 20:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 21:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 22:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 23:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 24:
                parcel.readLong();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 25:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 26:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 27:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 28:
                PlaybackStateCompat playbackState = getPlaybackState();
                parcel2.writeNoException();
                if (playbackState == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                playbackState.writeToParcel(parcel2, 1);
                return true;
            case 29:
                parcel2.writeNoException();
                parcel2.writeInt(-1);
                return true;
            case 30:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 31:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 32:
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 33:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 34:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 35:
                parcel.readString();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 36:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.SETPROP /* 37 */:
                MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi222 = (MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get();
                i3 = mediaSessionImplApi222 != null ? mediaSessionImplApi222.mRepeatMode : -1;
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case 38:
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Token.GETELEM /* 39 */:
                parcel.readInt();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.GETELEM_SUPER /* 40 */:
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            case Token.SETELEM /* 41 */:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 42:
                parcel.readInt();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.CALL /* 43 */:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.NAME /* 44 */:
                parcel.readInt();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.NUMBER /* 45 */:
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Token.STRING /* 46 */:
                parcel.readInt();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.NULL /* 47 */:
                MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi223 = (MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get();
                i3 = mediaSessionImplApi223 != null ? mediaSessionImplApi223.mShuffleMode : -1;
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case Token.THIS /* 48 */:
                parcel.readInt();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case Token.FALSE /* 49 */:
                parcel.readFloat();
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            case 50:
                ((MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get()).getClass();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Token.SHEQ /* 51 */:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return false;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    public final void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
        MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = (MediaSessionCompat.MediaSessionImplApi22) this.mMediaSessionImplRef.get();
        if (mediaSessionImplApi22 == null) {
            return;
        }
        mediaSessionImplApi22.mExtraControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager$RemoteUserInfo("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
        synchronized (mediaSessionImplApi22.mLock) {
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
