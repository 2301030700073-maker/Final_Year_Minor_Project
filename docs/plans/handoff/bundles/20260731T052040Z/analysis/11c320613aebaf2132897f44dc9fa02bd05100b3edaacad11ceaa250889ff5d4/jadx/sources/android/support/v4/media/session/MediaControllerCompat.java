package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaControllerCompat {
    public final MediaControllerImplApi21 mImpl;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MediaControllerImplApi29 extends MediaControllerImplApi21 {
    }

    public MediaControllerCompat(PlayerService playerService, MediaSessionCompat.Token token) {
        if (token == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("sessionToken must not be null");
            throw null;
        }
        DesugarCollections.synchronizedSet(new HashSet());
        if (Build.VERSION.SDK_INT >= 29) {
            this.mImpl = new MediaControllerImplApi29(playerService, token);
        } else {
            this.mImpl = new MediaControllerImplApi21(playerService, token);
        }
    }

    public final ArrayList getQueue() {
        MediaSessionCompat.QueueItem queueItem;
        List<MediaSession.QueueItem> queue = this.mImpl.mControllerFwk.getQueue();
        if (queue == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(queue.size());
        for (MediaSession.QueueItem queueItem2 : queue) {
            if (queueItem2 != null) {
                MediaSession.QueueItem queueItem3 = queueItem2;
                queueItem = new MediaSessionCompat.QueueItem(queueItem3, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompat.QueueItem.Api21Impl.getDescription(queueItem3)), MediaSessionCompat.QueueItem.Api21Impl.getQueueId(queueItem3));
            } else {
                queueItem = null;
            }
            arrayList.add(queueItem);
        }
        return arrayList;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaControllerImplApi21 {
        public final MediaController mControllerFwk;
        public final MediaSessionCompat.Token mSessionToken;
        public final Object mLock = new Object();
        public final ArrayList mPendingCallbacks = new ArrayList();
        public final HashMap mCallbackMap = new HashMap();

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        class ExtraBinderRequestResultReceiver extends ResultReceiver {
            public WeakReference mMediaControllerImpl;

            /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x0075 A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:7:0x0011, B:10:0x0036, B:12:0x003d, B:30:0x0047, B:32:0x005a, B:15:0x0067, B:18:0x008c, B:22:0x0075, B:24:0x007f, B:25:0x0083, B:27:0x0089, B:28:0x0090, B:29:0x009a, B:33:0x005f, B:34:0x0066, B:36:0x0020, B:38:0x0028, B:40:0x002c, B:41:0x002f), top: B:6:0x0011 }] */
            @Override // android.os.ResultReceiver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onReceiveResult(int r6, android.os.Bundle r7) {
                /*
                    r5 = this;
                    java.lang.ref.WeakReference r5 = r5.mMediaControllerImpl
                    java.lang.Object r5 = r5.get()
                    android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 r5 = (android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21) r5
                    if (r5 == 0) goto L9d
                    if (r7 != 0) goto Le
                    goto L9d
                Le:
                    java.lang.Object r6 = r5.mLock
                    monitor-enter(r6)
                    android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.mSessionToken     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r1 = "android.support.v4.media.session.EXTRA_BINDER"
                    android.os.IBinder r1 = r7.getBinder(r1)     // Catch: java.lang.Throwable -> L8e
                    int r2 = android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21$ExtraSession.$r8$clinit     // Catch: java.lang.Throwable -> L8e
                    r2 = 0
                    if (r1 != 0) goto L20
                    r3 = r2
                    goto L36
                L20:
                    java.lang.String r3 = "android.support.v4.media.session.IMediaSession"
                    android.os.IInterface r3 = r1.queryLocalInterface(r3)     // Catch: java.lang.Throwable -> L8e
                    if (r3 == 0) goto L2f
                    boolean r4 = r3 instanceof android.support.v4.media.session.IMediaSession     // Catch: java.lang.Throwable -> L8e
                    if (r4 == 0) goto L2f
                    android.support.v4.media.session.IMediaSession r3 = (android.support.v4.media.session.IMediaSession) r3     // Catch: java.lang.Throwable -> L8e
                    goto L36
                L2f:
                    android.support.v4.media.session.IMediaSession$Stub$Proxy r3 = new android.support.v4.media.session.IMediaSession$Stub$Proxy     // Catch: java.lang.Throwable -> L8e
                    r3.<init>()     // Catch: java.lang.Throwable -> L8e
                    r3.mRemote = r1     // Catch: java.lang.Throwable -> L8e
                L36:
                    r0.setExtraBinder(r3)     // Catch: java.lang.Throwable -> L8e
                    android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.mSessionToken     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r1 = "android.support.v4.media.session.SESSION_TOKEN2"
                    android.os.Parcelable r7 = r7.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    android.os.Bundle r7 = (android.os.Bundle) r7     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    if (r7 != 0) goto L47
                L45:
                    r7 = r2
                    goto L67
                L47:
                    java.lang.Class<okio.Okio> r1 = okio.Okio.class
                    java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    r7.setClassLoader(r1)     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    java.lang.String r1 = "a"
                    android.os.Parcelable r7 = r7.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    boolean r1 = r7 instanceof androidx.versionedparcelable.ParcelImpl     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    if (r1 == 0) goto L5f
                    androidx.versionedparcelable.ParcelImpl r7 = (androidx.versionedparcelable.ParcelImpl) r7     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    androidx.versionedparcelable.VersionedParcelable r7 = r7.mParcel     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    goto L67
                L5f:
                    java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    java.lang.String r1 = "Invalid parcel"
                    r7.<init>(r1)     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                    throw r7     // Catch: java.lang.RuntimeException -> L45 java.lang.Throwable -> L8e
                L67:
                    r0.setSession2Token(r7)     // Catch: java.lang.Throwable -> L8e
                    java.util.ArrayList r7 = r5.mPendingCallbacks     // Catch: java.lang.Throwable -> L8e
                    android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.mSessionToken     // Catch: java.lang.Throwable -> L8e
                    android.support.v4.media.session.IMediaSession r0 = r0.getExtraBinder()     // Catch: java.lang.Throwable -> L8e
                    if (r0 != 0) goto L75
                    goto L8c
                L75:
                    java.util.Iterator r0 = r7.iterator()     // Catch: java.lang.Throwable -> L8e
                    boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L8e
                    if (r1 != 0) goto L83
                    r7.clear()     // Catch: java.lang.Throwable -> L8e
                    goto L8c
                L83:
                    java.lang.Object r7 = r0.next()     // Catch: java.lang.Throwable -> L8e
                    if (r7 == 0) goto L90
                    okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2()     // Catch: java.lang.Throwable -> L8e
                L8c:
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L8e
                    goto L9d
                L8e:
                    r5 = move-exception
                    goto L9b
                L90:
                    android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraCallback r7 = new android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraCallback     // Catch: java.lang.Throwable -> L8e
                    r7.<init>()     // Catch: java.lang.Throwable -> L8e
                    java.util.HashMap r5 = r5.mCallbackMap     // Catch: java.lang.Throwable -> L8e
                    r5.put(r2, r7)     // Catch: java.lang.Throwable -> L8e
                    throw r2     // Catch: java.lang.Throwable -> L8e
                L9b:
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L8e
                    throw r5
                L9d:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.ExtraBinderRequestResultReceiver.onReceiveResult(int, android.os.Bundle):void");
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.mSessionToken = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) token.mInner);
            this.mControllerFwk = mediaController;
            if (token.getExtraBinder() == null) {
                ExtraBinderRequestResultReceiver extraBinderRequestResultReceiver = new ExtraBinderRequestResultReceiver(null);
                extraBinderRequestResultReceiver.mMediaControllerImpl = new WeakReference(this);
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, extraBinderRequestResultReceiver);
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ExtraCallback extends Binder implements IMediaControllerCallback {
            public final WeakReference mCallback;

            public ExtraCallback() {
                attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
                this.mCallback = new WeakReference(null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public final void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
                if (this.mCallback.get() == null) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public final void onRepeatModeChanged(int i) {
                if (this.mCallback.get() == null) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public final void onShuffleModeChanged(int i) {
                if (this.mCallback.get() == null) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            }

            @Override // android.os.Binder
            public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
                if (i >= 1 && i <= 16777215) {
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                }
                if (i == 1598968902) {
                    parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                    return true;
                }
                switch (i) {
                    case 1:
                        parcel.readString();
                        if (this.mCallback.get() != null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                            return false;
                        }
                        return true;
                    case 2:
                        _UtilJvmKt$$ExternalSyntheticLambda1.m();
                        return false;
                    case 3:
                        onPlaybackStateChanged((PlaybackStateCompat) UStringsKt.access$000(parcel, PlaybackStateCompat.CREATOR));
                        return true;
                    case 4:
                        _UtilJvmKt$$ExternalSyntheticLambda1.m();
                        return false;
                    case 5:
                        parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
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
                        onRepeatModeChanged(parcel.readInt());
                        return true;
                    case 10:
                        parcel.readInt();
                        return true;
                    case 11:
                        parcel.readInt();
                        if (this.mCallback.get() != null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                            return false;
                        }
                        return true;
                    case 12:
                        onShuffleModeChanged(parcel.readInt());
                        return true;
                    case 13:
                        if (this.mCallback.get() != null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                            return false;
                        }
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this;
            }
        }
    }
}
