package j$.nio.file;

import java.io.Closeable;
import java.nio.file.WatchService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class i0 implements Closeable {
    public final /* synthetic */ WatchService a;

    public /* synthetic */ i0(WatchService watchService) {
        this.a = watchService;
    }

    public static /* synthetic */ i0 f(WatchService watchService) {
        if (watchService == null) {
            return null;
        }
        return new i0(watchService);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchService watchService = this.a;
        if (obj instanceof i0) {
            obj = ((i0) obj).a;
        }
        return watchService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
