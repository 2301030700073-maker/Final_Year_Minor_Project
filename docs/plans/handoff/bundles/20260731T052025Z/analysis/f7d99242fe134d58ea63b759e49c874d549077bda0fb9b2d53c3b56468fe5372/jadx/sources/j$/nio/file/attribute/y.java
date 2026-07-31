package j$.nio.file.attribute;

import java.nio.file.attribute.UserPrincipal;
import javax.security.auth.Subject;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class y implements UserPrincipal {
    public final /* synthetic */ z a;

    public /* synthetic */ y(z zVar) {
        this.a = zVar;
    }

    public static /* synthetic */ UserPrincipal a(z zVar) {
        if (zVar == null) {
            return null;
        }
        return zVar instanceof x ? ((x) zVar).a : zVar instanceof s ? ((s) zVar).a : new y(zVar);
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean equals(Object obj) {
        z zVar = this.a;
        if (obj instanceof y) {
            obj = ((y) obj).a;
        }
        return zVar.equals(obj);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String getName() {
        return this.a.getName();
    }

    @Override // java.security.Principal
    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean implies(Subject subject) {
        return this.a.implies(subject);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String toString() {
        return this.a.toString();
    }
}
