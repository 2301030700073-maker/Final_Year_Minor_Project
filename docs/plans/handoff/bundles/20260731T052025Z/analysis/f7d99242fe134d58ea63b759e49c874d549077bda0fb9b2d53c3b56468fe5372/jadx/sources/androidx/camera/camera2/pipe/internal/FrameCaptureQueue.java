package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.core.impl.Config;
import java.util.Iterator;
import kotlin.collections.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameCaptureQueue implements AutoCloseable {
    public boolean closed;
    public final Object lock = new Object();
    public final ArrayDeque queue = new ArrayDeque();

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Iterator<E> it = this.queue.iterator();
            if (it.hasNext()) {
                throw Config.CC.m((Iterator) it);
            }
            this.queue.clear();
        }
    }

    public final void remove(Request request) {
        request.getClass();
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                Iterator it = this.queue.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
