package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInSerializerProtocol {
    public static final BuiltInSerializerProtocol INSTANCE = new BuiltInSerializerProtocol();
    public final GeneratedMessageLite.GeneratedExtension classAnnotation;
    public final GeneratedMessageLite.GeneratedExtension compileTimeValue;
    public final GeneratedMessageLite.GeneratedExtension constructorAnnotation;
    public final GeneratedMessageLite.GeneratedExtension enumEntryAnnotation;
    public final ExtensionRegistryLite extensionRegistry;
    public final GeneratedMessageLite.GeneratedExtension functionAnnotation;
    public final GeneratedMessageLite.GeneratedExtension parameterAnnotation;
    public final GeneratedMessageLite.GeneratedExtension propertyAnnotation;
    public final GeneratedMessageLite.GeneratedExtension propertyGetterAnnotation;
    public final GeneratedMessageLite.GeneratedExtension propertySetterAnnotation;
    public final GeneratedMessageLite.GeneratedExtension typeAnnotation;
    public final GeneratedMessageLite.GeneratedExtension typeParameterAnnotation;

    public BuiltInSerializerProtocol() {
        ExtensionRegistryLite extensionRegistryLite = new ExtensionRegistryLite();
        BuiltInsProtoBuf.registerAllExtensions(extensionRegistryLite);
        BuiltInsProtoBuf.packageFqName.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = BuiltInsProtoBuf.constructorAnnotation;
        generatedExtension.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension2 = BuiltInsProtoBuf.classAnnotation;
        generatedExtension2.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension3 = BuiltInsProtoBuf.functionAnnotation;
        generatedExtension3.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension4 = BuiltInsProtoBuf.propertyAnnotation;
        generatedExtension4.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension5 = BuiltInsProtoBuf.propertyGetterAnnotation;
        generatedExtension5.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension6 = BuiltInsProtoBuf.propertySetterAnnotation;
        generatedExtension6.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension7 = BuiltInsProtoBuf.enumEntryAnnotation;
        generatedExtension7.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension8 = BuiltInsProtoBuf.compileTimeValue;
        generatedExtension8.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension9 = BuiltInsProtoBuf.parameterAnnotation;
        generatedExtension9.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension10 = BuiltInsProtoBuf.typeAnnotation;
        generatedExtension10.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension11 = BuiltInsProtoBuf.typeParameterAnnotation;
        generatedExtension11.getClass();
        this.extensionRegistry = extensionRegistryLite;
        this.constructorAnnotation = generatedExtension;
        this.classAnnotation = generatedExtension2;
        this.functionAnnotation = generatedExtension3;
        this.propertyAnnotation = generatedExtension4;
        this.propertyGetterAnnotation = generatedExtension5;
        this.propertySetterAnnotation = generatedExtension6;
        this.enumEntryAnnotation = generatedExtension7;
        this.compileTimeValue = generatedExtension8;
        this.parameterAnnotation = generatedExtension9;
        this.typeAnnotation = generatedExtension10;
        this.typeParameterAnnotation = generatedExtension11;
    }

    public static String getBuiltInsFilePath(FqName fqName) {
        String asString;
        fqName.getClass();
        String replace = fqName.asString().replace('.', '/');
        replace.getClass();
        StringBuilder sb = new StringBuilder(replace);
        sb.append('/');
        if (fqName.isRoot()) {
            asString = "default-package";
        } else {
            asString = fqName.shortName().asString();
            asString.getClass();
        }
        sb.append(asString.concat(".kotlin_builtins"));
        return sb.toString();
    }
}
