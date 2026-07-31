package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media.AudioAttributesImplApi26;
import coil3.memory.MemoryCacheService;
import j$.util.Objects;
import org.schabi.newpipe.player.helper.AudioReactor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AudioFocusRequestCompat {
    public static final AudioAttributesCompat FOCUS_DEFAULT_ATTR;
    public final AudioAttributesCompat mAudioAttributesCompat;
    public final Handler mFocusChangeHandler;
    public final Object mFrameworkAudioFocusRequest;
    public final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api26Impl {
        public static AudioFocusRequest createInstance(int i, AudioAttributes audioAttributes, boolean z, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            return new AudioFocusRequest.Builder(i).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OnAudioFocusChangeListenerHandlerCompat implements Handler.Callback, AudioManager.OnAudioFocusChangeListener {
        public final Handler mHandler;
        public final AudioReactor mListener;

        public OnAudioFocusChangeListenerHandlerCompat(AudioReactor audioReactor, Handler handler) {
            this.mListener = audioReactor;
            this.mHandler = new Handler(handler.getLooper(), this);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 2782386) {
                return false;
            }
            this.mListener.onAudioFocusChange(message.arg1);
            return true;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, 2782386, i, 0));
        }
    }

    static {
        int i = AudioAttributesCompat.$r8$clinit;
        MemoryCacheService builder = Build.VERSION.SDK_INT >= 26 ? new AudioAttributesImplApi26.Builder(20) : new MemoryCacheService(20);
        builder.setUsage$1();
        AudioAttributesImpl build = builder.build();
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.mImpl = build;
        FOCUS_DEFAULT_ATTR = audioAttributesCompat;
    }

    public AudioFocusRequestCompat(AudioReactor audioReactor, Handler handler, AudioAttributesCompat audioAttributesCompat) {
        this.mFocusChangeHandler = handler;
        this.mAudioAttributesCompat = audioAttributesCompat;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 || handler.getLooper() == Looper.getMainLooper()) {
            this.mOnAudioFocusChangeListener = audioReactor;
        } else {
            this.mOnAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(audioReactor, handler);
        }
        if (i >= 26) {
            this.mFrameworkAudioFocusRequest = Api26Impl.createInstance(1, audioAttributesCompat != null ? (AudioAttributes) audioAttributesCompat.mImpl.getAudioAttributes() : null, true, this.mOnAudioFocusChangeListener, handler);
        } else {
            this.mFrameworkAudioFocusRequest = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return Objects.equals(this.mOnAudioFocusChangeListener, audioFocusRequestCompat.mOnAudioFocusChangeListener) && this.mFocusChangeHandler.equals(audioFocusRequestCompat.mFocusChangeHandler) && Objects.equals(this.mAudioAttributesCompat, audioFocusRequestCompat.mAudioAttributesCompat);
    }

    public final AudioFocusRequest getAudioFocusRequest() {
        return (AudioFocusRequest) this.mFrameworkAudioFocusRequest;
    }

    public final int hashCode() {
        return Objects.hash(1, this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, Boolean.TRUE);
    }
}
