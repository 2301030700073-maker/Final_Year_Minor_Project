package defpackage;

import defpackage.AbstractC2890hp;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* renamed from: yr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4061yr<K, V> extends AbstractC2890hp<Map<K, V>> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f16837do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2890hp<K> f16838do;

    /* renamed from: if, reason: not valid java name */
    public final AbstractC2890hp<V> f16839if;

    /* renamed from: yr$do, reason: invalid class name */
    public static class Cdo implements AbstractC2890hp.Cdo {
        @Override // defpackage.AbstractC2890hp.Cdo
        /* renamed from: do */
        public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
            Class<?> m2722case;
            Type[] actualTypeArguments;
            if (!set.isEmpty() || (m2722case = WI.m2722case(type)) != Map.class) {
                return null;
            }
            if (type == Properties.class) {
                actualTypeArguments = new Type[]{String.class, String.class};
            } else {
                if (!Map.class.isAssignableFrom(m2722case)) {
                    throw new IllegalArgumentException();
                }
                Type m2724else = WI.m2724else(type, m2722case, WI.m2729try(type, m2722case, Map.class));
                actualTypeArguments = m2724else instanceof ParameterizedType ? ((ParameterizedType) m2724else).getActualTypeArguments() : new Type[]{Object.class, Object.class};
            }
            return new C2831gp(new C4061yr(c3886vt, actualTypeArguments[0], actualTypeArguments[1]));
        }
    }

    public C4061yr(C3886vt c3886vt, Type type, Type type2) {
        this.f16838do = c3886vt.m8484do(type);
        this.f16839if = c3886vt.m8484do(type2);
    }

    @Override // defpackage.AbstractC2890hp
    /* renamed from: do */
    public final Object mo249do(C3470op c3470op) {
        C3765tq c3765tq = new C3765tq();
        c3470op.m7731if();
        while (c3470op.m7725class()) {
            if (c3470op.m7725class()) {
                c3470op.f14855break = c3470op.m7735package();
                c3470op.f14861for = 11;
            }
            K mo249do = this.f16838do.mo249do(c3470op);
            if (c3765tq.put(mo249do, this.f16839if.mo249do(c3470op)) != null) {
                throw new C0623Yd("Map key '" + mo249do + "' has multiple values at path " + c3470op.m7723break());
            }
        }
        c3470op.m7730goto();
        return c3765tq;
    }

    public final String toString() {
        return "JsonAdapter(" + this.f16838do + "=" + this.f16839if + ")";
    }
}
