package androidx.emoji2.text;

import android.content.Context;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import coil3.util.LifecyclesKt$awaitStarted$2$1;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.acra.file.ReportLocator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        FontRequestEmojiCompatConfig fontRequestEmojiCompatConfig = new FontRequestEmojiCompatConfig(new ReportLocator(context, 1));
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
        lifecycle.addObserver(new LifecyclesKt$awaitStarted$2$1(this, lifecycle));
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }
}
