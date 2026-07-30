package defpackage;

import defpackage.AbstractC2890hp;
import defpackage.C3305m0;
import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* renamed from: vt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3886vt {

    /* renamed from: do, reason: not valid java name */
    public static final ArrayList f16147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ThreadLocal<List<Cif<?>>> f16148do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f16149do = new LinkedHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC2890hp.Cdo> f16150do;

    /* renamed from: vt$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f16151do = new ArrayList();

        /* renamed from: do, reason: not valid java name */
        public final void m8487do(Object obj) {
            String str;
            String str2;
            String str3;
            C3305m0.Cif c3541q0;
            C3305m0.Cif c3423o0;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Class<?> cls = obj.getClass(); cls != Object.class; cls = cls.getSuperclass()) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                int length = declaredMethods.length;
                char c = 0;
                int i = 0;
                while (i < length) {
                    Method method = declaredMethods[i];
                    if (method.isAnnotationPresent(AH.class)) {
                        method.setAccessible(true);
                        Type[] genericParameterTypes = method.getGenericParameterTypes();
                        Type genericReturnType = method.getGenericReturnType();
                        if (genericParameterTypes.length == 2 && genericParameterTypes[c] == C3646rp.class && genericReturnType == Void.TYPE) {
                            c3423o0 = new C3364n0(genericParameterTypes[1], UJ.m2373if(method.getParameterAnnotations()[1]), obj, method);
                            str = "Unexpected signature for ";
                            str2 = "\n    ";
                        } else {
                            if (genericParameterTypes.length != 1 || genericReturnType == Void.TYPE) {
                                throw new IllegalArgumentException("Unexpected signature for " + method + ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n");
                            }
                            Set<Annotation> set = UJ.f3861do;
                            UJ.m2373if(method.getAnnotations());
                            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                            Set<? extends Annotation> m2373if = UJ.m2373if(parameterAnnotations[c]);
                            boolean m2372do = UJ.m2372do(parameterAnnotations[c]);
                            Type type = genericParameterTypes[c];
                            str = "Unexpected signature for ";
                            str2 = "\n    ";
                            c3423o0 = new C3423o0(type, m2373if, obj, method, m2372do);
                        }
                        C3305m0.Cif m7441if = C3305m0.m7441if(arrayList, c3423o0.f14289do, c3423o0.f14290do);
                        if (m7441if != null) {
                            throw new IllegalArgumentException("Conflicting @ToJson methods:\n    " + m7441if.f14288do + str2 + c3423o0.f14288do);
                        }
                        arrayList.add(c3423o0);
                    } else {
                        str = "Unexpected signature for ";
                        str2 = "\n    ";
                    }
                    if (method.isAnnotationPresent(InterfaceC0629Yj.class)) {
                        method.setAccessible(true);
                        Type[] genericParameterTypes2 = method.getGenericParameterTypes();
                        Type genericReturnType2 = method.getGenericReturnType();
                        if (genericParameterTypes2.length == 1 && genericParameterTypes2[0] == C3470op.class && genericReturnType2 != Void.TYPE) {
                            Set<Annotation> set2 = UJ.f3861do;
                            c3541q0 = new C3482p0(genericReturnType2, UJ.m2373if(method.getAnnotations()), obj, method);
                            str3 = str2;
                        } else {
                            if (genericParameterTypes2.length != 1 || genericReturnType2 == Void.TYPE) {
                                throw new IllegalArgumentException(str + method + ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> void fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n");
                            }
                            Set<Annotation> set3 = UJ.f3861do;
                            Set<? extends Annotation> m2373if2 = UJ.m2373if(method.getAnnotations());
                            Annotation[][] parameterAnnotations2 = method.getParameterAnnotations();
                            str3 = str2;
                            c3541q0 = new C3541q0(genericReturnType2, m2373if2, obj, method, UJ.m2372do(parameterAnnotations2[0]), genericParameterTypes2, UJ.m2373if(parameterAnnotations2[0]));
                        }
                        C3305m0.Cif m7441if2 = C3305m0.m7441if(arrayList2, c3541q0.f14289do, c3541q0.f14290do);
                        if (m7441if2 != null) {
                            throw new IllegalArgumentException("Conflicting @FromJson methods:\n    " + m7441if2.f14288do + str3 + c3541q0.f14288do);
                        }
                        arrayList2.add(c3541q0);
                    }
                    i++;
                    c = 0;
                }
            }
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                throw new IllegalArgumentException("Expected at least one @ToJson or @FromJson method on ".concat(obj.getClass().getName()));
            }
            this.f16151do.add(new C3305m0(arrayList, arrayList2));
        }
    }

    /* renamed from: vt$if, reason: invalid class name */
    public static class Cif<T> extends AbstractC2890hp<T> {

        /* renamed from: do, reason: not valid java name */
        public AbstractC2890hp<T> f16152do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f16153do;

        public Cif(Object obj) {
            this.f16153do = obj;
        }

        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final T mo249do(C3470op c3470op) {
            AbstractC2890hp<T> abstractC2890hp = this.f16152do;
            if (abstractC2890hp != null) {
                return abstractC2890hp.mo249do(c3470op);
            }
            throw new IllegalStateException("Type adapter isn't ready");
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        f16147do = arrayList;
        arrayList.add(VE.f4064do);
        arrayList.add(AbstractC4020y8.f16681do);
        arrayList.add(C4061yr.f16837do);
        arrayList.add(C2.f312do);
        arrayList.add(U7.f3833do);
    }

    public C3886vt(Cdo cdo) {
        ArrayList arrayList = cdo.f16151do;
        int size = arrayList.size();
        ArrayList arrayList2 = f16147do;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.f16150do = DesugarCollections.unmodifiableList(arrayList3);
    }

    /* renamed from: do, reason: not valid java name */
    public final <T> AbstractC2890hp<T> m8484do(Type type) {
        return m8486if(type, UJ.f3861do);
    }

    /* renamed from: for, reason: not valid java name */
    public final <T> AbstractC2890hp<T> m8485for(AbstractC2890hp.Cdo cdo, Type type, Set<? extends Annotation> set) {
        List<AbstractC2890hp.Cdo> list = this.f16150do;
        int indexOf = list.indexOf(cdo);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Unable to skip past unknown factory " + cdo);
        }
        int size = list.size();
        for (int i = indexOf + 1; i < size; i++) {
            AbstractC2890hp<T> abstractC2890hp = (AbstractC2890hp<T>) list.get(i).mo250do(type, set, this);
            if (abstractC2890hp != null) {
                return abstractC2890hp;
            }
        }
        throw new IllegalArgumentException("No next JsonAdapter for " + type + " annotated " + set);
    }

    /* renamed from: if, reason: not valid java name */
    public final <T> AbstractC2890hp<T> m8486if(Type type, Set<? extends Annotation> set) {
        Object asList = set.isEmpty() ? type : Arrays.asList(type, set);
        synchronized (this.f16149do) {
            AbstractC2890hp<T> abstractC2890hp = (AbstractC2890hp) this.f16149do.get(asList);
            if (abstractC2890hp != null) {
                return abstractC2890hp;
            }
            List<Cif<?>> list = this.f16148do.get();
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Cif<?> cif = list.get(i);
                    if (cif.f16153do.equals(asList)) {
                        return cif;
                    }
                }
            } else {
                list = new ArrayList<>();
                this.f16148do.set(list);
            }
            Cif<?> cif2 = new Cif<>(asList);
            list.add(cif2);
            try {
                int size2 = this.f16150do.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    AbstractC2890hp<T> abstractC2890hp2 = (AbstractC2890hp<T>) this.f16150do.get(i2).mo250do(type, set, this);
                    if (abstractC2890hp2 != null) {
                        cif2.f16152do = abstractC2890hp2;
                        cif2.f16153do = null;
                        synchronized (this.f16149do) {
                            this.f16149do.put(asList, abstractC2890hp2);
                        }
                        return abstractC2890hp2;
                    }
                }
                list.remove(list.size() - 1);
                if (list.isEmpty()) {
                    this.f16148do.remove();
                }
                throw new IllegalArgumentException("No JsonAdapter for " + type + " annotated " + set);
            } finally {
                list.remove(list.size() - 1);
                if (list.isEmpty()) {
                    this.f16148do.remove();
                }
            }
        }
    }
}
