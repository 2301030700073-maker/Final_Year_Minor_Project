package kotlinx.datetime.serializers;

import j$.time.format.DateTimeParseException;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.YearMonth;
import kotlinx.datetime.format.AbstractDateTimeFormat;
import kotlinx.datetime.format.YearMonthFormatKt;
import kotlinx.datetime.internal.MathKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class YearMonthSerializer implements KSerializer {
    public static final YearMonthSerializer INSTANCE = new YearMonthSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.datetime.YearMonth");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        YearMonth.Companion companion = YearMonth.Companion;
        String decodeString = decoder.decodeString();
        SynchronizedLazyImpl synchronizedLazyImpl = YearMonthFormatKt.ISO_YEAR_MONTH$delegate;
        AbstractDateTimeFormat abstractDateTimeFormat = (AbstractDateTimeFormat) synchronizedLazyImpl.getValue();
        companion.getClass();
        decodeString.getClass();
        abstractDateTimeFormat.getClass();
        if (abstractDateTimeFormat != ((AbstractDateTimeFormat) synchronizedLazyImpl.getValue())) {
            return (YearMonth) abstractDateTimeFormat.parse(decodeString);
        }
        try {
            String obj = decodeString.toString();
            obj.getClass();
            return new YearMonth(j$.time.YearMonth.parse(MathKt.removeLeadingZerosFromLongYearForm(obj, 3)));
        } catch (DateTimeParseException e) {
            throw new InstantFormatException(e);
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        YearMonth yearMonth = (YearMonth) obj;
        yearMonth.getClass();
        charsKt__CharKt.encodeString(yearMonth.toString());
    }
}
