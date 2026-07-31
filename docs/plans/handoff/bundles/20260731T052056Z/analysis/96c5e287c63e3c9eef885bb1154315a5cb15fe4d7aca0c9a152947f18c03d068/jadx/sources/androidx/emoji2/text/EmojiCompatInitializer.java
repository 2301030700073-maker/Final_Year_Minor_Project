package androidx.emoji2.text;

import android.content.Context;
import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.navigation.internal.NavContext;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import coil3.util.LifecyclesKt$awaitStarted$2$1;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        LifecycleRegistry lifecycle = ((LifecycleOwner) obj).getLifecycle();
        lifecycle.addObserver(new LifecyclesKt$awaitStarted$2$1(this, lifecycle));
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }
}
