package kotlin.reflect.jvm.internal;

import androidx.recyclerview.widget.DiffUtil;
import coil3.util.UtilsKt;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KParameter$Kind;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KCallableImpl$_parameters$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KCallableImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KCallableImpl$_parameters$1(KCallableImpl kCallableImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = kCallableImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i;
        Type[] lowerBounds;
        int i2 = this.$r8$classId;
        Type type = null;
        final int i3 = 1;
        final int i4 = 0;
        KCallableImpl kCallableImpl = this.this$0;
        switch (i2) {
            case 0:
                final CallableMemberDescriptor descriptor = kCallableImpl.getDescriptor();
                ArrayList arrayList = new ArrayList();
                if (kCallableImpl.isBound()) {
                    i = 0;
                } else {
                    final ReceiverParameterDescriptorImpl instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(descriptor);
                    if (instanceReceiverParameter != null) {
                        arrayList.add(new KParameterImpl(kCallableImpl, 0, KParameter$Kind.INSTANCE, new Function0() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = i4;
                                return instanceReceiverParameter;
                            }
                        }));
                        i = 1;
                    } else {
                        i = 0;
                    }
                    final ReceiverParameterDescriptorImpl extensionReceiverParameter = descriptor.getExtensionReceiverParameter();
                    if (extensionReceiverParameter != null) {
                        arrayList.add(new KParameterImpl(kCallableImpl, i, KParameter$Kind.EXTENSION_RECEIVER, new Function0() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = i3;
                                return extensionReceiverParameter;
                            }
                        }));
                        i++;
                    }
                }
                int size = descriptor.getValueParameters().size();
                while (i4 < size) {
                    arrayList.add(new KParameterImpl(kCallableImpl, i, KParameter$Kind.VALUE, new Function0() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Object obj = CallableMemberDescriptor.this.getValueParameters().get(i4);
                            obj.getClass();
                            return (ParameterDescriptor) obj;
                        }
                    }));
                    i4++;
                    i++;
                }
                if (kCallableImpl.isAnnotationConstructor() && (descriptor instanceof JavaCallableMemberDescriptor) && arrayList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new DiffUtil.AnonymousClass1(15));
                }
                arrayList.trimToSize();
                return arrayList;
            case 1:
                int size2 = (kCallableImpl.isSuspend() ? 1 : 0) + kCallableImpl.getParameters().size();
                int size3 = (kCallableImpl.getParameters().size() + 31) / 32;
                Object[] objArr = new Object[size2 + size3 + 1];
                for (KParameterImpl kParameterImpl : kCallableImpl.getParameters()) {
                    ParameterDescriptor descriptor2 = kParameterImpl.getDescriptor();
                    int i5 = kParameterImpl.index;
                    ValueParameterDescriptorImpl valueParameterDescriptorImpl = descriptor2 instanceof ValueParameterDescriptorImpl ? (ValueParameterDescriptorImpl) descriptor2 : null;
                    if (valueParameterDescriptorImpl != null ? DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptorImpl) : false) {
                        KTypeImpl type2 = kParameterImpl.getType();
                        FqName fqName = UtilKt.JVM_STATIC;
                        KotlinType kotlinType = type2.type;
                        if (kotlinType == null || !InlineClassesUtilsKt.isInlineClassType(kotlinType)) {
                            KTypeImpl type3 = kParameterImpl.getType();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = type3.computeJavaType;
                            Type type4 = reflectProperties$LazySoftVal != null ? (Type) reflectProperties$LazySoftVal.invoke() : null;
                            if (type4 == null) {
                                type4 = reflectProperties$LazySoftVal != null ? (Type) reflectProperties$LazySoftVal.invoke() : null;
                                if (type4 == null) {
                                    type4 = UtilsKt.computeJavaType(type3, false);
                                }
                            }
                            objArr[i5] = UtilKt.defaultPrimitiveValue(type4);
                        }
                    }
                    ParameterDescriptor descriptor3 = kParameterImpl.getDescriptor();
                    if ((descriptor3 instanceof ValueParameterDescriptorImpl) && ((ValueParameterDescriptorImpl) descriptor3).varargElementType != null) {
                        Class javaClass = UnsignedKt.getJavaClass(UStringsKt.getJvmErasure(kParameterImpl.getType()));
                        if (!javaClass.isArray()) {
                            throw new CoroutinesInternalError("Cannot instantiate the default empty array of type " + javaClass.getSimpleName() + ", because it is not an array type");
                        }
                        Object newInstance = Array.newInstance(javaClass.getComponentType(), 0);
                        newInstance.getClass();
                        objArr[i5] = newInstance;
                    }
                }
                for (int i6 = 0; i6 < size3; i6++) {
                    objArr[size2 + i6] = 0;
                }
                return objArr;
            case 2:
                return UtilKt.computeAnnotations(kCallableImpl.getDescriptor());
            case 3:
                if (kCallableImpl.isSuspend()) {
                    Object lastOrNull = CollectionsKt.lastOrNull(kCallableImpl.getCaller().getParameterTypes());
                    ParameterizedType parameterizedType = lastOrNull instanceof ParameterizedType ? (ParameterizedType) lastOrNull : null;
                    if (Intrinsics.areEqual(parameterizedType != null ? parameterizedType.getRawType() : null, Continuation.class)) {
                        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                        actualTypeArguments.getClass();
                        Object single = ArraysKt___ArraysKt.single(actualTypeArguments);
                        WildcardType wildcardType = single instanceof WildcardType ? (WildcardType) single : null;
                        if (wildcardType != null && (lowerBounds = wildcardType.getLowerBounds()) != null) {
                            type = (Type) ArraysKt___ArraysKt.first(lowerBounds);
                        }
                    }
                }
                return type == null ? kCallableImpl.getCaller().getReturnType() : type;
            case 4:
                KotlinType returnType = kCallableImpl.getDescriptor().getReturnType();
                returnType.getClass();
                return new KTypeImpl(returnType, new KCallableImpl$_parameters$1(kCallableImpl, 3));
            default:
                List<TypeParameterDescriptor> typeParameters = kCallableImpl.getDescriptor().getTypeParameters();
                typeParameters.getClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(typeParameters, 10));
                for (TypeParameterDescriptor typeParameterDescriptor : typeParameters) {
                    typeParameterDescriptor.getClass();
                    arrayList2.add(new KTypeParameterImpl(kCallableImpl, typeParameterDescriptor));
                }
                return arrayList2;
        }
    }
}
