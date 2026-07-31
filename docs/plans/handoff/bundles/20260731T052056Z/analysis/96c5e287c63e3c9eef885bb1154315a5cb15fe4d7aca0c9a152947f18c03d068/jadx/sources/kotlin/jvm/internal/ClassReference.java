package kotlin.jvm.internal;

import androidx.room.Room;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassReference implements KClass, ClassBasedDeclarationContainer {
    public static final Map FUNCTION_CLASSES;
    public final Class jClass;

    static {
        int i = 0;
        List listOf = Room.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf, 10));
        for (Object obj : listOf) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            arrayList.add(new Pair((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        FUNCTION_CLASSES = MapsKt__MapsKt.toMap(arrayList);
    }

    public ClassReference(Class cls) {
        cls.getClass();
        this.jClass = cls;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ClassReference) && UnsignedKt.getJavaObjectType(this).equals(UnsignedKt.getJavaObjectType((KClass) obj));
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public final Class getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.KClass
    public final String getQualifiedName() {
        String classFqNameOf;
        Class cls = this.jClass;
        cls.getClass();
        String str = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        if (!cls.isArray()) {
            String classFqNameOf2 = Intrinsics.classFqNameOf(cls.getName());
            return classFqNameOf2 == null ? cls.getCanonicalName() : classFqNameOf2;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (classFqNameOf = Intrinsics.classFqNameOf(componentType.getName())) != null) {
            str = classFqNameOf.concat("Array");
        }
        return str == null ? "kotlin.Array" : str;
    }

    @Override // kotlin.reflect.KClass
    public final String getSimpleName() {
        String simpleNameOf;
        Class cls = this.jClass;
        cls.getClass();
        String str = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            if (!cls.isArray()) {
                String simpleNameOf2 = Intrinsics.simpleNameOf(cls.getName());
                return simpleNameOf2 == null ? cls.getSimpleName() : simpleNameOf2;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (simpleNameOf = Intrinsics.simpleNameOf(componentType.getName())) != null) {
                str = simpleNameOf.concat("Array");
            }
            return str == null ? "Array" : str;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return StringsKt.substringAfter(simpleName, enclosingMethod.getName() + '$', simpleName);
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor == null) {
            return StringsKt.substringAfter$default(simpleName, '$');
        }
        return StringsKt.substringAfter(simpleName, enclosingConstructor.getName() + '$', simpleName);
    }

    @Override // kotlin.reflect.KClass
    public final int hashCode() {
        return UnsignedKt.getJavaObjectType(this).hashCode();
    }

    @Override // kotlin.reflect.KClass
    public final boolean isInstance(Object obj) {
        Class cls = this.jClass;
        cls.getClass();
        Map map = FUNCTION_CLASSES;
        map.getClass();
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return TypeIntrinsics.isFunctionOfArity(num.intValue(), obj);
        }
        if (cls.isPrimitive()) {
            cls = UnsignedKt.getJavaObjectType(Reflection.factory.getOrCreateKotlinClass(cls));
        }
        return cls.isInstance(obj);
    }

    public final String toString() {
        return this.jClass.toString() + " (Kotlin reflection is not available)";
    }
}
