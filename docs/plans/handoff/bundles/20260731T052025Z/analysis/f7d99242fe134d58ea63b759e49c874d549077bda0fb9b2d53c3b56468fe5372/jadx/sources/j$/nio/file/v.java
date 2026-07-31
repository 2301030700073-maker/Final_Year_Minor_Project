package j$.nio.file;

import java.nio.file.PathMatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class v implements PathMatcher {
    public final /* synthetic */ w a;

    public /* synthetic */ v(w wVar) {
        this.a = wVar;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        w wVar = this.a;
        if (obj instanceof v) {
            obj = ((v) obj).a;
        }
        return wVar.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.file.PathMatcher
    public final /* synthetic */ boolean matches(java.nio.file.Path path) {
        return this.a.a(o.k(path));
    }
}
