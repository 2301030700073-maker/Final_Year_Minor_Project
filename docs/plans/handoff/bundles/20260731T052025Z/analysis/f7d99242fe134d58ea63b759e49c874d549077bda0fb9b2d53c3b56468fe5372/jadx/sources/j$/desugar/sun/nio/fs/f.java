package j$.desugar.sun.nio.fs;

import java.nio.channels.FileLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class f extends FileLock {
    public final FileLock a;

    public f(FileLock fileLock, e eVar) {
        super(eVar, fileLock.position(), fileLock.size(), fileLock.isShared());
        this.a = fileLock;
    }

    @Override // java.nio.channels.FileLock
    public final boolean isValid() {
        return this.a.isValid();
    }

    @Override // java.nio.channels.FileLock
    public final void release() {
        this.a.release();
    }
}
