package defpackage;

import defpackage.AbstractC2890hp;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* renamed from: m0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3305m0 implements AbstractC2890hp.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final List<Cif> f14280do;

    /* renamed from: if, reason: not valid java name */
    public final List<Cif> f14281if;

    /* renamed from: m0$do, reason: invalid class name */
    public class Cdo extends AbstractC2890hp<Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AbstractC2890hp f14282do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Type f14283do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Set f14284do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Cif f14285do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3886vt f14286do;

        public Cdo(AbstractC2890hp abstractC2890hp, C3886vt c3886vt, Cif cif, Set set, Type type) {
            this.f14282do = abstractC2890hp;
            this.f14286do = c3886vt;
            this.f14285do = cif;
            this.f14284do = set;
            this.f14283do = type;
        }

        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Object mo249do(C3470op c3470op) {
            Cif cif = this.f14285do;
            if (cif == null) {
                return this.f14282do.mo249do(c3470op);
            }
            if (!cif.f14291do && c3470op.a() == 9) {
                c3470op.m7738strictfp();
                return null;
            }
            try {
                return cif.mo7442do(this.f14286do, c3470op);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw new C0623Yd(e.getCause() + " at " + c3470op.m7723break());
            }
        }

        public final String toString() {
            return "JsonAdapter" + this.f14284do + "(" + this.f14283do + ")";
        }
    }

    /* renamed from: m0$if, reason: invalid class name */
    public static abstract class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Object f14287do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Method f14288do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Type f14289do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Set<? extends Annotation> f14290do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f14291do;

        public Cif(Type type, Set<? extends Annotation> set, Object obj, Method method, boolean z) {
            this.f14289do = type;
            this.f14290do = set;
            this.f14287do = obj;
            this.f14288do = method;
            this.f14291do = z;
        }

        /* renamed from: do, reason: not valid java name */
        public Object mo7442do(C3886vt c3886vt, C3470op c3470op) {
            throw new AssertionError();
        }
    }

    public C3305m0(ArrayList arrayList, ArrayList arrayList2) {
        this.f14280do = arrayList;
        this.f14281if = arrayList2;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m7441if(List<Cif> list, Type type, Set<? extends Annotation> set) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Cif cif = list.get(i);
            if (cif.f14289do.equals(type) && cif.f14290do.equals(set)) {
                return cif;
            }
        }
        return null;
    }

    @Override // defpackage.AbstractC2890hp.Cdo
    /* renamed from: do */
    public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
        AbstractC2890hp m8485for;
        Cif m7441if = m7441if(this.f14280do, type, set);
        Cif m7441if2 = m7441if(this.f14281if, type, set);
        if (m7441if == null && m7441if2 == null) {
            return null;
        }
        if (m7441if == null || m7441if2 == null) {
            try {
                m8485for = c3886vt.m8485for(this, type, set);
            } catch (IllegalArgumentException unused) {
                throw new IllegalArgumentException("No " + (m7441if == null ? "@ToJson" : "@FromJson") + " adapter for " + type + " annotated " + set);
            }
        } else {
            m8485for = null;
        }
        return new Cdo(m8485for, c3886vt, m7441if2, set, type);
    }
}
