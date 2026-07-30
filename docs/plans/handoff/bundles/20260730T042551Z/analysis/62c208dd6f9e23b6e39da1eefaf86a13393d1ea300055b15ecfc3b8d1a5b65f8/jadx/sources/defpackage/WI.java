package defpackage;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;

/* loaded from: classes3.dex */
public final class WI {

    /* renamed from: do, reason: not valid java name */
    public static final Type[] f4372do = new Type[0];

    /* renamed from: WI$do, reason: invalid class name */
    public static final class Cdo implements GenericArrayType {

        /* renamed from: do, reason: not valid java name */
        public final Type f4373do;

        public Cdo(Type type) {
            this.f4373do = WI.m2723do(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && WI.m2728new(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f4373do;
        }

        public final int hashCode() {
            return this.f4373do.hashCode();
        }

        public final String toString() {
            return WI.m2726goto(this.f4373do) + "[]";
        }
    }

    /* renamed from: WI$for, reason: invalid class name */
    public static final class Cfor implements WildcardType {

        /* renamed from: do, reason: not valid java name */
        public final Type f4374do;

        /* renamed from: if, reason: not valid java name */
        public final Type f4375if;

        public Cfor(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                Type type = typeArr[0];
                type.getClass();
                WI.m2727if(type);
                this.f4375if = null;
                this.f4374do = WI.m2723do(typeArr[0]);
                return;
            }
            Type type2 = typeArr2[0];
            type2.getClass();
            WI.m2727if(type2);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f4375if = WI.m2723do(typeArr2[0]);
            this.f4374do = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && WI.m2728new(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f4375if;
            return type != null ? new Type[]{type} : WI.f4372do;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f4374do};
        }

        public final int hashCode() {
            Type type = this.f4375if;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f4374do.hashCode() + 31);
        }

        public final String toString() {
            Type type = this.f4375if;
            if (type != null) {
                return "? super " + WI.m2726goto(type);
            }
            Type type2 = this.f4374do;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + WI.m2726goto(type2);
        }
    }

    /* renamed from: WI$if, reason: invalid class name */
    public static final class Cif implements ParameterizedType {

        /* renamed from: do, reason: not valid java name */
        public final Type f4376do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Type[] f4377do;

        /* renamed from: if, reason: not valid java name */
        public final Type f4378if;

        public Cif(Type type, Type type2, Type... typeArr) {
            int i = 0;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z) {
                    throw new IllegalArgumentException();
                }
            }
            this.f4376do = type == null ? null : WI.m2723do(type);
            this.f4378if = WI.m2723do(type2);
            this.f4377do = (Type[]) typeArr.clone();
            while (true) {
                Type[] typeArr2 = this.f4377do;
                if (i >= typeArr2.length) {
                    return;
                }
                Type type3 = typeArr2[i];
                type3.getClass();
                WI.m2727if(type3);
                Type[] typeArr3 = this.f4377do;
                typeArr3[i] = WI.m2723do(typeArr3[i]);
                i++;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && WI.m2728new(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f4377do.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f4376do;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f4378if;
        }

        public final int hashCode() {
            int hashCode = Arrays.hashCode(this.f4377do) ^ this.f4378if.hashCode();
            Type type = this.f4376do;
            return hashCode ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f4377do;
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(WI.m2726goto(this.f4378if));
            if (typeArr.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(WI.m2726goto(typeArr[0]));
            for (int i = 1; i < typeArr.length; i++) {
                sb.append(", ");
                sb.append(WI.m2726goto(typeArr[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Class<?> m2722case(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(m2722case(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return m2722case(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    /* renamed from: do, reason: not valid java name */
    public static Type m2723do(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new Cdo(m2723do(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new Cif(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new Cdo(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new Cfor(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0043 A[LOOP:0: B:1:0x0000->B:9:0x0043, LOOP_END] */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type m2724else(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.WI.m2724else(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    /* renamed from: for, reason: not valid java name */
    public static Type m2725for(Type type) {
        if (!Collection.class.isAssignableFrom(Collection.class)) {
            throw new IllegalArgumentException();
        }
        Type m2724else = m2724else(type, Collection.class, m2729try(type, Collection.class, Collection.class));
        if (m2724else instanceof WildcardType) {
            m2724else = ((WildcardType) m2724else).getUpperBounds()[0];
        }
        return m2724else instanceof ParameterizedType ? ((ParameterizedType) m2724else).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m2726goto(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2727if(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2728new(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type[] actualTypeArguments = parameterizedType instanceof Cif ? ((Cif) parameterizedType).f4377do : parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2 instanceof Cif ? ((Cif) parameterizedType2).f4377do : parameterizedType2.getActualTypeArguments();
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(actualTypeArguments, actualTypeArguments2);
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return m2728new(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static Type m2729try(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return m2729try(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m2729try(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }
}
