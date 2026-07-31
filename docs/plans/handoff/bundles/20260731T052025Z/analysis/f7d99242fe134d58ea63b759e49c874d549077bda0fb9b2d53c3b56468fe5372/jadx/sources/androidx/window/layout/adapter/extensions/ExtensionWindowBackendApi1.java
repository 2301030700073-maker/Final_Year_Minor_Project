package androidx.window.layout.adapter.extensions;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ConsumerAdapter$createSubscription$1;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ExtensionWindowBackendApi1 extends ExtensionWindowBackendApi0 {
    public final WindowLayoutComponent component;
    public final ConsumerAdapter consumerAdapter;
    public final ReentrantLock globalLock = new ReentrantLock();
    public final LinkedHashMap contextToListeners = new LinkedHashMap();
    public final LinkedHashMap listenerToContext = new LinkedHashMap();
    public final LinkedHashMap consumerToToken = new LinkedHashMap();

    public ExtensionWindowBackendApi1(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
        this.component = windowLayoutComponent;
        this.consumerAdapter = consumerAdapter;
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer consumer) {
        LinkedHashMap linkedHashMap = this.contextToListeners;
        context.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = (MulticastConsumer) linkedHashMap.get(context);
            LinkedHashMap linkedHashMap2 = this.listenerToContext;
            if (multicastConsumer != null) {
                multicastConsumer.addListener(consumer);
                linkedHashMap2.put(consumer, context);
            } else {
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(context);
                linkedHashMap.put(context, multicastConsumer2);
                linkedHashMap2.put(consumer, context);
                multicastConsumer2.addListener(consumer);
                if (!(context instanceof Activity)) {
                    multicastConsumer2.accept(new WindowLayoutInfo(EmptyList.INSTANCE));
                    reentrantLock.unlock();
                    return;
                } else {
                    this.consumerToToken.put(multicastConsumer2, this.consumerAdapter.createSubscription(this.component, Reflection.getOrCreateKotlinClass(WindowLayoutInfo.class), (Activity) context, new ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1(1, 0, MulticastConsumer.class, multicastConsumer2, "accept", "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V")));
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer consumer) {
        LinkedHashMap linkedHashMap = this.contextToListeners;
        LinkedHashMap linkedHashMap2 = this.listenerToContext;
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            Context context = (Context) linkedHashMap2.get(consumer);
            if (context == null) {
                return;
            }
            MulticastConsumer multicastConsumer = (MulticastConsumer) linkedHashMap.get(context);
            if (multicastConsumer == null) {
                return;
            }
            LinkedHashSet linkedHashSet = multicastConsumer.registeredListeners;
            ReentrantLock reentrantLock2 = multicastConsumer.globalLock;
            reentrantLock2.lock();
            try {
                linkedHashSet.remove(consumer);
                reentrantLock2.unlock();
                linkedHashMap2.remove(consumer);
                if (linkedHashSet.isEmpty()) {
                    linkedHashMap.remove(context);
                    ConsumerAdapter$createSubscription$1 consumerAdapter$createSubscription$1 = (ConsumerAdapter$createSubscription$1) this.consumerToToken.remove(multicastConsumer);
                    if (consumerAdapter$createSubscription$1 != null) {
                        consumerAdapter$createSubscription$1.$removeMethod.invoke(consumerAdapter$createSubscription$1.$obj, consumerAdapter$createSubscription$1.$javaConsumer);
                    }
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
