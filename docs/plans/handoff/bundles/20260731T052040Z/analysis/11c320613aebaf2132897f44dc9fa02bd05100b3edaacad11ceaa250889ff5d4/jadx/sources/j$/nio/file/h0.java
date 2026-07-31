package j$.nio.file;

import java.nio.file.WatchKey;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class h0 {
    public final /* synthetic */ WatchKey a;

    public /* synthetic */ h0(WatchKey watchKey) {
        this.a = watchKey;
    }

    public static /* synthetic */ h0 a(WatchKey watchKey) {
        if (watchKey == null) {
            return null;
        }
        return new h0(watchKey);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchKey watchKey = this.a;
        if (obj instanceof h0) {
            obj = ((h0) obj).a;
        }
        return watchKey.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
