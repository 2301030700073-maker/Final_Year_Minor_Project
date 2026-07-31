package j$.nio.file;

import java.nio.file.WatchKey;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class d0 {
    public final /* synthetic */ WatchKey a;

    public /* synthetic */ d0(WatchKey watchKey) {
        this.a = watchKey;
    }

    public static /* synthetic */ d0 a(WatchKey watchKey) {
        if (watchKey == null) {
            return null;
        }
        return new d0(watchKey);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchKey watchKey = this.a;
        if (obj instanceof d0) {
            obj = ((d0) obj).a;
        }
        return watchKey.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
