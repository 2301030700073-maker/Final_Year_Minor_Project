package kotlin.reflect.jvm.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPropertySignature$KotlinProperty extends KPropertyImplKt {
    public final PropertyDescriptor descriptor;
    public final NameResolver nameResolver;
    public final ProtoBuf$Property proto;
    public final JvmProtoBuf.JvmPropertySignature signature;
    public final String string;
    public final Dispatcher$promoteAndExecute$Effects typeTable;

    public JvmPropertySignature$KotlinProperty(PropertyDescriptor propertyDescriptor, ProtoBuf$Property protoBuf$Property, JvmProtoBuf.JvmPropertySignature jvmPropertySignature, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        String str;
        String sb;
        nameResolver.getClass();
        this.descriptor = propertyDescriptor;
        this.proto = protoBuf$Property;
        this.signature = jvmPropertySignature;
        this.nameResolver = nameResolver;
        this.typeTable = dispatcher$promoteAndExecute$Effects;
        if ((jvmPropertySignature.bitField0_ & 4) == 4) {
            sb = nameResolver.getString(jvmPropertySignature.getter_.name_).concat(nameResolver.getString(jvmPropertySignature.getter_.desc_));
        } else {
            ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.EXTENSION_REGISTRY;
            JvmMemberSignature$Field jvmFieldSignature = JvmProtoBufUtil.getJvmFieldSignature(protoBuf$Property, nameResolver, dispatcher$promoteAndExecute$Effects, true);
            if (jvmFieldSignature == null) {
                Gson$$ExternalSyntheticBUOutline0.m$6("No field signature for property: ", propertyDescriptor);
                throw null;
            }
            String str2 = jvmFieldSignature.name;
            String str3 = jvmFieldSignature.desc;
            StringBuilder sb2 = new StringBuilder(JvmAbi.getterName(str2));
            DeclarationDescriptor containingDeclaration = propertyDescriptor.getContainingDeclaration();
            containingDeclaration.getClass();
            if (Intrinsics.areEqual(propertyDescriptor.getVisibility(), DescriptorVisibilities.INTERNAL) && (containingDeclaration instanceof DeserializedClassDescriptor)) {
                ProtoBuf$Class protoBuf$Class = ((DeserializedClassDescriptor) containingDeclaration).classProto;
                GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.classModuleName;
                generatedExtension.getClass();
                Integer num = (Integer) UuidKt.getExtensionOrNull(protoBuf$Class, generatedExtension);
                str = "$".concat(NameUtils.SANITIZE_AS_JAVA_INVALID_CHARACTERS.replace(num != null ? nameResolver.getString(num.intValue()) : "main", "_"));
            } else {
                if (Intrinsics.areEqual(propertyDescriptor.getVisibility(), DescriptorVisibilities.PRIVATE) && (containingDeclaration instanceof PackageFragmentDescriptor)) {
                    DeserializedContainerSource deserializedContainerSource = ((DeserializedPropertyDescriptor) propertyDescriptor).containerSource;
                    if (deserializedContainerSource instanceof JvmPackagePartSource) {
                        JvmPackagePartSource jvmPackagePartSource = (JvmPackagePartSource) deserializedContainerSource;
                        if (jvmPackagePartSource.facadeClassName != null) {
                            StringBuilder sb3 = new StringBuilder("$");
                            String internalName = jvmPackagePartSource.className.getInternalName();
                            internalName.getClass();
                            sb3.append(Name.identifier(StringsKt.substringAfterLast('/', internalName, internalName)).asString());
                            str = sb3.toString();
                        }
                    }
                }
                str = "";
            }
            sb2.append(str);
            sb2.append("()");
            sb2.append(str3);
            sb = sb2.toString();
        }
        this.string = sb;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return this.string;
    }
}
