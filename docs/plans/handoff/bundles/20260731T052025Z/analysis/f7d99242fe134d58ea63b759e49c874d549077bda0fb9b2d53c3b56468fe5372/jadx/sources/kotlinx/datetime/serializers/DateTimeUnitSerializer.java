package kotlinx.datetime.serializers;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DateTimeUnitSerializer extends AbstractPolymorphicSerializer {
    public static final DateTimeUnitSerializer INSTANCE = new DateTimeUnitSerializer();
    public static final Lazy impl$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(16));

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(CharsKt__CharKt charsKt__CharKt, Object obj) {
        DateTimeUnit dateTimeUnit = (DateTimeUnit) obj;
        dateTimeUnit.getClass();
        return ((SealedClassSerializer) impl$delegate.getValue()).findPolymorphicSerializerOrNull(charsKt__CharKt, dateTimeUnit);
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KClass getBaseClass() {
        return Reflection.getOrCreateKotlinClass(DateTimeUnit.class);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return ((SealedClassSerializer) impl$delegate.getValue()).getDescriptor();
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        return ((SealedClassSerializer) impl$delegate.getValue()).findPolymorphicSerializerOrNull(compositeDecoder, str);
    }
}
