package j$.nio.file.attribute;

import java.nio.file.attribute.AclFileAttributeView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements q {
    public final /* synthetic */ AclFileAttributeView a;

    @Override // j$.nio.file.attribute.q
    public final /* synthetic */ void b(z zVar) {
        this.a.setOwner(y.a(zVar));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AclFileAttributeView aclFileAttributeView = this.a;
        if (obj instanceof a) {
            obj = ((a) obj).a;
        }
        return aclFileAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.q
    public final /* synthetic */ z getOwner() {
        return x.a(this.a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.attribute.n
    public final /* synthetic */ String name() {
        return this.a.name();
    }
}
