package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MulticastConsumer implements Consumer {
    public final Context context;
    public final ReentrantLock globalLock;
    public WindowLayoutInfo lastKnownValue;
    public final LinkedHashSet registeredListeners;

    public MulticastConsumer(Context context) {
        context.getClass();
        this.context = context;
        this.globalLock = new ReentrantLock();
        this.registeredListeners = new LinkedHashSet();
    }

    @Override // androidx.core.util.Consumer
    public void accept(androidx.window.extensions.layout.WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            WindowLayoutInfo translate$window_release = ExtensionsWindowLayoutInfoAdapter.translate$window_release(this.context, windowLayoutInfo);
            this.lastKnownValue = translate$window_release;
            Iterator it = this.registeredListeners.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(translate$window_release);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void addListener(Consumer consumer) {
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            WindowLayoutInfo windowLayoutInfo = this.lastKnownValue;
            if (windowLayoutInfo != null) {
                consumer.accept(windowLayoutInfo);
            }
            this.registeredListeners.add(consumer);
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
