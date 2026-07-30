package defpackage;

import java.lang.reflect.Constructor;

/* loaded from: classes3.dex */
public final class R7 extends FM {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Class f3149do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Constructor f3150do;

    public R7(Constructor constructor, Class cls) {
        this.f3150do = constructor;
        this.f3149do = cls;
    }

    @Override // defpackage.FM
    /* renamed from: if */
    public final Object mo611if() {
        return this.f3150do.newInstance(null);
    }

    public final String toString() {
        return this.f3149do.getName();
    }
}
