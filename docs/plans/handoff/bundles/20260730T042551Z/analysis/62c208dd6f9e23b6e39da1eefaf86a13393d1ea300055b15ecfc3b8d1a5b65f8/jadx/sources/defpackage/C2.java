package defpackage;

import defpackage.AbstractC2890hp;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes3.dex */
public final class C2 extends AbstractC2890hp<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f312do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2890hp<Object> f313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Class<?> f314do;

    /* renamed from: C2$do, reason: invalid class name */
    public static class Cdo implements AbstractC2890hp.Cdo {
        @Override // defpackage.AbstractC2890hp.Cdo
        /* renamed from: do, reason: not valid java name */
        public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
            Type genericComponentType = type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : type instanceof Class ? ((Class) type).getComponentType() : null;
            if (genericComponentType != null && set.isEmpty()) {
                return new C2831gp(new C2(WI.m2722case(genericComponentType), c3886vt.m8484do(genericComponentType)));
            }
            return null;
        }
    }

    public C2(Class<?> cls, AbstractC2890hp<Object> abstractC2890hp) {
        this.f314do = cls;
        this.f313do = abstractC2890hp;
    }

    @Override // defpackage.AbstractC2890hp
    /* renamed from: do, reason: not valid java name */
    public final Object mo249do(C3470op c3470op) {
        ArrayList arrayList = new ArrayList();
        c3470op.m7728do();
        while (c3470op.m7725class()) {
            arrayList.add(this.f313do.mo249do(c3470op));
        }
        c3470op.m7724case();
        Object newInstance = Array.newInstance(this.f314do, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
