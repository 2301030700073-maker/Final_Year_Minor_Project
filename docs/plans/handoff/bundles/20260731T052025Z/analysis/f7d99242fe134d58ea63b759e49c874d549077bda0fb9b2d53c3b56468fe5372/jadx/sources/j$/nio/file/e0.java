package j$.nio.file;

import java.io.Closeable;
import java.nio.file.WatchService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class e0 implements Closeable {
    public final /* synthetic */ WatchService a;

    public /* synthetic */ e0(WatchService watchService) {
        this.a = watchService;
    }

    public static /* synthetic */ e0 f(WatchService watchService) {
        if (watchService == null) {
            return null;
        }
        return new e0(watchService);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchService watchService = this.a;
        if (obj instanceof e0) {
            obj = ((e0) obj).a;
        }
        return watchService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
