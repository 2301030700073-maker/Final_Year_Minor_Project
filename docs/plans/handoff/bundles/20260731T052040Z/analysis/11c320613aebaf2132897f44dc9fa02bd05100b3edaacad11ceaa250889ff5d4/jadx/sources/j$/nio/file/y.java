package j$.nio.file;

import java.nio.file.PathMatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class y implements PathMatcher {
    public final /* synthetic */ z a;

    public /* synthetic */ y(z zVar) {
        this.a = zVar;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        z zVar = this.a;
        if (obj instanceof y) {
            obj = ((y) obj).a;
        }
        return zVar.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.file.PathMatcher
    public final /* synthetic */ boolean matches(java.nio.file.Path path) {
        return this.a.a(r.k(path));
    }
}
