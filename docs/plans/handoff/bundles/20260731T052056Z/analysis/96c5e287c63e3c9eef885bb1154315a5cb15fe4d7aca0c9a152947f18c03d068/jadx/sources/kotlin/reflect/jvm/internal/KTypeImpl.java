package kotlin.reflect.jvm.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Array;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KTypeImpl implements KType {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final ReflectProperties$LazySoftVal arguments$delegate;
    public final ReflectProperties$LazySoftVal classifier$delegate;
    public final ReflectProperties$LazySoftVal computeJavaType;
    public final KotlinType type;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KTypeImpl.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KTypeImpl.class), "arguments", "getArguments()Ljava/util/List;"))};
    }

    public KTypeImpl(KotlinType kotlinType, Function0 function0) {
        kotlinType.getClass();
        this.type = kotlinType;
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = function0 instanceof ReflectProperties$LazySoftVal ? (ReflectProperties$LazySoftVal) function0 : null;
        this.computeJavaType = reflectProperties$LazySoftVal == null ? function0 != null ? KPropertyImplKt.lazySoft(null, function0) : null : reflectProperties$LazySoftVal;
        int i = 0;
        this.classifier$delegate = KPropertyImplKt.lazySoft(null, new KTypeImpl$classifier$2(this, i));
        this.arguments$delegate = KPropertyImplKt.lazySoft(null, new KTypeImpl$arguments$2(i, this, function0));
    }

    public final KClassifier convert(KotlinType kotlinType) {
        KotlinType type;
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
            Class javaClass = UtilKt.toJavaClass((ModuleAwareClassDescriptor) declarationDescriptor);
            if (javaClass != null) {
                if (!javaClass.isArray()) {
                    if (TypeUtils.isNullableType(kotlinType)) {
                        return new KClassImpl(javaClass);
                    }
                    Class cls = (Class) ReflectClassUtilKt.WRAPPER_TO_PRIMITIVE.get(javaClass);
                    if (cls != null) {
                        javaClass = cls;
                    }
                    return new KClassImpl(javaClass);
                }
                TypeProjectionBase typeProjectionBase = (TypeProjectionBase) CollectionsKt.singleOrNull(kotlinType.getArguments());
                if (typeProjectionBase == null || (type = typeProjectionBase.getType()) == null) {
                    return new KClassImpl(javaClass);
                }
                KClassifier convert = convert(type);
                if (convert != null) {
                    return new KClassImpl(Array.newInstance((Class<?>) UnsignedKt.getJavaClass(UStringsKt.getJvmErasure(convert)), 0).getClass());
                }
                Gson$$ExternalSyntheticBUOutline0.m$6("Cannot determine classifier for array element type: ", this);
                return null;
            }
        } else {
            if (declarationDescriptor instanceof TypeParameterDescriptor) {
                return new KTypeParameterImpl(null, (TypeParameterDescriptor) declarationDescriptor);
            }
            if (declarationDescriptor instanceof DeserializedTypeAliasDescriptor) {
                throw new NotImplementedError("An operation is not implemented: Type alias classifiers are not yet supported");
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KTypeImpl)) {
            return false;
        }
        KTypeImpl kTypeImpl = (KTypeImpl) obj;
        return Intrinsics.areEqual(this.type, kTypeImpl.type) && Intrinsics.areEqual(getClassifier(), kTypeImpl.getClassifier()) && getArguments().equals(kTypeImpl.getArguments());
    }

    @Override // kotlin.reflect.KType
    public final List getArguments() {
        KProperty kProperty = $$delegatedProperties[1];
        Object invoke = this.arguments$delegate.invoke();
        invoke.getClass();
        return (List) invoke;
    }

    @Override // kotlin.reflect.KType
    public final KClassifier getClassifier() {
        KProperty kProperty = $$delegatedProperties[0];
        return (KClassifier) this.classifier$delegate.invoke();
    }

    public final int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        KClassifier classifier = getClassifier();
        return getArguments().hashCode() + ((hashCode + (classifier != null ? classifier.hashCode() : 0)) * 31);
    }

    @Override // kotlin.reflect.KType
    public final boolean isMarkedNullable() {
        return this.type.isMarkedNullable();
    }

    public final String toString() {
        DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
        KotlinType kotlinType = this.type;
        kotlinType.getClass();
        return ReflectionObjectRenderer.renderer.renderType(kotlinType);
    }
}
