package kotlin.reflect.jvm.internal;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KDeclarationContainerImpl implements ClassBasedDeclarationContainer {
    public static final Regex LOCAL_PROPERTY_SIGNATURE = new Regex("<v#(\\d+)>");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Data {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final ReflectProperties$LazySoftVal moduleData$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};
        }

        public Data(KDeclarationContainerImpl kDeclarationContainerImpl) {
            this.moduleData$delegate = KPropertyImplKt.lazySoft(null, new LayoutNode$_foldedChildren$1(22, kDeclarationContainerImpl));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MemberBelonginess {
        private static final /* synthetic */ MemberBelonginess[] $VALUES;
        public static final MemberBelonginess DECLARED;
        public static final MemberBelonginess INHERITED;

        static {
            MemberBelonginess memberBelonginess = new MemberBelonginess("DECLARED", 0);
            DECLARED = memberBelonginess;
            MemberBelonginess memberBelonginess2 = new MemberBelonginess("INHERITED", 1);
            INHERITED = memberBelonginess2;
            $VALUES = new MemberBelonginess[]{memberBelonginess, memberBelonginess2};
        }

        public static MemberBelonginess valueOf(String str) {
            return (MemberBelonginess) Enum.valueOf(MemberBelonginess.class, str);
        }

        public static MemberBelonginess[] values() {
            return (MemberBelonginess[]) $VALUES.clone();
        }
    }

    public static Method lookupMethod(Class cls, String str, Class[] clsArr, Class cls2, boolean z) {
        Method lookupMethod;
        if (z) {
            clsArr[0] = cls;
        }
        Method tryGetMethod = tryGetMethod(cls, str, clsArr, cls2);
        if (tryGetMethod != null) {
            return tryGetMethod;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && (lookupMethod = lookupMethod(superclass, str, clsArr, cls2, z)) != null) {
            return lookupMethod;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        interfaces.getClass();
        int length = interfaces.length;
        int i = 0;
        while (true) {
            Class<?> cls3 = null;
            if (i >= length) {
                return null;
            }
            Class<?> cls4 = interfaces[i];
            cls4.getClass();
            Method lookupMethod2 = lookupMethod(cls4, str, clsArr, cls2, z);
            if (lookupMethod2 != null) {
                return lookupMethod2;
            }
            if (z) {
                try {
                    cls3 = Class.forName(cls4.getName().concat("$DefaultImpls"), false, ReflectClassUtilKt.getSafeClassLoader(cls4));
                } catch (ClassNotFoundException unused) {
                }
                if (cls3 != null) {
                    clsArr[0] = cls4;
                    Method tryGetMethod2 = tryGetMethod(cls3, str, clsArr, cls2);
                    if (tryGetMethod2 != null) {
                        return tryGetMethod2;
                    }
                } else {
                    continue;
                }
            }
            i++;
        }
    }

    public static Method tryGetMethod(Class cls, String str, Class[] clsArr, Class cls2) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            if (Intrinsics.areEqual(declaredMethod.getReturnType(), cls2)) {
                return declaredMethod;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            declaredMethods.getClass();
            for (Method method : declaredMethods) {
                if (Intrinsics.areEqual(method.getName(), str) && Intrinsics.areEqual(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final void addParametersAndMasks(ArrayList arrayList, String str, boolean z) {
        ArrayList loadParameterTypes = loadParameterTypes(str);
        arrayList.addAll(loadParameterTypes);
        int size = (loadParameterTypes.size() + 31) / 32;
        for (int i = 0; i < size; i++) {
            Class cls = Integer.TYPE;
            cls.getClass();
            arrayList.add(cls);
        }
        if (!z) {
            arrayList.add(Object.class);
        } else {
            arrayList.remove(DefaultConstructorMarker.class);
            arrayList.add(DefaultConstructorMarker.class);
        }
    }

    public final Method findMethodBySignature(String str, String str2) {
        Method lookupMethod;
        str.getClass();
        str2.getClass();
        if (str.equals("<init>")) {
            return null;
        }
        Class[] clsArr = (Class[]) loadParameterTypes(str2).toArray(new Class[0]);
        Class parseType = parseType(StringsKt.indexOf$default(str2, ')', 0, 6) + 1, str2.length(), str2);
        Method lookupMethod2 = lookupMethod(getMethodOwner(), str, clsArr, parseType, false);
        if (lookupMethod2 != null) {
            return lookupMethod2;
        }
        if (!getMethodOwner().isInterface() || (lookupMethod = lookupMethod(Object.class, str, clsArr, parseType, false)) == null) {
            return null;
        }
        return lookupMethod;
    }

    public abstract Collection getConstructorDescriptors();

    public abstract Collection getFunctions(Name name);

    public abstract PropertyDescriptor getLocalProperty(int i);

    /* JADX WARN: Removed duplicated region for block: B:17:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x001d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List getMembers(kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope r8, kotlin.reflect.jvm.internal.KDeclarationContainerImpl.MemberBelonginess r9) {
        /*
            r7 = this;
            r8.getClass()
            r9.getClass()
            kotlin.reflect.jvm.internal.KDeclarationContainerImpl$getMembers$visitor$1 r0 = new kotlin.reflect.jvm.internal.KDeclarationContainerImpl$getMembers$visitor$1
            r1 = 2
            r0.<init>(r1, r7)
            r7 = 3
            r1 = 0
            java.util.Collection r7 = coil3.util.UtilsKt.getContributedDescriptors$default(r8, r1, r7)
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r7 = r7.iterator()
        L1d:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L64
            java.lang.Object r2 = r7.next()
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor) r2
            boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
            if (r3 == 0) goto L5d
            r3 = r2
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r3
            kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1 r4 = r3.getVisibility()
            kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1 r5 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.INVISIBLE_FAKE
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L5d
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor$Kind r3 = r3.getKind()
            r3.getClass()
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor$Kind r4 = kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor.Kind.FAKE_OVERRIDE
            r5 = 1
            r6 = 0
            if (r3 == r4) goto L4b
            r3 = r5
            goto L4c
        L4b:
            r3 = r6
        L4c:
            kotlin.reflect.jvm.internal.KDeclarationContainerImpl$MemberBelonginess r4 = kotlin.reflect.jvm.internal.KDeclarationContainerImpl.MemberBelonginess.DECLARED
            if (r9 != r4) goto L51
            goto L52
        L51:
            r5 = r6
        L52:
            if (r3 != r5) goto L5d
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            java.lang.Object r2 = r2.accept(r0, r3)
            kotlin.reflect.jvm.internal.KCallableImpl r2 = (kotlin.reflect.jvm.internal.KCallableImpl) r2
            goto L5e
        L5d:
            r2 = r1
        L5e:
            if (r2 == 0) goto L1d
            r8.add(r2)
            goto L1d
        L64:
            java.util.List r7 = kotlin.collections.CollectionsKt.toList(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KDeclarationContainerImpl.getMembers(kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.KDeclarationContainerImpl$MemberBelonginess):java.util.List");
    }

    public Class getMethodOwner() {
        Class jClass = getJClass();
        List list = ReflectClassUtilKt.PRIMITIVE_CLASSES;
        jClass.getClass();
        Class cls = (Class) ReflectClassUtilKt.PRIMITIVE_TO_WRAPPER.get(jClass);
        return cls == null ? getJClass() : cls;
    }

    public abstract Collection getProperties(Name name);

    public final ArrayList loadParameterTypes(String str) {
        int indexOf$default;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (str.charAt(i) != ')') {
            int i2 = i;
            while (str.charAt(i2) == '[') {
                i2++;
            }
            char charAt = str.charAt(i2);
            if (StringsKt.contains$default("VZCBSIFJD", charAt)) {
                indexOf$default = i2 + 1;
            } else {
                if (charAt != 'L') {
                    throw new CoroutinesInternalError("Unknown type prefix in the method signature: ".concat(str));
                }
                indexOf$default = StringsKt.indexOf$default(str, ';', i, 4) + 1;
            }
            arrayList.add(parseType(i, indexOf$default, str));
            i = indexOf$default;
        }
        return arrayList;
    }

    public final Class parseType(int i, int i2, String str) {
        char charAt = str.charAt(i);
        if (charAt == 'L') {
            ClassLoader safeClassLoader = ReflectClassUtilKt.getSafeClassLoader(getJClass());
            String replace = str.substring(i + 1, i2 - 1).replace('/', '.');
            replace.getClass();
            Class<?> loadClass = safeClassLoader.loadClass(replace);
            loadClass.getClass();
            return loadClass;
        }
        if (charAt == '[') {
            Class parseType = parseType(i + 1, i2, str);
            FqName fqName = UtilKt.JVM_STATIC;
            parseType.getClass();
            return Array.newInstance((Class<?>) parseType, 0).getClass();
        }
        if (charAt == 'V') {
            Class cls = Void.TYPE;
            cls.getClass();
            return cls;
        }
        if (charAt == 'Z') {
            return Boolean.TYPE;
        }
        if (charAt == 'C') {
            return Character.TYPE;
        }
        if (charAt == 'B') {
            return Byte.TYPE;
        }
        if (charAt == 'S') {
            return Short.TYPE;
        }
        if (charAt == 'I') {
            return Integer.TYPE;
        }
        if (charAt == 'F') {
            return Float.TYPE;
        }
        if (charAt == 'J') {
            return Long.TYPE;
        }
        if (charAt == 'D') {
            return Double.TYPE;
        }
        throw new CoroutinesInternalError("Unknown type prefix in the method signature: ".concat(str));
    }
}
