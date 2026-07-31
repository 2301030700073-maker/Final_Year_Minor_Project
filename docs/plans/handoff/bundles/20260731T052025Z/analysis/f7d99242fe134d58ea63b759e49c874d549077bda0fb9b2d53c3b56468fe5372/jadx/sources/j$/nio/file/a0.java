package j$.nio.file;

import java.nio.file.WatchEvent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class a0 implements WatchEvent.Kind {
    public final /* synthetic */ b0 a;

    public final /* synthetic */ boolean equals(Object obj) {
        b0 b0Var = this.a;
        if (obj instanceof a0) {
            obj = ((a0) obj).a;
        }
        return b0Var.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ String name() {
        return this.a.name();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ Class type() {
        return this.a.type();
    }
}
