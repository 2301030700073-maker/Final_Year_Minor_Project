package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.media.MediaDescription;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.compose.foundation.StretchOverscrollNode$$ExternalSyntheticApiModelOutline0;
import androidx.compose.ui.Modifier;
import androidx.media.MediaSessionManager$RemoteUserInfo;
import androidx.media.MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelImpl;
import androidx.versionedparcelable.VersionedParcelable;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaSessionCompat {
    public static int sMaxBitmapSize;
    public final ArrayList mActiveListeners = new ArrayList();
    public final MediaControllerCompat mController;
    public final MediaSessionImplApi22 mImpl;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$1, reason: invalid class name */
    public final class AnonymousClass1 extends Callback {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Callback {
        CallbackHandler mCallbackHandler;
        private boolean mMediaPlayPausePendingOnHandler;
        final Object mLock = new Object();
        final MediaSession.Callback mCallbackFwk = new MediaSessionCallbackApi21();
        WeakReference<MediaSessionImpl> mSessionImpl = new WeakReference<>(null);

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class CallbackHandler extends Handler {
            public CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                MediaSessionImpl mediaSessionImpl;
                Callback callback;
                CallbackHandler callbackHandler;
                if (message.what == 1) {
                    synchronized (Callback.this.mLock) {
                        mediaSessionImpl = Callback.this.mSessionImpl.get();
                        callback = Callback.this;
                        callbackHandler = callback.mCallbackHandler;
                    }
                    if (mediaSessionImpl == null || callback != ((MediaSessionImplApi22) mediaSessionImpl).getCallback() || callbackHandler == null) {
                        return;
                    }
                    mediaSessionImpl.setCurrentControllerInfo((MediaSessionManager$RemoteUserInfo) message.obj);
                    Callback.this.handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
                    mediaSessionImpl.setCurrentControllerInfo(null);
                }
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class MediaSessionCallbackApi21 extends MediaSession.Callback {
            public MediaSessionCallbackApi21() {
            }

            public static void setCurrentControllerInfo(MediaSessionImplApi22 mediaSessionImplApi22) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 28) {
                    return;
                }
                MediaSession mediaSession = mediaSessionImplApi22.mSessionFwk;
                String str = null;
                if (i >= 24) {
                    try {
                        str = (String) mediaSession.getClass().getMethod("getCallingPackage", null).invoke(mediaSession, null);
                    } catch (Exception e) {
                        Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    str = "android.media.session.MediaController";
                }
                mediaSessionImplApi22.setCurrentControllerInfo(new MediaSessionManager$RemoteUserInfo(str, -1, -1));
            }

            public final MediaSessionImplApi22 getSessionImplIfCallbackIsSet() {
                MediaSessionImplApi22 mediaSessionImplApi22;
                synchronized (Callback.this.mLock) {
                    mediaSessionImplApi22 = (MediaSessionImplApi22) Callback.this.mSessionImpl.get();
                }
                if (mediaSessionImplApi22 == null || Callback.this != mediaSessionImplApi22.getCallback()) {
                    return null;
                }
                return mediaSessionImplApi22;
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                VersionedParcelable versionedParcelable;
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                try {
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        Bundle bundle2 = new Bundle();
                        Token token = sessionImplIfCallbackIsSet.mToken;
                        IMediaSession extraBinder = token.getExtraBinder();
                        bundle2.putBinder("android.support.v4.media.session.EXTRA_BINDER", extraBinder == null ? null : extraBinder.asBinder());
                        synchronized (token.mLock) {
                            versionedParcelable = token.mSession2Token;
                        }
                        if (versionedParcelable != null) {
                            Bundle bundle3 = new Bundle();
                            bundle3.putParcelable(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, new ParcelImpl(versionedParcelable));
                            bundle2.putParcelable("android.support.v4.media.session.SESSION_TOKEN2", bundle3);
                        }
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        Callback.this.onRemoveQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        Callback.this.onCommand(str, bundle, resultReceiver);
                    } else if (sessionImplIfCallbackIsSet.mQueue != null) {
                        int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                        QueueItem queueItem = (i < 0 || i >= sessionImplIfCallbackIsSet.mQueue.size()) ? null : (QueueItem) sessionImplIfCallbackIsSet.mQueue.get(i);
                        if (queueItem != null) {
                            Callback.this.onRemoveQueueItem(queueItem.mDescription);
                        }
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
                }
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCustomAction(String str, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                try {
                    boolean equals = str.equals("android.support.v4.media.session.action.PLAY_FROM_URI");
                    Callback callback = Callback.this;
                    if (equals) {
                        Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.ensureClassLoader(bundle2);
                        callback.onPlayFromUri(uri, bundle2);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        callback.onPrepare();
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                        Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.ensureClassLoader(bundle3);
                        callback.onPrepareFromMediaId(string, bundle3);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                        Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.ensureClassLoader(bundle4);
                        callback.onPrepareFromSearch(string2, bundle4);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.ensureClassLoader(bundle5);
                        callback.onPrepareFromUri(uri2, bundle5);
                    } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        callback.onSetCaptioningEnabled(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        callback.onSetRepeatMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        callback.onSetShuffleMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
                        Bundle bundle6 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.ensureClassLoader(bundle6);
                        callback.onSetRating(ratingCompat, bundle6);
                    } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        callback.onSetPlaybackSpeed(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                    } else {
                        callback.onCustomAction(str, bundle);
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the data.");
                }
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onFastForward() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onFastForward();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final boolean onMediaButtonEvent(Intent intent) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return false;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                boolean onMediaButtonEvent = Callback.this.onMediaButtonEvent(intent);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
                return onMediaButtonEvent || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPause() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPause();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlay() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlay();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromMediaId(str, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromSearch(str, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromUri(uri, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepare() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepare();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromMediaId(str, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromSearch(str, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromUri(uri, bundle);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onRewind() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onRewind();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSeekTo(long j) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSeekTo(j);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetPlaybackSpeed(float f) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSetPlaybackSpeed(f);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetRating(Rating rating) {
                RatingCompat ratingCompat;
                RatingCompat ratingCompat2;
                float f;
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                if (rating != null) {
                    int ratingStyle = RatingCompat.Api19Impl.getRatingStyle(rating);
                    if (!RatingCompat.Api19Impl.isRated(rating)) {
                        switch (ratingStyle) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                ratingCompat = new RatingCompat(ratingStyle, -1.0f);
                                break;
                            default:
                                ratingCompat = null;
                                break;
                        }
                        ratingCompat.mRatingObj = rating;
                        Callback.this.onSetRating(ratingCompat);
                        sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
                    }
                    switch (ratingStyle) {
                        case 1:
                            ratingCompat2 = new RatingCompat(1, RatingCompat.Api19Impl.hasHeart(rating) ? 1.0f : 0.0f);
                            ratingCompat = ratingCompat2;
                            ratingCompat.mRatingObj = rating;
                            break;
                        case 2:
                            ratingCompat2 = new RatingCompat(2, RatingCompat.Api19Impl.isThumbUp(rating) ? 1.0f : 0.0f);
                            ratingCompat = ratingCompat2;
                            ratingCompat.mRatingObj = rating;
                            break;
                        case 3:
                        case 4:
                        case 5:
                            float starRating = RatingCompat.Api19Impl.getStarRating(rating);
                            if (ratingStyle == 3) {
                                f = 3.0f;
                            } else if (ratingStyle == 4) {
                                f = 4.0f;
                            } else if (ratingStyle != 5) {
                                Log.e("Rating", "Invalid rating style (" + ratingStyle + ") for a star rating");
                                ratingCompat = null;
                                ratingCompat.mRatingObj = rating;
                                break;
                            } else {
                                f = 5.0f;
                            }
                            if (starRating < 0.0f || starRating > f) {
                                Log.e("Rating", "Trying to set out of range star-based rating");
                                ratingCompat = null;
                                ratingCompat.mRatingObj = rating;
                            } else {
                                ratingCompat2 = new RatingCompat(ratingStyle, starRating);
                                ratingCompat = ratingCompat2;
                                ratingCompat.mRatingObj = rating;
                            }
                            break;
                        case 6:
                            float percentRating = RatingCompat.Api19Impl.getPercentRating(rating);
                            if (percentRating < 0.0f || percentRating > 100.0f) {
                                Log.e("Rating", "Invalid percentage-based rating value");
                                ratingCompat = null;
                                ratingCompat.mRatingObj = rating;
                                break;
                            } else {
                                ratingCompat = new RatingCompat(6, percentRating);
                                ratingCompat.mRatingObj = rating;
                            }
                            break;
                    }
                    Callback.this.onSetRating(ratingCompat);
                    sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
                }
                ratingCompat = null;
                Callback.this.onSetRating(ratingCompat);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToNext() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToNext();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToPrevious() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToPrevious();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToQueueItem(long j) {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToQueueItem(j);
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onStop() {
                MediaSessionImplApi22 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onStop();
                sessionImplIfCallbackIsSet.setCurrentControllerInfo(null);
            }
        }

        public void handleMediaPlayPauseIfPendingOnHandler(MediaSessionImpl mediaSessionImpl, Handler handler) {
            if (this.mMediaPlayPausePendingOnHandler) {
                this.mMediaPlayPausePendingOnHandler = false;
                handler.removeMessages(1);
                PlaybackStateCompat playbackStateCompat = ((MediaSessionImplApi22) mediaSessionImpl).mPlaybackState;
                long j = playbackStateCompat == null ? 0L : playbackStateCompat.mActions;
                boolean z = playbackStateCompat != null && playbackStateCompat.mState == 3;
                boolean z2 = (516 & j) != 0;
                boolean z3 = (j & 514) != 0;
                if (z && z3) {
                    onPause();
                } else {
                    if (z || !z2) {
                        return;
                    }
                    onPlay();
                }
            }
        }

        public boolean onMediaButtonEvent(Intent intent) {
            MediaSessionImpl mediaSessionImpl;
            CallbackHandler callbackHandler;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT < 27) {
                synchronized (this.mLock) {
                    mediaSessionImpl = this.mSessionImpl.get();
                    callbackHandler = this.mCallbackHandler;
                }
                if (mediaSessionImpl != null && callbackHandler != null && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null && keyEvent.getAction() == 0) {
                    MediaSessionManager$RemoteUserInfo currentControllerInfo = mediaSessionImpl.getCurrentControllerInfo();
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode != 79 && keyCode != 85) {
                        handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
                        return false;
                    }
                    if (keyEvent.getRepeatCount() != 0) {
                        handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
                        return true;
                    }
                    if (!this.mMediaPlayPausePendingOnHandler) {
                        this.mMediaPlayPausePendingOnHandler = true;
                        callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(1, currentControllerInfo), ViewConfiguration.getDoubleTapTimeout());
                        return true;
                    }
                    callbackHandler.removeMessages(1);
                    this.mMediaPlayPausePendingOnHandler = false;
                    PlaybackStateCompat playbackStateCompat = ((MediaSessionImplApi22) mediaSessionImpl).mPlaybackState;
                    if (((playbackStateCompat == null ? 0L : playbackStateCompat.mActions) & 32) != 0) {
                        onSkipToNext();
                    }
                    return true;
                }
            }
            return false;
        }

        public void setSessionImpl(MediaSessionImpl mediaSessionImpl, Handler handler) {
            synchronized (this.mLock) {
                try {
                    this.mSessionImpl = new WeakReference<>(mediaSessionImpl);
                    CallbackHandler callbackHandler = this.mCallbackHandler;
                    CallbackHandler callbackHandler2 = null;
                    if (callbackHandler != null) {
                        callbackHandler.removeCallbacksAndMessages(null);
                    }
                    if (mediaSessionImpl != null && handler != null) {
                        callbackHandler2 = new CallbackHandler(handler.getLooper());
                    }
                    this.mCallbackHandler = callbackHandler2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void onFastForward() {
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPrepare() {
        }

        public void onRewind() {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onStop() {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Deprecated
        public void onRemoveQueueItemAt(int i) {
        }

        public void onSeekTo(long j) {
        }

        public void onSetCaptioningEnabled(boolean z) {
        }

        public void onSetPlaybackSpeed(float f) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleMode(int i) {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface MediaSessionImpl {
        MediaSessionManager$RemoteUserInfo getCurrentControllerInfo();

        void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaSessionImplApi22 implements MediaSessionImpl {
        public Callback mCallback;
        public final MediaSessionCompat$MediaSessionImplApi21$ExtraSession mExtraSession;
        public MediaMetadataCompat mMetadata;
        public PlaybackStateCompat mPlaybackState;
        public List mQueue;
        public MediaSessionManager$RemoteUserInfo mRemoteUserInfo;
        public int mRepeatMode;
        public final MediaSession mSessionFwk;
        public int mShuffleMode;
        public final Token mToken;
        public final Object mLock = new Object();
        public final RemoteCallbackList mExtraControllerCallbacks = new RemoteCallbackList();

        public MediaSessionImplApi22(PlayerService playerService) {
            MediaSession createFwkMediaSession = createFwkMediaSession(playerService);
            this.mSessionFwk = createFwkMediaSession;
            MediaSessionCompat$MediaSessionImplApi21$ExtraSession mediaSessionCompat$MediaSessionImplApi21$ExtraSession = new MediaSessionCompat$MediaSessionImplApi21$ExtraSession(this);
            this.mExtraSession = mediaSessionCompat$MediaSessionImplApi21$ExtraSession;
            this.mToken = new Token(createFwkMediaSession.getSessionToken(), mediaSessionCompat$MediaSessionImplApi21$ExtraSession);
            createFwkMediaSession.setFlags(3);
        }

        public MediaSession createFwkMediaSession(PlayerService playerService) {
            return new MediaSession(playerService, "MediaSessionPlayerServ");
        }

        public final Callback getCallback() {
            Callback callback;
            synchronized (this.mLock) {
                callback = this.mCallback;
            }
            return callback;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager$RemoteUserInfo getCurrentControllerInfo() {
            MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo;
            synchronized (this.mLock) {
                mediaSessionManager$RemoteUserInfo = this.mRemoteUserInfo;
            }
            return mediaSessionManager$RemoteUserInfo;
        }

        public final void setCallback(Callback callback, Handler handler) {
            synchronized (this.mLock) {
                try {
                    this.mCallback = callback;
                    this.mSessionFwk.setCallback(callback == null ? null : callback.mCallbackFwk, handler);
                    if (callback != null) {
                        callback.setSessionImpl(this, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
            synchronized (this.mLock) {
                this.mRemoteUserInfo = mediaSessionManager$RemoteUserInfo;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MediaSessionImplApi29 extends MediaSessionImplApi28 {
        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi22
        public final MediaSession createFwkMediaSession(PlayerService playerService) {
            return StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m(playerService);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new PlaybackStateCompat.AnonymousClass1(1);
        public ResultReceiver mResultReceiver;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.mResultReceiver.writeToParcel(parcel, i);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new PlaybackStateCompat.AnonymousClass1(3);
        public IMediaSession mExtraBinder;
        public final Object mInner;
        public final Object mLock = new Object();
        public VersionedParcelable mSession2Token = null;

        public Token(Object obj, IMediaSession iMediaSession) {
            this.mInner = obj;
            this.mExtraBinder = iMediaSession;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Object obj2 = ((Token) obj).mInner;
            Object obj3 = this.mInner;
            if (obj3 == null) {
                return obj2 == null;
            }
            if (obj2 == null) {
                return false;
            }
            return obj3.equals(obj2);
        }

        public final IMediaSession getExtraBinder() {
            IMediaSession iMediaSession;
            synchronized (this.mLock) {
                iMediaSession = this.mExtraBinder;
            }
            return iMediaSession;
        }

        public final int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final void setExtraBinder(IMediaSession iMediaSession) {
            synchronized (this.mLock) {
                this.mExtraBinder = iMediaSession;
            }
        }

        public final void setSession2Token(VersionedParcelable versionedParcelable) {
            synchronized (this.mLock) {
                this.mSession2Token = versionedParcelable;
            }
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable((Parcelable) this.mInner, i);
        }
    }

    public MediaSessionCompat(PlayerService playerService) {
        ComponentName componentName;
        PendingIntent pendingIntent = null;
        if (TextUtils.isEmpty("MediaSessionPlayerServ")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("tag must not be null or empty");
            throw null;
        }
        int i = MediaButtonReceiver.$r8$clinit;
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(playerService.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = playerService.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        } else {
            if (queryBroadcastReceivers.size() > 1) {
                Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            }
            componentName = null;
        }
        if (componentName == null) {
            Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
        }
        if (componentName != null) {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent2.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(playerService, 0, intent2, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            this.mImpl = new MediaSessionImplApi29(playerService);
        } else if (i2 >= 28) {
            this.mImpl = new MediaSessionImplApi28(playerService);
        } else {
            this.mImpl = new MediaSessionImplApi22(playerService);
        }
        this.mImpl.setCallback(new AnonymousClass1(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
        this.mImpl.mSessionFwk.setMediaButtonReceiver(pendingIntent);
        this.mController = new MediaControllerCompat(playerService, this.mImpl.mToken);
        if (sMaxBitmapSize == 0) {
            sMaxBitmapSize = (int) (TypedValue.applyDimension(1, 320.0f, playerService.getResources().getDisplayMetrics()) + 0.5f);
        }
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static Bundle unparcelWithClassLoader(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ensureClassLoader(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public final void setActive(boolean z) {
        this.mImpl.mSessionFwk.setActive(z);
        Iterator it = this.mActiveListeners.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        }
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:158)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:480)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:381)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:90)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:372)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:56)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    public final void setPlaybackState(android.support.v4.media.session.PlaybackStateCompat r9) {
        /*
            r8 = this;
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi22 r8 = r8.mImpl
            r8.mPlaybackState = r9
            java.lang.Object r1 = r8.mLock
            monitor-enter(r1)
            android.os.RemoteCallbackList r0 = r8.mExtraControllerCallbacks     // Catch: java.lang.Throwable -> L1d
            int r0 = r0.beginBroadcast()     // Catch: java.lang.Throwable -> L1d
            int r0 = r0 + (-1)
        Lf:
            android.os.RemoteCallbackList r2 = r8.mExtraControllerCallbacks
            if (r0 < 0) goto L23
            android.os.IInterface r2 = r2.getBroadcastItem(r0)     // Catch: java.lang.Throwable -> L1d
            android.support.v4.media.session.IMediaControllerCallback r2 = (android.support.v4.media.session.IMediaControllerCallback) r2     // Catch: java.lang.Throwable -> L1d
            r2.onPlaybackStateChanged(r9)     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L20
            goto L20
        L1d:
            r0 = move-exception
            r8 = r0
            goto L8e
        L20:
            int r0 = r0 + (-1)
            goto Lf
        L23:
            r2.finishBroadcast()     // Catch: java.lang.Throwable -> L1d
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
            android.media.session.MediaSession r8 = r8.mSessionFwk
            android.media.session.PlaybackState r0 = r9.mStateFwk
            if (r0 != 0) goto L88
            android.media.session.PlaybackState$Builder r1 = android.support.v4.media.session.PlaybackStateCompat.Api21Impl.createBuilder()
            int r2 = r9.mState
            long r3 = r9.mPosition
            float r5 = r9.mSpeed
            long r6 = r9.mUpdateTime
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setState(r1, r2, r3, r5, r6)
            long r2 = r9.mBufferedPosition
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setBufferedPosition(r1, r2)
            long r2 = r9.mActions
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setActions(r1, r2)
            java.lang.CharSequence r0 = r9.mErrorMessage
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setErrorMessage(r1, r0)
            java.util.ArrayList r0 = r9.mCustomActions
            java.util.Iterator r0 = r0.iterator()
        L51:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L78
            java.lang.Object r2 = r0.next()
            android.support.v4.media.session.PlaybackStateCompat$CustomAction r2 = (android.support.v4.media.session.PlaybackStateCompat.CustomAction) r2
            android.media.session.PlaybackState$CustomAction r3 = r2.mCustomActionFwk
            if (r3 != 0) goto L74
            java.lang.String r3 = r2.mAction
            java.lang.CharSequence r4 = r2.mName
            int r5 = r2.mIcon
            android.media.session.PlaybackState$CustomAction$Builder r3 = android.support.v4.media.session.PlaybackStateCompat.Api21Impl.createCustomActionBuilder(r3, r4, r5)
            android.os.Bundle r2 = r2.mExtras
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setExtras(r3, r2)
            android.media.session.PlaybackState$CustomAction r3 = android.support.v4.media.session.PlaybackStateCompat.Api21Impl.build(r3)
        L74:
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.addCustomAction(r1, r3)
            goto L51
        L78:
            long r2 = r9.mActiveItemId
            android.support.v4.media.session.PlaybackStateCompat.Api21Impl.setActiveQueueItemId(r1, r2)
            android.os.Bundle r0 = r9.mExtras
            android.support.v4.media.session.PlaybackStateCompat.Api22Impl.setExtras(r1, r0)
            android.media.session.PlaybackState r0 = android.support.v4.media.session.PlaybackStateCompat.Api21Impl.build(r1)
            r9.mStateFwk = r0
        L88:
            android.media.session.PlaybackState r9 = r9.mStateFwk
            r8.setPlaybackState(r9)
            return
        L8e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.setPlaybackState(android.support.v4.media.session.PlaybackStateCompat):void");
    }

    public final void setQueue(List list) {
        if (list != null) {
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                QueueItem queueItem = (QueueItem) it.next();
                if (queueItem == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("queue shouldn't have null items");
                    return;
                }
                long j = queueItem.mId;
                if (hashSet.contains(Long.valueOf(j))) {
                    Log.e("MediaSessionCompat", Modifier.CC.m("Found duplicate queue id: ", j), new IllegalArgumentException("id of each queue item should be unique"));
                }
                hashSet.add(Long.valueOf(j));
            }
        }
        MediaSessionImplApi22 mediaSessionImplApi22 = this.mImpl;
        MediaSession mediaSession = mediaSessionImplApi22.mSessionFwk;
        mediaSessionImplApi22.mQueue = list;
        if (list == null) {
            mediaSession.setQueue(null);
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            QueueItem queueItem2 = (QueueItem) it2.next();
            MediaSession.QueueItem queueItem3 = queueItem2.mItemFwk;
            if (queueItem3 == null) {
                queueItem3 = QueueItem.Api21Impl.createQueueItem(queueItem2.mDescription.getMediaDescription(), queueItem2.mId);
                queueItem2.mItemFwk = queueItem3;
            }
            arrayList.add(queueItem3);
        }
        mediaSession.setQueue(arrayList);
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:158)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:480)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:381)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:90)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:372)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:56)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    public final void setRepeatMode(int r4) {
        /*
            r3 = this;
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi22 r3 = r3.mImpl
            int r0 = r3.mRepeatMode
            if (r0 == r4) goto L2d
            r3.mRepeatMode = r4
            java.lang.Object r0 = r3.mLock
            monitor-enter(r0)
            android.os.RemoteCallbackList r1 = r3.mExtraControllerCallbacks     // Catch: java.lang.Throwable -> L21
            int r1 = r1.beginBroadcast()     // Catch: java.lang.Throwable -> L21
            int r1 = r1 + (-1)
        L13:
            android.os.RemoteCallbackList r2 = r3.mExtraControllerCallbacks
            if (r1 < 0) goto L26
            android.os.IInterface r2 = r2.getBroadcastItem(r1)     // Catch: java.lang.Throwable -> L21
            android.support.v4.media.session.IMediaControllerCallback r2 = (android.support.v4.media.session.IMediaControllerCallback) r2     // Catch: java.lang.Throwable -> L21
            r2.onRepeatModeChanged(r4)     // Catch: java.lang.Throwable -> L21 android.os.RemoteException -> L23
            goto L23
        L21:
            r3 = move-exception
            goto L2b
        L23:
            int r1 = r1 + (-1)
            goto L13
        L26:
            r2.finishBroadcast()     // Catch: java.lang.Throwable -> L21
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            goto L2d
        L2b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            throw r3
        L2d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.setRepeatMode(int):void");
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:158)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:480)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:381)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:90)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:372)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:56)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    public final void setShuffleMode(int r4) {
        /*
            r3 = this;
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi22 r3 = r3.mImpl
            int r0 = r3.mShuffleMode
            if (r0 == r4) goto L2d
            r3.mShuffleMode = r4
            java.lang.Object r0 = r3.mLock
            monitor-enter(r0)
            android.os.RemoteCallbackList r1 = r3.mExtraControllerCallbacks     // Catch: java.lang.Throwable -> L21
            int r1 = r1.beginBroadcast()     // Catch: java.lang.Throwable -> L21
            int r1 = r1 + (-1)
        L13:
            android.os.RemoteCallbackList r2 = r3.mExtraControllerCallbacks
            if (r1 < 0) goto L26
            android.os.IInterface r2 = r2.getBroadcastItem(r1)     // Catch: java.lang.Throwable -> L21
            android.support.v4.media.session.IMediaControllerCallback r2 = (android.support.v4.media.session.IMediaControllerCallback) r2     // Catch: java.lang.Throwable -> L21
            r2.onShuffleModeChanged(r4)     // Catch: java.lang.Throwable -> L21 android.os.RemoteException -> L23
            goto L23
        L21:
            r3 = move-exception
            goto L2b
        L23:
            int r1 = r1 + (-1)
            goto L13
        L26:
            r2.finishBroadcast()     // Catch: java.lang.Throwable -> L21
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            goto L2d
        L2b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            throw r3
        L2d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.setShuffleMode(int):void");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaSessionImplApi28 extends MediaSessionImplApi22 {
        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi22, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public final MediaSessionManager$RemoteUserInfo getCurrentControllerInfo() {
            MediaSessionManager.RemoteUserInfo currentControllerInfo = this.mSessionFwk.getCurrentControllerInfo();
            MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo = new MediaSessionManager$RemoteUserInfo();
            String packageName = currentControllerInfo.getPackageName();
            if (packageName == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("package shouldn't be null");
                return null;
            }
            if (TextUtils.isEmpty(packageName)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("packageName should be nonempty");
                return null;
            }
            mediaSessionManager$RemoteUserInfo.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(currentControllerInfo.getPackageName(), currentControllerInfo.getPid(), currentControllerInfo.getUid());
            return mediaSessionManager$RemoteUserInfo;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi22, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public final void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new PlaybackStateCompat.AnonymousClass1(2);
        public final MediaDescriptionCompat mDescription;
        public final long mId;
        public MediaSession.QueueItem mItemFwk;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public abstract class Api21Impl {
            public static MediaSession.QueueItem createQueueItem(MediaDescription mediaDescription, long j) {
                return new MediaSession.QueueItem(mediaDescription, j);
            }

            public static MediaDescription getDescription(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            public static long getQueueId(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }
        }

        public QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Description cannot be null");
                throw null;
            }
            if (j == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Id cannot be QueueItem.UNKNOWN_ID");
                throw null;
            }
            this.mDescription = mediaDescriptionCompat;
            this.mId = j;
            this.mItemFwk = queueItem;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
            sb.append(this.mDescription);
            sb.append(", Id=");
            return Modifier.CC.m(this.mId, " }", sb);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.mDescription.writeToParcel(parcel, i);
            parcel.writeLong(this.mId);
        }

        public QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }
    }
}
