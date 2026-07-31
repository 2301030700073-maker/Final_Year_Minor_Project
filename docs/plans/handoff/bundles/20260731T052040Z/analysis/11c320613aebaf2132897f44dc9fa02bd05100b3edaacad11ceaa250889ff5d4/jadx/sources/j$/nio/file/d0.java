package j$.nio.file;

import java.nio.file.WatchEvent;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class d0 implements f0 {
    public final /* synthetic */ WatchEvent.Kind a;

    public final /* synthetic */ boolean equals(Object obj) {
        WatchEvent.Kind kind = this.a;
        if (obj instanceof d0) {
            obj = ((d0) obj).a;
        }
        return kind.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.f0
    public final /* synthetic */ String name() {
        return this.a.name();
    }

    @Override // j$.nio.file.f0
    public final /* synthetic */ Class type() {
        return this.a.type();
    }
}
