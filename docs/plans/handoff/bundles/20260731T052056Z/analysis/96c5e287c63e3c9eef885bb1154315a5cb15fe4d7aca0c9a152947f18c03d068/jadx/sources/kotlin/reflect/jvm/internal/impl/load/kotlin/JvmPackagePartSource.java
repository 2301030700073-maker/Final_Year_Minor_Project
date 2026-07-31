package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPackagePartSource implements DeserializedContainerSource {
    public final JvmClassName className;
    public final JvmClassName facadeClassName;
    public final ReflectKotlinClass knownJvmBinaryClass;

    public JvmPackagePartSource(ReflectKotlinClass reflectKotlinClass, ProtoBuf$Package protoBuf$Package, JvmNameResolver jvmNameResolver, DeserializedContainerAbiStability deserializedContainerAbiStability) {
        reflectKotlinClass.getClass();
        protoBuf$Package.getClass();
        jvmNameResolver.getClass();
        deserializedContainerAbiStability.getClass();
        JvmClassName byClassId = JvmClassName.byClassId(ReflectClassUtilKt.getClassId(reflectKotlinClass.klass));
        KotlinClassHeader kotlinClassHeader = reflectKotlinClass.classHeader;
        JvmClassName jvmClassName = null;
        String str = kotlinClassHeader.kind != KotlinClassHeader.Kind.MULTIFILE_CLASS_PART ? null : kotlinClassHeader.extraString;
        if (str != null && str.length() > 0) {
            jvmClassName = JvmClassName.byInternalName(str);
        }
        this.className = byClassId;
        this.facadeClassName = jvmClassName;
        this.knownJvmBinaryClass = reflectKotlinClass;
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.packageModuleName;
        generatedExtension.getClass();
        Integer num = (Integer) UuidKt.getExtensionOrNull(protoBuf$Package, generatedExtension);
        if (num != null) {
            jvmNameResolver.getString(num.intValue());
        }
    }

    public final ClassId getClassId() {
        FqName fqName;
        JvmClassName jvmClassName = this.className;
        String str = jvmClassName.internalName;
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            fqName = FqName.ROOT;
            if (fqName == null) {
                JvmClassName.$$$reportNull$$$0(7);
                throw null;
            }
        } else {
            fqName = new FqName(str.substring(0, lastIndexOf).replace('/', '.'));
        }
        String internalName = jvmClassName.getInternalName();
        internalName.getClass();
        return new ClassId(fqName, Name.identifier(StringsKt.substringAfterLast('/', internalName, internalName)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource
    public final String getPresentableString() {
        return "Class '" + getClassId().asSingleFqName().asString() + '\'';
    }

    public final String toString() {
        return "JvmPackagePartSource: " + this.className;
    }
}
