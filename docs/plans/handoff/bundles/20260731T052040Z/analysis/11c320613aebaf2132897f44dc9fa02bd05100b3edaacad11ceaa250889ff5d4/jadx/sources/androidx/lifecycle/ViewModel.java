package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import com.livefront.bridge.disk.FileDiskHandler;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ViewModel {
    public final FileDiskHandler impl = new FileDiskHandler();

    public final void addCloseable(String str, AutoCloseable autoCloseable) {
        AutoCloseable autoCloseable2;
        FileDiskHandler fileDiskHandler = this.impl;
        if (fileDiskHandler != null) {
            if (fileDiskHandler.mIsLoadedOrTimedOut) {
                FileDiskHandler.closeWithRuntimeException(autoCloseable);
                return;
            }
            synchronized (((SynchronizedObject) fileDiskHandler.mDirectory)) {
                autoCloseable2 = (AutoCloseable) ((LinkedHashMap) fileDiskHandler.mPendingLoadFuture).put(str, autoCloseable);
            }
            FileDiskHandler.closeWithRuntimeException(autoCloseable2);
        }
    }

    public final void clear$lifecycle_viewmodel() {
        FileDiskHandler fileDiskHandler = this.impl;
        if (fileDiskHandler != null && !fileDiskHandler.mIsLoadedOrTimedOut) {
            fileDiskHandler.mIsLoadedOrTimedOut = true;
            synchronized (((SynchronizedObject) fileDiskHandler.mDirectory)) {
                try {
                    Iterator it = ((LinkedHashMap) fileDiskHandler.mPendingLoadFuture).values().iterator();
                    while (it.hasNext()) {
                        FileDiskHandler.closeWithRuntimeException((AutoCloseable) it.next());
                    }
                    Iterator it2 = ((LinkedHashSet) fileDiskHandler.mKeyByteMap).iterator();
                    while (it2.hasNext()) {
                        FileDiskHandler.closeWithRuntimeException((AutoCloseable) it2.next());
                    }
                    ((LinkedHashSet) fileDiskHandler.mKeyByteMap).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        onCleared();
    }

    public final AutoCloseable getCloseable(String str) {
        AutoCloseable autoCloseable;
        FileDiskHandler fileDiskHandler = this.impl;
        if (fileDiskHandler == null) {
            return null;
        }
        synchronized (((SynchronizedObject) fileDiskHandler.mDirectory)) {
            autoCloseable = (AutoCloseable) ((LinkedHashMap) fileDiskHandler.mPendingLoadFuture).get(str);
        }
        return autoCloseable;
    }

    public void onCleared() {
    }
}
