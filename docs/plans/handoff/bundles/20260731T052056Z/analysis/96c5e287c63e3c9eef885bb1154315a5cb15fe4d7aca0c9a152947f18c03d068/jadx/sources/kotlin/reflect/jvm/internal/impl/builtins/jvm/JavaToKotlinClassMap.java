package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.util.UtilsKt;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMapping;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaToKotlinClassMap {
    public static final ClassId FUNCTION_N_CLASS_ID;
    public static final FqName FUNCTION_N_FQ_NAME;
    public static final ClassId K_FUNCTION_CLASS_ID;
    public static final String NUMBERED_FUNCTION_PREFIX;
    public static final String NUMBERED_K_FUNCTION_PREFIX;
    public static final String NUMBERED_K_SUSPEND_FUNCTION_PREFIX;
    public static final String NUMBERED_SUSPEND_FUNCTION_PREFIX;
    public static final HashMap javaToKotlin;
    public static final HashMap kotlinToJava;
    public static final List mutabilityMappings;
    public static final HashMap mutableToReadOnly;
    public static final HashMap mutableToReadOnlyClassId;
    public static final HashMap readOnlyToMutable;
    public static final HashMap readOnlyToMutableClassId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlatformMutabilityMapping {
        public final ClassId javaClass;
        public final ClassId kotlinMutable;
        public final ClassId kotlinReadOnly;

        public PlatformMutabilityMapping(ClassId classId, ClassId classId2, ClassId classId3) {
            this.javaClass = classId;
            this.kotlinReadOnly = classId2;
            this.kotlinMutable = classId3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlatformMutabilityMapping)) {
                return false;
            }
            PlatformMutabilityMapping platformMutabilityMapping = (PlatformMutabilityMapping) obj;
            return this.javaClass.equals(platformMutabilityMapping.javaClass) && this.kotlinReadOnly.equals(platformMutabilityMapping.kotlinReadOnly) && this.kotlinMutable.equals(platformMutabilityMapping.kotlinMutable);
        }

        public final int hashCode() {
            return this.kotlinMutable.hashCode() + ((this.kotlinReadOnly.hashCode() + (this.javaClass.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.javaClass + ", kotlinReadOnly=" + this.kotlinReadOnly + ", kotlinMutable=" + this.kotlinMutable + ')';
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        FunctionClassKind functionClassKind = FunctionClassKind.Function;
        sb.append(functionClassKind.getPackageFqName().fqName.toString());
        sb.append('.');
        sb.append(functionClassKind.getClassNamePrefix());
        NUMBERED_FUNCTION_PREFIX = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        FunctionClassKind functionClassKind2 = FunctionClassKind.KFunction;
        sb2.append(functionClassKind2.getPackageFqName().fqName.toString());
        sb2.append('.');
        sb2.append(functionClassKind2.getClassNamePrefix());
        NUMBERED_K_FUNCTION_PREFIX = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        FunctionClassKind functionClassKind3 = FunctionClassKind.SuspendFunction;
        sb3.append(functionClassKind3.getPackageFqName().fqName.toString());
        sb3.append('.');
        sb3.append(functionClassKind3.getClassNamePrefix());
        NUMBERED_SUSPEND_FUNCTION_PREFIX = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        FunctionClassKind functionClassKind4 = FunctionClassKind.KSuspendFunction;
        sb4.append(functionClassKind4.getPackageFqName().fqName.toString());
        sb4.append('.');
        sb4.append(functionClassKind4.getClassNamePrefix());
        NUMBERED_K_SUSPEND_FUNCTION_PREFIX = sb4.toString();
        ClassId classId = ClassId.topLevel(new FqName("kotlin.jvm.functions.FunctionN"));
        FUNCTION_N_CLASS_ID = classId;
        FUNCTION_N_FQ_NAME = classId.asSingleFqName();
        K_FUNCTION_CLASS_ID = StandardClassIds.KFunction;
        classId(Class.class);
        javaToKotlin = new HashMap();
        kotlinToJava = new HashMap();
        mutableToReadOnly = new HashMap();
        readOnlyToMutable = new HashMap();
        mutableToReadOnlyClassId = new HashMap();
        readOnlyToMutableClassId = new HashMap();
        ClassId classId2 = ClassId.topLevel(StandardNames.FqNames.iterable);
        FqName fqName = StandardNames.FqNames.mutableIterable;
        FqName packageFqName = classId2.getPackageFqName();
        FqName packageFqName2 = classId2.getPackageFqName();
        packageFqName2.getClass();
        FqName tail = OperationKt.tail(fqName, packageFqName2);
        PlatformMutabilityMapping platformMutabilityMapping = new PlatformMutabilityMapping(classId(Iterable.class), classId2, new ClassId(packageFqName, tail, false));
        ClassId classId3 = ClassId.topLevel(StandardNames.FqNames.iterator);
        FqName fqName2 = StandardNames.FqNames.mutableIterator;
        FqName packageFqName3 = classId3.getPackageFqName();
        FqName packageFqName4 = classId3.getPackageFqName();
        packageFqName4.getClass();
        PlatformMutabilityMapping platformMutabilityMapping2 = new PlatformMutabilityMapping(classId(Iterator.class), classId3, new ClassId(packageFqName3, OperationKt.tail(fqName2, packageFqName4), false));
        ClassId classId4 = ClassId.topLevel(StandardNames.FqNames.collection);
        FqName fqName3 = StandardNames.FqNames.mutableCollection;
        FqName packageFqName5 = classId4.getPackageFqName();
        FqName packageFqName6 = classId4.getPackageFqName();
        packageFqName6.getClass();
        PlatformMutabilityMapping platformMutabilityMapping3 = new PlatformMutabilityMapping(classId(Collection.class), classId4, new ClassId(packageFqName5, OperationKt.tail(fqName3, packageFqName6), false));
        ClassId classId5 = ClassId.topLevel(StandardNames.FqNames.list);
        FqName fqName4 = StandardNames.FqNames.mutableList;
        FqName packageFqName7 = classId5.getPackageFqName();
        FqName packageFqName8 = classId5.getPackageFqName();
        packageFqName8.getClass();
        PlatformMutabilityMapping platformMutabilityMapping4 = new PlatformMutabilityMapping(classId(List.class), classId5, new ClassId(packageFqName7, OperationKt.tail(fqName4, packageFqName8), false));
        ClassId classId6 = ClassId.topLevel(StandardNames.FqNames.set);
        FqName fqName5 = StandardNames.FqNames.mutableSet;
        FqName packageFqName9 = classId6.getPackageFqName();
        FqName packageFqName10 = classId6.getPackageFqName();
        packageFqName10.getClass();
        PlatformMutabilityMapping platformMutabilityMapping5 = new PlatformMutabilityMapping(classId(Set.class), classId6, new ClassId(packageFqName9, OperationKt.tail(fqName5, packageFqName10), false));
        ClassId classId7 = ClassId.topLevel(StandardNames.FqNames.listIterator);
        FqName fqName6 = StandardNames.FqNames.mutableListIterator;
        FqName packageFqName11 = classId7.getPackageFqName();
        FqName packageFqName12 = classId7.getPackageFqName();
        packageFqName12.getClass();
        PlatformMutabilityMapping platformMutabilityMapping6 = new PlatformMutabilityMapping(classId(ListIterator.class), classId7, new ClassId(packageFqName11, OperationKt.tail(fqName6, packageFqName12), false));
        FqName fqName7 = StandardNames.FqNames.map;
        ClassId classId8 = ClassId.topLevel(fqName7);
        FqName fqName8 = StandardNames.FqNames.mutableMap;
        FqName packageFqName13 = classId8.getPackageFqName();
        FqName packageFqName14 = classId8.getPackageFqName();
        packageFqName14.getClass();
        PlatformMutabilityMapping platformMutabilityMapping7 = new PlatformMutabilityMapping(classId(Map.class), classId8, new ClassId(packageFqName13, OperationKt.tail(fqName8, packageFqName14), false));
        ClassId createNestedClassId = ClassId.topLevel(fqName7).createNestedClassId(StandardNames.FqNames.mapEntry.shortName());
        FqName fqName9 = StandardNames.FqNames.mutableMapEntry;
        FqName packageFqName15 = createNestedClassId.getPackageFqName();
        FqName packageFqName16 = createNestedClassId.getPackageFqName();
        packageFqName16.getClass();
        List<PlatformMutabilityMapping> listOf = Room.listOf((Object[]) new PlatformMutabilityMapping[]{platformMutabilityMapping, platformMutabilityMapping2, platformMutabilityMapping3, platformMutabilityMapping4, platformMutabilityMapping5, platformMutabilityMapping6, platformMutabilityMapping7, new PlatformMutabilityMapping(classId(Map.Entry.class), createNestedClassId, new ClassId(packageFqName15, OperationKt.tail(fqName9, packageFqName16), false))});
        mutabilityMappings = listOf;
        addTopLevel(Object.class, StandardNames.FqNames.any);
        addTopLevel(String.class, StandardNames.FqNames.string);
        addTopLevel(CharSequence.class, StandardNames.FqNames.charSequence);
        add(classId(Throwable.class), ClassId.topLevel(StandardNames.FqNames.throwable));
        addTopLevel(Cloneable.class, StandardNames.FqNames.cloneable);
        addTopLevel(Number.class, StandardNames.FqNames.number);
        add(classId(Comparable.class), ClassId.topLevel(StandardNames.FqNames.comparable));
        addTopLevel(Enum.class, StandardNames.FqNames._enum);
        add(classId(Annotation.class), ClassId.topLevel(StandardNames.FqNames.annotation));
        for (PlatformMutabilityMapping platformMutabilityMapping8 : listOf) {
            ClassId classId9 = platformMutabilityMapping8.javaClass;
            ClassId classId10 = platformMutabilityMapping8.kotlinReadOnly;
            ClassId classId11 = platformMutabilityMapping8.kotlinMutable;
            add(classId9, classId10);
            addKotlinToJava(classId11.asSingleFqName(), classId9);
            mutableToReadOnlyClassId.put(classId11, classId10);
            readOnlyToMutableClassId.put(classId10, classId11);
            FqName asSingleFqName = classId10.asSingleFqName();
            FqName asSingleFqName2 = classId11.asSingleFqName();
            HashMap hashMap = mutableToReadOnly;
            FqNameUnsafe unsafe = classId11.asSingleFqName().toUnsafe();
            unsafe.getClass();
            hashMap.put(unsafe, asSingleFqName);
            HashMap hashMap2 = readOnlyToMutable;
            FqNameUnsafe unsafe2 = asSingleFqName.toUnsafe();
            unsafe2.getClass();
            hashMap2.put(unsafe2, asSingleFqName2);
        }
        for (JvmPrimitiveType jvmPrimitiveType : JvmPrimitiveType.values()) {
            ClassId classId12 = ClassId.topLevel(jvmPrimitiveType.getWrapperFqName());
            PrimitiveType primitiveType = jvmPrimitiveType.getPrimitiveType();
            primitiveType.getClass();
            add(classId12, ClassId.topLevel(StandardNames.BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.getTypeName())));
        }
        for (ClassId classId13 : CompanionObjectMapping.classIds) {
            add(ClassId.topLevel(new FqName("kotlin.jvm.internal." + classId13.getShortClassName().asString() + "CompanionObject")), classId13.createNestedClassId(SpecialNames.DEFAULT_NAME_FOR_COMPANION_OBJECT));
        }
        for (int i = 0; i < 23; i++) {
            add(ClassId.topLevel(new FqName(Animation.CC.m(i, "kotlin.jvm.functions.Function"))), new ClassId(StandardNames.BUILT_INS_PACKAGE_FQ_NAME, Name.identifier("Function" + i)));
            addKotlinToJava(new FqName(NUMBERED_K_FUNCTION_PREFIX + i), K_FUNCTION_CLASS_ID);
        }
        for (int i2 = 0; i2 < 22; i2++) {
            FunctionClassKind functionClassKind5 = FunctionClassKind.KSuspendFunction;
            addKotlinToJava(new FqName(Animation.CC.m(i2, functionClassKind5.getPackageFqName().fqName.toString() + '.' + functionClassKind5.getClassNamePrefix())), K_FUNCTION_CLASS_ID);
        }
        addKotlinToJava(StandardNames.FqNames.nothing.toSafe(), classId(Void.class));
    }

    public static void add(ClassId classId, ClassId classId2) {
        FqNameUnsafe unsafe = classId.asSingleFqName().toUnsafe();
        unsafe.getClass();
        javaToKotlin.put(unsafe, classId2);
        addKotlinToJava(classId2.asSingleFqName(), classId);
    }

    public static void addKotlinToJava(FqName fqName, ClassId classId) {
        FqNameUnsafe unsafe = fqName.toUnsafe();
        unsafe.getClass();
        kotlinToJava.put(unsafe, classId);
    }

    public static void addTopLevel(Class cls, FqNameUnsafe fqNameUnsafe) {
        add(classId(cls), ClassId.topLevel(fqNameUnsafe.toSafe()));
    }

    public static ClassId classId(Class cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        return declaringClass == null ? ClassId.topLevel(new FqName(cls.getCanonicalName())) : classId(declaringClass).createNestedClassId(Name.identifier(cls.getSimpleName()));
    }

    public static boolean isKotlinFunctionWithBigArity(FqNameUnsafe fqNameUnsafe, String str) {
        Integer intOrNull;
        String str2 = fqNameUnsafe.fqName;
        if (str2 != null) {
            String substringAfter = StringsKt.substringAfter(str2, str, "");
            return substringAfter.length() > 0 && (substringAfter.length() <= 0 || !UtilsKt.equals(substringAfter.charAt(0), '0', false)) && (intOrNull = StringsKt__StringsJVMKt.toIntOrNull(substringAfter)) != null && intOrNull.intValue() >= 23;
        }
        FqNameUnsafe.$$$reportNull$$$0(4);
        throw null;
    }

    public static ClassId mapJavaToKotlin(FqName fqName) {
        return (ClassId) javaToKotlin.get(fqName.toUnsafe());
    }

    public static ClassId mapKotlinToJava(FqNameUnsafe fqNameUnsafe) {
        return (isKotlinFunctionWithBigArity(fqNameUnsafe, NUMBERED_FUNCTION_PREFIX) || isKotlinFunctionWithBigArity(fqNameUnsafe, NUMBERED_SUSPEND_FUNCTION_PREFIX)) ? FUNCTION_N_CLASS_ID : (isKotlinFunctionWithBigArity(fqNameUnsafe, NUMBERED_K_FUNCTION_PREFIX) || isKotlinFunctionWithBigArity(fqNameUnsafe, NUMBERED_K_SUSPEND_FUNCTION_PREFIX)) ? K_FUNCTION_CLASS_ID : (ClassId) kotlinToJava.get(fqNameUnsafe);
    }
}
