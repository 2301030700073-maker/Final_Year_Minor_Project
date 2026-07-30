package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class V7 implements InterfaceC3823up<Object>, Q7 {

    /* renamed from: do, reason: not valid java name */
    public static final LinkedHashMap f4040do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Map<Class<? extends InterfaceC3700sk<?>>, Integer> f4041do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Class<?> f4042do;

    static {
        int i = 0;
        List m1618private = O4.m1618private(InterfaceC0768bk.class, InterfaceC2650dk.class, InterfaceC3641rk.class, InterfaceC3759tk.class, InterfaceC3818uk.class, InterfaceC3877vk.class, InterfaceC3936wk.class, InterfaceC3995xk.class, InterfaceC4054yk.class, InterfaceC4113zk.class, InterfaceC0827ck.class, InterfaceC2708ek.class, InterfaceC2767fk.class, InterfaceC2826gk.class, InterfaceC2885hk.class, InterfaceC2943ik.class, InterfaceC3170jk.class, InterfaceC3229kk.class, InterfaceC3288lk.class, InterfaceC3347mk.class, InterfaceC3465ok.class, InterfaceC3524pk.class, InterfaceC3583qk.class);
        ArrayList arrayList = new ArrayList(B8.c(m1618private));
        for (Object obj : m1618private) {
            int i2 = i + 1;
            if (i < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new C3653rw((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f4041do = C4120zr.m8814instanceof(arrayList);
        HashMap hashMap = new HashMap();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        C0173Do.m399new(values, "primitiveFqNames.values");
        for (String str : values) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            C0173Do.m399new(str, "kotlinName");
            sb.append(EF.w(str, str));
            sb.append("CompanionObject");
            hashMap3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry<Class<? extends InterfaceC3700sk<?>>, Integer> entry : f4041do.entrySet()) {
            Class<? extends InterfaceC3700sk<?>> key = entry.getKey();
            int intValue = entry.getValue().intValue();
            hashMap3.put(key.getName(), "kotlin.Function" + intValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(C0315Kc.m1180switch(hashMap3.size()));
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key2 = entry2.getKey();
            String str2 = (String) entry2.getValue();
            linkedHashMap.put(key2, EF.w(str2, str2));
        }
        f4040do = linkedHashMap;
    }

    public V7(Class<?> cls) {
        C0173Do.m401try(cls, "jClass");
        this.f4042do = cls;
    }

    @Override // defpackage.Q7
    /* renamed from: do */
    public final Class<?> mo1830do() {
        return this.f4042do;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof V7) && C0173Do.m394do(C3850vF.m8445catch(this), C3850vF.m8445catch((InterfaceC3823up) obj));
    }

    public final int hashCode() {
        return C3850vF.m8445catch(this).hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final String m2544if() {
        String str;
        Class<?> cls = this.f4042do;
        C0173Do.m401try(cls, "jClass");
        String str2 = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            boolean isArray = cls.isArray();
            LinkedHashMap linkedHashMap = f4040do;
            if (!isArray) {
                String str3 = (String) linkedHashMap.get(cls.getName());
                return str3 == null ? cls.getSimpleName() : str3;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) linkedHashMap.get(componentType.getName())) != null) {
                str2 = str.concat("Array");
            }
            return str2 == null ? "Array" : str2;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return EF.v(simpleName, enclosingMethod.getName() + '$');
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor != null) {
            return EF.v(simpleName, enclosingConstructor.getName() + '$');
        }
        int indexOf = simpleName.indexOf(36, 0);
        if (indexOf == -1) {
            return simpleName;
        }
        String substring = simpleName.substring(indexOf + 1, simpleName.length());
        C0173Do.m399new(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final String toString() {
        return this.f4042do.toString() + " (Kotlin reflection is not available)";
    }
}
