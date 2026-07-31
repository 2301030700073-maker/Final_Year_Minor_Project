package kotlin.reflect.jvm.internal;

import androidx.collection.internal.Lock;
import java.lang.reflect.Method;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KPropertyImplKt {
    public static final Lock NULL_VALUE = new Lock(27);

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.calls.Caller computeCallerForAccessor(kotlin.reflect.jvm.internal.KPropertyImpl.Accessor r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImplKt.computeCallerForAccessor(kotlin.reflect.jvm.internal.KPropertyImpl$Accessor, boolean):kotlin.reflect.jvm.internal.calls.Caller");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0037, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.isMovedFromInterfaceCompanion(((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor) r0).proto) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0029, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.isKindOf(r1, kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.ANNOTATION_CLASS) == false) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.calls.CallerImpl computeCallerForAccessor$computeFieldCaller(kotlin.reflect.jvm.internal.KPropertyImpl.Accessor r4, boolean r5, final java.lang.reflect.Field r6) {
        /*
            kotlin.reflect.jvm.internal.KPropertyImpl r0 = r4.getProperty()
            kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r0 = r0.getDescriptor()
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r1 = r0.getContainingDeclaration()
            r1.getClass()
            boolean r2 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.isCompanionObject(r1)
            r3 = 1
            if (r2 != 0) goto L17
            goto L3a
        L17:
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r1 = r1.getContainingDeclaration()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r2 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.INTERFACE
            boolean r2 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.isKindOf(r1, r2)
            if (r2 != 0) goto L2b
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r2 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.ANNOTATION_CLASS
            boolean r1 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.isKindOf(r1, r2)
            if (r1 == 0) goto L44
        L2b:
            boolean r1 = r0 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor
            if (r1 == 0) goto L3a
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor r0 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor) r0
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r0 = r0.proto
            boolean r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.isMovedFromInterfaceCompanion(r0)
            if (r0 == 0) goto L3a
            goto L44
        L3a:
            int r0 = r6.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
            if (r0 != 0) goto L82
        L44:
            if (r5 == 0) goto L60
            boolean r5 = r4.isBound()
            if (r5 == 0) goto L5a
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$BoundInstance r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$BoundInstance
            kotlin.reflect.jvm.internal.KPropertyImpl r4 = r4.getProperty()
            java.lang.Object r4 = r4.getBoundReceiver$1()
            r5.<init>(r6, r4)
            return r5
        L5a:
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static r4 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static
            r4.<init>(r6, r3, r3)
            return r4
        L60:
            boolean r5 = r4.isBound()
            if (r5 == 0) goto L78
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$BoundInstance r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$BoundInstance
            boolean r0 = computeCallerForAccessor$isNotNullProperty(r4)
            kotlin.reflect.jvm.internal.KPropertyImpl r4 = r4.getProperty()
            java.lang.Object r4 = r4.getBoundReceiver$1()
            r5.<init>(r6, r0, r4)
            return r5
        L78:
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static
            boolean r4 = computeCallerForAccessor$isNotNullProperty(r4)
            r5.<init>(r6, r4, r3)
            return r5
        L82:
            kotlin.reflect.jvm.internal.KPropertyImpl r0 = r4.getProperty()
            kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r0 = r0.getDescriptor()
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r0 = r0.getAnnotations()
            kotlin.reflect.jvm.internal.impl.name.FqName r1 = kotlin.reflect.jvm.internal.UtilKt.JVM_STATIC
            boolean r0 = r0.hasAnnotation(r1)
            r1 = 0
            if (r0 == 0) goto Lc6
            r0 = 2
            if (r5 == 0) goto Lac
            boolean r4 = r4.isBound()
            if (r4 == 0) goto La6
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$BoundJvmStaticInObject r4 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$BoundJvmStaticInObject
            r4.<init>(r6, r1)
            return r4
        La6:
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static r4 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static
            r4.<init>(r6, r3, r0)
            return r4
        Lac:
            boolean r5 = r4.isBound()
            if (r5 == 0) goto Lbc
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$BoundJvmStaticInObject r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$BoundJvmStaticInObject
            boolean r4 = computeCallerForAccessor$isNotNullProperty(r4)
            r5.<init>(r6, r4, r1)
            return r5
        Lbc:
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static
            boolean r4 = computeCallerForAccessor$isNotNullProperty(r4)
            r5.<init>(r6, r4, r3)
            return r5
        Lc6:
            if (r5 == 0) goto Lce
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static r4 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldGetter$Static
            r4.<init>(r6, r1, r1)
            return r4
        Lce:
            kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static r5 = new kotlin.reflect.jvm.internal.calls.CallerImpl$FieldSetter$Static
            boolean r4 = computeCallerForAccessor$isNotNullProperty(r4)
            r5.<init>(r6, r4, r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImplKt.computeCallerForAccessor$computeFieldCaller(kotlin.reflect.jvm.internal.KPropertyImpl$Accessor, boolean, java.lang.reflect.Field):kotlin.reflect.jvm.internal.calls.CallerImpl");
    }

    public static final boolean computeCallerForAccessor$isNotNullProperty(KPropertyImpl.Accessor accessor) {
        return !TypeUtils.isNullableType(accessor.getProperty().getDescriptor().getType());
    }

    public static final String getSignature(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        parameterTypes.getClass();
        sb.append(ArraysKt___ArraysKt.joinToString$default(parameterTypes, "", "(", ")", CachesKt$K_CLASS_CACHE$1.INSTANCE$8, 24));
        Class<?> returnType = method.getReturnType();
        returnType.getClass();
        sb.append(ReflectClassUtilKt.getDesc(returnType));
        return sb.toString();
    }

    public static ReflectProperties$LazySoftVal lazySoft(CallableMemberDescriptor callableMemberDescriptor, Function0 function0) {
        if (function0 != null) {
            return new ReflectProperties$LazySoftVal(callableMemberDescriptor, function0);
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties", "lazySoft"));
    }

    public abstract String asString();
}
