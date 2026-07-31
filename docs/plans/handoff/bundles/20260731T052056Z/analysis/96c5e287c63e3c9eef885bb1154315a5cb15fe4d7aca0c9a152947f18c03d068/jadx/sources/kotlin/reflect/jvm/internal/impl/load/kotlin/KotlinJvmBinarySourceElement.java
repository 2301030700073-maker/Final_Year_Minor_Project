package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KotlinJvmBinarySourceElement implements DeserializedContainerSource {
    public final ReflectKotlinClass binaryClass;

    public KotlinJvmBinarySourceElement(ReflectKotlinClass reflectKotlinClass, DeserializedContainerAbiStability deserializedContainerAbiStability) {
        deserializedContainerAbiStability.getClass();
        this.binaryClass = reflectKotlinClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource
    public final String getPresentableString() {
        return "Class '" + ReflectClassUtilKt.getClassId(this.binaryClass.klass).asSingleFqName().asString() + '\'';
    }

    public final String toString() {
        return "KotlinJvmBinarySourceElement: " + this.binaryClass;
    }
}
