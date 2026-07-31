package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.internal.NavContext;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import kotlinx.coroutines.JobKt;
import net.thunderbird.app.common.feature.LoggerLifecycleObserver$onStop$1$1;
import net.thunderbird.core.logging.file.FileLogSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadEmojiCompatRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            try {
                Method method = TraceCompat.sIsTagEnabledMethod;
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.isConfigured()) {
                    EmojiCompat.get().load();
                }
                Trace.endSection();
            } catch (Throwable th) {
                Method method2 = TraceCompat.sIsTagEnabledMethod;
                Trace.endSection();
                throw th;
            }
        }
    }

    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        FontRequestEmojiCompatConfig fontRequestEmojiCompatConfig = new FontRequestEmojiCompatConfig(new NavContext(context));
        fontRequestEmojiCompatConfig.version = 1;
        if (EmojiCompat.sInstance == null) {
            synchronized (EmojiCompat.INSTANCE_LOCK) {
                try {
                    if (EmojiCompat.sInstance == null) {
                        EmojiCompat.sInstance = new EmojiCompat(fontRequestEmojiCompatConfig);
                    }
                } finally {
                }
            }
        }
        delayUntilFirstResume(context);
        return Boolean.TRUE;
    }

    public final void delayUntilFirstResume(Context context) {
        Object obj;
        AppInitializer appInitializer = AppInitializer.getInstance(context);
        appInitializer.getClass();
        synchronized (AppInitializer.sLock) {
            try {
                obj = appInitializer.mInitialized.get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = appInitializer.doInitialize(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Lifecycle lifecycle = ((LifecycleOwner) obj).getLifecycle();
        lifecycle.addObserver(new AnonymousClass1(this, lifecycle));
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$1, reason: invalid class name */
    public final class AnonymousClass1 implements DefaultLifecycleObserver {
        public final /* synthetic */ int $r8$classId = 0;
        public final Object val$lifecycle;

        public AnonymousClass1(FileLogSink fileLogSink) {
            this.val$lifecycle = fileLogSink;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onCreate(LifecycleOwner lifecycleOwner) {
            int i = this.$r8$classId;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onDestroy(LifecycleOwner lifecycleOwner) {
            int i = this.$r8$classId;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onPause(LifecycleOwner lifecycleOwner) {
            int i = this.$r8$classId;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onResume(LifecycleOwner lifecycleOwner) {
            switch (this.$r8$classId) {
                case 0:
                    (Build.VERSION.SDK_INT >= 28 ? ConcurrencyHelpers$Handler28Impl.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new LoadEmojiCompatRunnable(), 500L);
                    ((Lifecycle) this.val$lifecycle).removeObserver(this);
                    break;
            }
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStart(LifecycleOwner lifecycleOwner) {
            int i = this.$r8$classId;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStop(LifecycleOwner lifecycleOwner) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    FileLogSink fileLogSink = (FileLogSink) this.val$lifecycle;
                    if (fileLogSink != null) {
                        JobKt.launch$default(ViewModelKt.getLifecycleScope(lifecycleOwner), null, null, new LoggerLifecycleObserver$onStop$1$1(fileLogSink, null, 0), 3);
                        break;
                    }
                    break;
            }
        }

        public AnonymousClass1(EmojiCompatInitializer emojiCompatInitializer, Lifecycle lifecycle) {
            this.val$lifecycle = lifecycle;
        }

        private final void onCreate$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
        }

        private final void onCreate$net$thunderbird$app$common$feature$LoggerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        }

        private final void onDestroy$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
        }

        private final void onDestroy$net$thunderbird$app$common$feature$LoggerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        }

        private final void onPause$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
        }

        private final void onPause$net$thunderbird$app$common$feature$LoggerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        }

        private final void onResume$net$thunderbird$app$common$feature$LoggerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        }

        private final void onStart$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
        }

        private final void onStart$net$thunderbird$app$common$feature$LoggerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        }

        private final void onStop$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
        }
    }
}
