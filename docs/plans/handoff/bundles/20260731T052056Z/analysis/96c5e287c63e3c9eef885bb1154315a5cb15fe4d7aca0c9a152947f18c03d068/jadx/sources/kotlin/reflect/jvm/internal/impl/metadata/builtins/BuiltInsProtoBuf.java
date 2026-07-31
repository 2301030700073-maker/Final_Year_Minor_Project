package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BuiltInsProtoBuf {
    public static final GeneratedMessageLite.GeneratedExtension classAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension compileTimeValue;
    public static final GeneratedMessageLite.GeneratedExtension constructorAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension enumEntryAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension functionAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension packageFqName = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.defaultInstance, 0, null, 151, WireFormat$FieldType.INT32, Integer.class);
    public static final GeneratedMessageLite.GeneratedExtension parameterAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension propertyAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension propertyGetterAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension propertySetterAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension typeAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension typeParameterAnnotation;

    static {
        ProtoBuf$Class protoBuf$Class = ProtoBuf$Class.defaultInstance;
        ProtoBuf$Annotation protoBuf$Annotation = ProtoBuf$Annotation.defaultInstance;
        WireFormat$FieldType wireFormat$FieldType = WireFormat$FieldType.MESSAGE;
        classAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Class, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        constructorAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Constructor.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        functionAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Function.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        ProtoBuf$Property protoBuf$Property = ProtoBuf$Property.defaultInstance;
        propertyAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Property, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        propertyGetterAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Property, protoBuf$Annotation, 152, wireFormat$FieldType, ProtoBuf$Annotation.class);
        propertySetterAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Property, protoBuf$Annotation, 153, wireFormat$FieldType, ProtoBuf$Annotation.class);
        ProtoBuf$Annotation.Argument.Value value = ProtoBuf$Annotation.Argument.Value.defaultInstance;
        compileTimeValue = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Property, value, value, 151, wireFormat$FieldType, ProtoBuf$Annotation.Argument.Value.class);
        enumEntryAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$EnumEntry.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        parameterAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$ValueParameter.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        typeAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        typeParameterAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.defaultInstance, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
        extensionRegistryLite.add(packageFqName);
        extensionRegistryLite.add(classAnnotation);
        extensionRegistryLite.add(constructorAnnotation);
        extensionRegistryLite.add(functionAnnotation);
        extensionRegistryLite.add(propertyAnnotation);
        extensionRegistryLite.add(propertyGetterAnnotation);
        extensionRegistryLite.add(propertySetterAnnotation);
        extensionRegistryLite.add(compileTimeValue);
        extensionRegistryLite.add(enumEntryAnnotation);
        extensionRegistryLite.add(parameterAnnotation);
        extensionRegistryLite.add(typeAnnotation);
        extensionRegistryLite.add(typeParameterAnnotation);
    }
}
