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
public final class MonthBasedDateTimeUnitSerializer implements KSerializer {
    public static final MonthBasedDateTimeUnitSerializer INSTANCE = new MonthBasedDateTimeUnitSerializer();
    public static final Lazy descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(18));

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        boolean z = false;
        int i = 0;
        while (true) {
            MonthBasedDateTimeUnitSerializer monthBasedDateTimeUnitSerializer = INSTANCE;
            int decodeElementIndex = beginStructure.decodeElementIndex(monthBasedDateTimeUnitSerializer.getDescriptor());
            if (decodeElementIndex == -1) {
                beginStructure.endStructure(descriptor);
                if (z) {
                    return new DateTimeUnit.MonthBased(i);
                }
                throw new MissingFieldException("months", getDescriptor().getSerialName());
            }
            if (decodeElementIndex != 0) {
                Okio.throwUnknownIndexException(decodeElementIndex);
                throw null;
            }
            i = beginStructure.decodeIntElement(monthBasedDateTimeUnitSerializer.getDescriptor(), 0);
            z = true;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        DateTimeUnit.MonthBased monthBased = (DateTimeUnit.MonthBased) obj;
        monthBased.getClass();
        SerialDescriptor descriptor = getDescriptor();
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(descriptor);
        SerialDescriptor descriptor2 = INSTANCE.getDescriptor();
        int i = monthBased.months;
        descriptor2.getClass();
        beginStructure.encodeElement(descriptor2, 0);
        beginStructure.encodeInt(i);
        beginStructure.endStructure(descriptor);
    }
}
