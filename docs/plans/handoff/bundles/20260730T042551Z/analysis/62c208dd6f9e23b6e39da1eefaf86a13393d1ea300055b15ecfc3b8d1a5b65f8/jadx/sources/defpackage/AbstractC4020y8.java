package defpackage;

import defpackage.AbstractC2890hp;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/* renamed from: y8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC4020y8<C extends Collection<T>, T> extends AbstractC2890hp<C> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f16681do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2890hp<T> f16682do;

    /* renamed from: y8$do, reason: invalid class name */
    public static class Cdo implements AbstractC2890hp.Cdo {
        @Override // defpackage.AbstractC2890hp.Cdo
        /* renamed from: do */
        public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
            Class<?> m2722case = WI.m2722case(type);
            if (!set.isEmpty()) {
                return null;
            }
            if (m2722case == List.class || m2722case == Collection.class) {
                return new C2831gp(new C4079z8(c3886vt.m8484do(WI.m2725for(type))));
            }
            if (m2722case == Set.class) {
                return new C2831gp(new A8(c3886vt.m8484do(WI.m2725for(type))));
            }
            return null;
        }
    }

    public AbstractC4020y8(AbstractC2890hp abstractC2890hp) {
        this.f16682do = abstractC2890hp;
    }

    @Override // defpackage.AbstractC2890hp
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final C mo249do(C3470op c3470op) {
        C mo44new = mo44new();
        c3470op.m7728do();
        while (c3470op.m7725class()) {
            mo44new.add(this.f16682do.mo249do(c3470op));
        }
        c3470op.m7724case();
        return mo44new;
    }

    /* renamed from: new */
    public abstract C mo44new();

    public final String toString() {
        return this.f16682do + ".collection()";
    }
}
