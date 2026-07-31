package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ExtensionWindowBackendApi2 extends ExtensionWindowBackendApi1 {
    public final LinkedHashMap contextToListeners;
    public final ReentrantLock globalLock;
    public final LinkedHashMap listenerToContext;

    public ExtensionWindowBackendApi2(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
        super(windowLayoutComponent, consumerAdapter);
        this.globalLock = new ReentrantLock();
        this.contextToListeners = new LinkedHashMap();
        this.listenerToContext = new LinkedHashMap();
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi1, androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public final void registerLayoutChangeCallback(Context context, Executor executor, Consumer consumer) {
        LinkedHashMap linkedHashMap = this.contextToListeners;
        context.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            MulticastConsumerApi2 multicastConsumerApi2 = (MulticastConsumerApi2) linkedHashMap.get(context);
            LinkedHashMap linkedHashMap2 = this.listenerToContext;
            if (multicastConsumerApi2 != null) {
                multicastConsumerApi2.addListener(consumer);
                linkedHashMap2.put(consumer, context);
            } else {
                MulticastConsumerApi2 multicastConsumerApi22 = new MulticastConsumerApi2(context);
                linkedHashMap.put(context, multicastConsumerApi22);
                linkedHashMap2.put(consumer, context);
                multicastConsumerApi22.addListener(consumer);
                this.component.addWindowLayoutInfoListener(context, multicastConsumerApi22);
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi1, androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public final void unregisterLayoutChangeCallback(Consumer consumer) {
        LinkedHashMap linkedHashMap = this.contextToListeners;
        LinkedHashMap linkedHashMap2 = this.listenerToContext;
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            Context context = (Context) linkedHashMap2.get(consumer);
            if (context == null) {
                return;
            }
            MulticastConsumerApi2 multicastConsumerApi2 = (MulticastConsumerApi2) linkedHashMap.get(context);
            if (multicastConsumerApi2 == null) {
                return;
            }
            ReentrantLock reentrantLock2 = multicastConsumerApi2.globalLock;
            reentrantLock2.lock();
            try {
                multicastConsumerApi2.registeredListeners.remove(consumer);
                reentrantLock2.unlock();
                linkedHashMap2.remove(consumer);
                if (multicastConsumerApi2.registeredListeners.isEmpty()) {
                    linkedHashMap.remove(context);
                    this.component.removeWindowLayoutInfoListener(multicastConsumerApi2);
                }
            } catch (Throwable th) {
                reentrantLock2.unlock();
                throw th;
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}
