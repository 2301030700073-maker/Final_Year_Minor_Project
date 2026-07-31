package androidx.window.layout.adapter.sidecar;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.util.Consumer;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import androidx.work.Configuration;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SidecarWindowBackend implements WindowBackend {
    public static volatile SidecarWindowBackend globalInstance;
    public static final ReentrantLock globalLock = new ReentrantLock();
    public final ExtensionInterfaceCompat windowExtension;
    public final CopyOnWriteArrayList windowLayoutChangeCallbacks = new CopyOnWriteArrayList();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class WindowLayoutChangeCallbackWrapper {
        public final Activity activity;
        public final Consumer callback;
        public final Executor executor;
        public WindowLayoutInfo lastInfo;

        public WindowLayoutChangeCallbackWrapper(Activity activity, Executor executor, Consumer consumer) {
            this.activity = activity;
            this.executor = executor;
            this.callback = consumer;
        }
    }

    public SidecarWindowBackend(SidecarCompat sidecarCompat) {
        this.windowExtension = sidecarCompat;
        if (sidecarCompat != null) {
            sidecarCompat.setExtensionCallback(new Configuration.Builder(3, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.window.layout.adapter.WindowBackend
    public final void registerLayoutChangeCallback(Context context, Executor executor, Consumer consumer) {
        Object obj;
        WindowManager.LayoutParams attributes;
        context.getClass();
        r1 = null;
        IBinder iBinder = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (activity == null) {
            consumer.accept(new WindowLayoutInfo(emptyList));
            return;
        }
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            ExtensionInterfaceCompat extensionInterfaceCompat = this.windowExtension;
            if (extensionInterfaceCompat == null) {
                consumer.accept(new WindowLayoutInfo(emptyList));
                return;
            }
            boolean z = true;
            CopyOnWriteArrayList copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
            if ((copyOnWriteArrayList != null) == false || !copyOnWriteArrayList.isEmpty()) {
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    if (((WindowLayoutChangeCallbackWrapper) it.next()).activity.equals(activity)) {
                        break;
                    }
                }
            }
            z = false;
            WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = new WindowLayoutChangeCallbackWrapper(activity, executor, consumer);
            copyOnWriteArrayList.add(windowLayoutChangeCallbackWrapper);
            if (z) {
                Iterator it2 = copyOnWriteArrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it2.next();
                        if (activity.equals(((WindowLayoutChangeCallbackWrapper) obj).activity)) {
                            break;
                        }
                    }
                }
                WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper2 = (WindowLayoutChangeCallbackWrapper) obj;
                WindowLayoutInfo windowLayoutInfo = windowLayoutChangeCallbackWrapper2 != null ? windowLayoutChangeCallbackWrapper2.lastInfo : null;
                if (windowLayoutInfo != null) {
                    windowLayoutChangeCallbackWrapper.lastInfo = windowLayoutInfo;
                    windowLayoutChangeCallbackWrapper.executor.execute(new Processor$$ExternalSyntheticLambda2(4, windowLayoutChangeCallbackWrapper, windowLayoutInfo));
                }
            } else {
                SidecarCompat sidecarCompat = (SidecarCompat) extensionInterfaceCompat;
                Window window = activity.getWindow();
                if (window != null && (attributes = window.getAttributes()) != null) {
                    iBinder = attributes.token;
                }
                if (iBinder != null) {
                    sidecarCompat.register(iBinder, activity);
                } else {
                    activity.getWindow().getDecorView().addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(sidecarCompat, activity));
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public final void unregisterLayoutChangeCallback(Consumer consumer) {
        synchronized (globalLock) {
            try {
                if (this.windowExtension == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = this.windowLayoutChangeCallbacks.iterator();
                it.getClass();
                while (it.hasNext()) {
                    WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = (WindowLayoutChangeCallbackWrapper) it.next();
                    if (windowLayoutChangeCallbackWrapper.callback == consumer) {
                        arrayList.add(windowLayoutChangeCallbackWrapper);
                    }
                }
                this.windowLayoutChangeCallbacks.removeAll(arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Activity activity = ((WindowLayoutChangeCallbackWrapper) it2.next()).activity;
                    CopyOnWriteArrayList copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
                    if (!(copyOnWriteArrayList != null) || !copyOnWriteArrayList.isEmpty()) {
                        Iterator it3 = copyOnWriteArrayList.iterator();
                        while (it3.hasNext()) {
                            if (((WindowLayoutChangeCallbackWrapper) it3.next()).activity.equals(activity)) {
                                break;
                            }
                        }
                    }
                    ExtensionInterfaceCompat extensionInterfaceCompat = this.windowExtension;
                    if (extensionInterfaceCompat != null) {
                        ((SidecarCompat) extensionInterfaceCompat).onWindowLayoutChangeListenerRemoved(activity);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
