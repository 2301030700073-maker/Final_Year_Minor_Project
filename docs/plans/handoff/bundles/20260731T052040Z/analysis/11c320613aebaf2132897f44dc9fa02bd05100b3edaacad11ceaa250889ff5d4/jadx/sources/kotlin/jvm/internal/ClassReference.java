package kotlin.jvm.internal;

import androidx.work.OperationKt;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
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
import kotlin.text.StringsKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ClassReference implements ClassBasedDeclarationContainer {
    public static final Map FUNCTION_CLASSES;
    public final Class jClass;

    static {
        int i = 0;
        List listOf = Jsoup.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
        for (Object obj : listOf) {
            int i2 = i + 1;
            if (i < 0) {
                Jsoup.throwIndexOverflow();
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
        return (obj instanceof ClassReference) && OperationKt.getJavaObjectType(this).equals(OperationKt.getJavaObjectType((ClassReference) obj));
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public final Class getJClass() {
        return this.jClass;
    }

    public final String getQualifiedName() {
        String classFqNameOf;
        Class cls = this.jClass;
        cls.getClass();
        String str = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        if (!cls.isArray()) {
            String classFqNameOf2 = TypeIntrinsics.classFqNameOf(cls.getName());
            return classFqNameOf2 == null ? cls.getCanonicalName() : classFqNameOf2;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (classFqNameOf = TypeIntrinsics.classFqNameOf(componentType.getName())) != null) {
            str = classFqNameOf.concat("Array");
        }
        return str == null ? "kotlin.Array" : str;
    }

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
                String simpleNameOf2 = TypeIntrinsics.simpleNameOf(cls.getName());
                return simpleNameOf2 == null ? cls.getSimpleName() : simpleNameOf2;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (simpleNameOf = TypeIntrinsics.simpleNameOf(componentType.getName())) != null) {
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
            int indexOf$default = StringsKt.indexOf$default('$', 0, 6, (CharSequence) simpleName);
            return indexOf$default == -1 ? simpleName : simpleName.substring(indexOf$default + 1, simpleName.length());
        }
        return StringsKt.substringAfter(simpleName, enclosingConstructor.getName() + '$', simpleName);
    }

    public final int hashCode() {
        return OperationKt.getJavaObjectType(this).hashCode();
    }

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
            cls = OperationKt.getJavaObjectType(Reflection.getOrCreateKotlinClass(cls));
        }
        return cls.isInstance(obj);
    }

    public final String toString() {
        return this.jClass.toString() + " (Kotlin reflection is not available)";
    }
}
