package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface AnnotationAndConstantLoader extends AnnotationLoader {
    Object loadAnnotationDefaultValue(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType);

    Object loadPropertyConstant(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType);
}
