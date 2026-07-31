package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassData {
    public final ProtoBuf$Class classProto;
    public final BinaryVersion metadataVersion;
    public final NameResolver nameResolver;
    public final SourceElement sourceElement;

    public ClassData(NameResolver nameResolver, ProtoBuf$Class protoBuf$Class, BinaryVersion binaryVersion, SourceElement sourceElement) {
        nameResolver.getClass();
        protoBuf$Class.getClass();
        sourceElement.getClass();
        this.nameResolver = nameResolver;
        this.classProto = protoBuf$Class;
        this.metadataVersion = binaryVersion;
        this.sourceElement = sourceElement;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassData)) {
            return false;
        }
        ClassData classData = (ClassData) obj;
        return Intrinsics.areEqual(this.nameResolver, classData.nameResolver) && Intrinsics.areEqual(this.classProto, classData.classProto) && this.metadataVersion.equals(classData.metadataVersion) && Intrinsics.areEqual(this.sourceElement, classData.sourceElement);
    }

    public final int hashCode() {
        return this.sourceElement.hashCode() + ((this.metadataVersion.hashCode() + ((this.classProto.hashCode() + (this.nameResolver.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.nameResolver + ", classProto=" + this.classProto + ", metadataVersion=" + this.metadataVersion + ", sourceElement=" + this.sourceElement + ')';
    }
}
