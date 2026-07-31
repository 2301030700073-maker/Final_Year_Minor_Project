package kotlinx.datetime.serializers;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.text.CharsKt__CharKt;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DayBasedDateTimeUnitSerializer implements KSerializer {
    public static final DayBasedDateTimeUnitSerializer INSTANCE = new DayBasedDateTimeUnitSerializer();
    public static final Lazy descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(17));

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        boolean z = false;
        int i = 0;
        while (true) {
            DayBasedDateTimeUnitSerializer dayBasedDateTimeUnitSerializer = INSTANCE;
            int decodeElementIndex = beginStructure.decodeElementIndex(dayBasedDateTimeUnitSerializer.getDescriptor());
            if (decodeElementIndex == -1) {
                beginStructure.endStructure(descriptor);
                if (z) {
                    return new DateTimeUnit.DayBased(i);
                }
                throw new MissingFieldException("days", getDescriptor().getSerialName());
            }
            if (decodeElementIndex != 0) {
                Okio.throwUnknownIndexException(decodeElementIndex);
                throw null;
            }
            i = beginStructure.decodeIntElement(dayBasedDateTimeUnitSerializer.getDescriptor(), 0);
            z = true;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        DateTimeUnit.DayBased dayBased = (DateTimeUnit.DayBased) obj;
        dayBased.getClass();
        SerialDescriptor descriptor = getDescriptor();
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(descriptor);
        SerialDescriptor descriptor2 = INSTANCE.getDescriptor();
        int i = dayBased.days;
        descriptor2.getClass();
        beginStructure.encodeElement(descriptor2, 0);
        beginStructure.encodeInt(i);
        beginStructure.endStructure(descriptor);
    }
}
