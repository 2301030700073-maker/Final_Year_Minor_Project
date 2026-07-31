package kotlin.reflect.jvm.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.CloneableClassScope;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory$RuntimeSourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaConstructor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Method;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RuntimeTypeMapper {
    public static final ClassId JAVA_LANG_VOID = ClassId.topLevel(new FqName("java.lang.Void"));

    /* JADX WARN: Multi-variable type inference failed */
    public static JvmFunctionSignature$KotlinFunction mapJvmFunctionSignature(FunctionDescriptor functionDescriptor) {
        String jvmMethodNameIfSpecial = ResultKt.getJvmMethodNameIfSpecial(functionDescriptor);
        if (jvmMethodNameIfSpecial == null) {
            if (functionDescriptor instanceof PropertyGetterDescriptorImpl) {
                String asString = DescriptorUtilsKt.getPropertyIfAccessor(functionDescriptor).getName().asString();
                asString.getClass();
                jvmMethodNameIfSpecial = JvmAbi.getterName(asString);
            } else if (functionDescriptor instanceof PropertySetterDescriptorImpl) {
                String asString2 = DescriptorUtilsKt.getPropertyIfAccessor(functionDescriptor).getName().asString();
                asString2.getClass();
                jvmMethodNameIfSpecial = "set".concat(JvmAbi.startsWithIsPrefix(asString2) ? asString2.substring(2) : ResultKt.capitalizeAsciiOnly(asString2));
            } else {
                jvmMethodNameIfSpecial = ((DeclarationDescriptorImpl) functionDescriptor).getName().asString();
                jvmMethodNameIfSpecial.getClass();
            }
        }
        return new JvmFunctionSignature$KotlinFunction(new JvmMemberSignature$Method(jvmMethodNameIfSpecial, RegexKt.computeJvmDescriptor$default(functionDescriptor, 1)));
    }

    public static KPropertyImplKt mapPropertySignature(PropertyDescriptor propertyDescriptor) {
        propertyDescriptor.getClass();
        PropertyDescriptor original = ((PropertyDescriptor) DescriptorUtils.unwrapFakeOverride(propertyDescriptor)).getOriginal();
        original.getClass();
        if (original instanceof DeserializedPropertyDescriptor) {
            DeserializedPropertyDescriptor deserializedPropertyDescriptor = (DeserializedPropertyDescriptor) original;
            ProtoBuf$Property protoBuf$Property = deserializedPropertyDescriptor.proto;
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.propertySignature;
            generatedExtension.getClass();
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) UuidKt.getExtensionOrNull(protoBuf$Property, generatedExtension);
            if (jvmPropertySignature != null) {
                return new JvmPropertySignature$KotlinProperty(original, protoBuf$Property, jvmPropertySignature, deserializedPropertyDescriptor.nameResolver, deserializedPropertyDescriptor.typeTable);
            }
        } else if (original instanceof JavaPropertyDescriptor) {
            SourceElement source = ((JavaPropertyDescriptor) original).getSource();
            RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement = source instanceof RuntimeSourceElementFactory$RuntimeSourceElement ? (RuntimeSourceElementFactory$RuntimeSourceElement) source : null;
            ReflectJavaElement reflectJavaElement = runtimeSourceElementFactory$RuntimeSourceElement != null ? runtimeSourceElementFactory$RuntimeSourceElement.javaElement : null;
            if (reflectJavaElement instanceof ReflectJavaField) {
                return new JvmPropertySignature$JavaField(((ReflectJavaField) reflectJavaElement).member);
            }
            if (!(reflectJavaElement instanceof ReflectJavaMethod)) {
                Gson$$ExternalSyntheticBUOutline0.m("Incorrect resolution sequence for Java field ", original, " (source = ", reflectJavaElement);
                return null;
            }
            Method method = ((ReflectJavaMethod) reflectJavaElement).member;
            PropertySetterDescriptorImpl propertySetterDescriptorImpl = ((PropertyDescriptorImpl) original).setter;
            SourceElement source2 = propertySetterDescriptorImpl != null ? propertySetterDescriptorImpl.getSource() : null;
            RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement2 = source2 instanceof RuntimeSourceElementFactory$RuntimeSourceElement ? (RuntimeSourceElementFactory$RuntimeSourceElement) source2 : null;
            ReflectJavaElement reflectJavaElement2 = runtimeSourceElementFactory$RuntimeSourceElement2 != null ? runtimeSourceElementFactory$RuntimeSourceElement2.javaElement : null;
            ReflectJavaMethod reflectJavaMethod = reflectJavaElement2 instanceof ReflectJavaMethod ? (ReflectJavaMethod) reflectJavaElement2 : null;
            return new JvmPropertySignature$JavaMethodProperty(method, reflectJavaMethod != null ? reflectJavaMethod.member : null);
        }
        PropertyGetterDescriptorImpl getter = original.getGetter();
        getter.getClass();
        JvmFunctionSignature$KotlinFunction mapJvmFunctionSignature = mapJvmFunctionSignature(getter);
        PropertySetterDescriptorImpl setter = original.getSetter();
        return new JvmPropertySignature$MappedKotlinProperty(mapJvmFunctionSignature, setter != null ? mapJvmFunctionSignature(setter) : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static KPropertyImplKt mapSignature(FunctionDescriptor functionDescriptor) {
        functionDescriptor.getClass();
        FunctionDescriptor original = ((FunctionDescriptor) DescriptorUtils.unwrapFakeOverride(functionDescriptor)).getOriginal();
        original.getClass();
        if (original instanceof DeserializedCallableMemberDescriptor) {
            DeserializedCallableMemberDescriptor deserializedCallableMemberDescriptor = (DeserializedCallableMemberDescriptor) original;
            AbstractMessageLite proto = deserializedCallableMemberDescriptor.getProto();
            if (proto instanceof ProtoBuf$Function) {
                ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.EXTENSION_REGISTRY;
                JvmMemberSignature$Method jvmMethodSignature = JvmProtoBufUtil.getJvmMethodSignature((ProtoBuf$Function) proto, deserializedCallableMemberDescriptor.getNameResolver(), deserializedCallableMemberDescriptor.getTypeTable());
                if (jvmMethodSignature != null) {
                    return new JvmFunctionSignature$KotlinFunction(jvmMethodSignature);
                }
            }
            if (proto instanceof ProtoBuf$Constructor) {
                ExtensionRegistryLite extensionRegistryLite2 = JvmProtoBufUtil.EXTENSION_REGISTRY;
                JvmMemberSignature$Method jvmConstructorSignature = JvmProtoBufUtil.getJvmConstructorSignature((ProtoBuf$Constructor) proto, deserializedCallableMemberDescriptor.getNameResolver(), deserializedCallableMemberDescriptor.getTypeTable());
                if (jvmConstructorSignature != null) {
                    DeclarationDescriptor containingDeclaration = functionDescriptor.getContainingDeclaration();
                    containingDeclaration.getClass();
                    return InlineClassesUtilsKt.isInlineClass(containingDeclaration) ? new JvmFunctionSignature$KotlinFunction(jvmConstructorSignature) : new JvmFunctionSignature$KotlinConstructor(jvmConstructorSignature);
                }
            }
            return mapJvmFunctionSignature(original);
        }
        if (original instanceof JavaMethodDescriptor) {
            SourceElement source = ((JavaMethodDescriptor) original).getSource();
            RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement = source instanceof RuntimeSourceElementFactory$RuntimeSourceElement ? (RuntimeSourceElementFactory$RuntimeSourceElement) source : null;
            ReflectJavaElement reflectJavaElement = runtimeSourceElementFactory$RuntimeSourceElement != null ? runtimeSourceElementFactory$RuntimeSourceElement.javaElement : null;
            ReflectJavaMethod reflectJavaMethod = reflectJavaElement instanceof ReflectJavaMethod ? (ReflectJavaMethod) reflectJavaElement : null;
            if (reflectJavaMethod != null) {
                return new JvmFunctionSignature$JavaMethod(reflectJavaMethod.member);
            }
            Gson$$ExternalSyntheticBUOutline0.m$6("Incorrect resolution sequence for Java method ", original);
            return null;
        }
        if (original instanceof JavaClassConstructorDescriptor) {
            SourceElement source2 = ((JavaClassConstructorDescriptor) original).getSource();
            RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement2 = source2 instanceof RuntimeSourceElementFactory$RuntimeSourceElement ? (RuntimeSourceElementFactory$RuntimeSourceElement) source2 : null;
            ReflectJavaElement reflectJavaElement2 = runtimeSourceElementFactory$RuntimeSourceElement2 != null ? runtimeSourceElementFactory$RuntimeSourceElement2.javaElement : null;
            if (reflectJavaElement2 instanceof ReflectJavaConstructor) {
                return new JvmFunctionSignature$JavaConstructor(((ReflectJavaConstructor) reflectJavaElement2).member);
            }
            if (reflectJavaElement2 instanceof ReflectJavaClass) {
                Class cls = ((ReflectJavaClass) reflectJavaElement2).klass;
                if (cls.isAnnotation()) {
                    return new JvmFunctionSignature$FakeJavaAnnotationConstructor(cls);
                }
            }
            Gson$$ExternalSyntheticBUOutline0.m("Incorrect resolution sequence for Java constructor ", original, " (", reflectJavaElement2);
            return null;
        }
        DeclarationDescriptorImpl declarationDescriptorImpl = (DeclarationDescriptorImpl) original;
        if ((declarationDescriptorImpl.getName().equals(StandardNames.ENUM_VALUE_OF) && DescriptorFactory.isEnumSpecialMethod(original)) || ((declarationDescriptorImpl.getName().equals(StandardNames.ENUM_VALUES) && DescriptorFactory.isEnumSpecialMethod(original)) || (Intrinsics.areEqual(declarationDescriptorImpl.getName(), CloneableClassScope.CLONE_NAME) && original.getValueParameters().isEmpty()))) {
            return mapJvmFunctionSignature(original);
        }
        StringBuilder sb = new StringBuilder("Unknown origin of ");
        sb.append(original);
        Object obj = original.getClass();
        sb.append(" (");
        sb.append(obj);
        sb.append(')');
        throw new CoroutinesInternalError(sb.toString());
    }
}
