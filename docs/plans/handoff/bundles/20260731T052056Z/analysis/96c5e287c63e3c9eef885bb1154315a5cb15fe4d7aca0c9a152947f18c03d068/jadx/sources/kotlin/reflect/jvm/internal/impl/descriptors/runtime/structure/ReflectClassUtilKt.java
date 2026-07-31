package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
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
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$flatMap$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReflectClassUtilKt {
    public static final Map FUNCTION_CLASSES;
    public static final List PRIMITIVE_CLASSES;
    public static final Map PRIMITIVE_TO_WRAPPER;
    public static final Map WRAPPER_TO_PRIMITIVE;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        int i = 0;
        List<KClass> listOf = Room.listOf((Object[]) new KClass[]{reflectionFactory.getOrCreateKotlinClass(Boolean.TYPE), reflectionFactory.getOrCreateKotlinClass(Byte.TYPE), reflectionFactory.getOrCreateKotlinClass(Character.TYPE), reflectionFactory.getOrCreateKotlinClass(Double.TYPE), reflectionFactory.getOrCreateKotlinClass(Float.TYPE), reflectionFactory.getOrCreateKotlinClass(Integer.TYPE), reflectionFactory.getOrCreateKotlinClass(Long.TYPE), reflectionFactory.getOrCreateKotlinClass(Short.TYPE)});
        PRIMITIVE_CLASSES = listOf;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf, 10));
        for (KClass kClass : listOf) {
            arrayList.add(new Pair(UnsignedKt.getJavaObjectType(kClass), UnsignedKt.getJavaPrimitiveType(kClass)));
        }
        WRAPPER_TO_PRIMITIVE = MapsKt__MapsKt.toMap(arrayList);
        List<KClass> list = PRIMITIVE_CLASSES;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (KClass kClass2 : list) {
            arrayList2.add(new Pair(UnsignedKt.getJavaPrimitiveType(kClass2), UnsignedKt.getJavaObjectType(kClass2)));
        }
        PRIMITIVE_TO_WRAPPER = MapsKt__MapsKt.toMap(arrayList2);
        List listOf2 = Room.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf2, 10));
        for (Object obj : listOf2) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            arrayList3.add(new Pair((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        FUNCTION_CLASSES = MapsKt__MapsKt.toMap(arrayList3);
    }

    public static final ClassId getClassId(Class cls) {
        cls.getClass();
        if (cls.isPrimitive()) {
            Gson$$ExternalSyntheticBUOutline0.m("Can't compute ClassId for primitive type: ", cls);
            return null;
        }
        if (cls.isArray()) {
            Gson$$ExternalSyntheticBUOutline0.m("Can't compute ClassId for array type: ", cls);
            return null;
        }
        if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null && cls.getSimpleName().length() != 0) {
            Class<?> declaringClass = cls.getDeclaringClass();
            return declaringClass != null ? getClassId(declaringClass).createNestedClassId(Name.identifier(cls.getSimpleName())) : ClassId.topLevel(new FqName(cls.getName()));
        }
        FqName fqName = new FqName(cls.getName());
        return new ClassId(fqName.parent(), FqName.topLevel(fqName.shortName()), true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final String getDesc(Class cls) {
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                String replace = cls.getName().replace('.', '/');
                replace.getClass();
                return replace;
            }
            StringBuilder sb = new StringBuilder("L");
            String replace2 = cls.getName().replace('.', '/');
            replace2.getClass();
            sb.append(replace2);
            sb.append(';');
            return sb.toString();
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return "D";
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    return "I";
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    return "B";
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    return "C";
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    return "J";
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    return "V";
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    return "Z";
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    return "F";
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    return "S";
                }
                break;
        }
        Gson$$ExternalSyntheticBUOutline0.m("Unsupported primitive type: ", cls);
        return null;
    }

    public static final List getParameterizedTypeArguments(Type type) {
        type.getClass();
        if (!(type instanceof ParameterizedType)) {
            return EmptyList.INSTANCE;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return SequencesKt.toList(new FlatteningSequence(SequencesKt.generateSequence(type, ReflectJavaClass$innerClassNames$1.INSTANCE$1), ReflectJavaClass$innerClassNames$1.INSTANCE$2, SequencesKt___SequencesKt$flatMap$2.INSTANCE));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        actualTypeArguments.getClass();
        return ArraysKt___ArraysKt.toList(actualTypeArguments);
    }

    public static final ClassLoader getSafeClassLoader(Class cls) {
        cls.getClass();
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        systemClassLoader.getClass();
        return systemClassLoader;
    }
}
