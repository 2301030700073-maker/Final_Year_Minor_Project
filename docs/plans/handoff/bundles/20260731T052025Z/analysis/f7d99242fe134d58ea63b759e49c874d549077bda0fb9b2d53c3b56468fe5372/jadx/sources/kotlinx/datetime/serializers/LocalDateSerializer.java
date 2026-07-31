package kotlinx.datetime.serializers;

import j$.time.format.DateTimeParseException;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.format.AbstractDateTimeFormat;
import kotlinx.datetime.format.LocalDateFormatKt;
import kotlinx.datetime.internal.MathKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalDateSerializer implements KSerializer {
    public static final LocalDateSerializer INSTANCE = new LocalDateSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.datetime.LocalDate");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        LocalDate.Companion companion = LocalDate.Companion;
        String decodeString = decoder.decodeString();
        int i = LocalDate.Formats.$r8$clinit;
        SynchronizedLazyImpl synchronizedLazyImpl = LocalDateFormatKt.ISO_DATE$delegate;
        AbstractDateTimeFormat abstractDateTimeFormat = (AbstractDateTimeFormat) synchronizedLazyImpl.getValue();
        companion.getClass();
        decodeString.getClass();
        abstractDateTimeFormat.getClass();
        if (abstractDateTimeFormat != ((AbstractDateTimeFormat) synchronizedLazyImpl.getValue())) {
            return (LocalDate) abstractDateTimeFormat.parse(decodeString);
        }
        try {
            String obj = decodeString.toString();
            obj.getClass();
            return new LocalDate(j$.time.LocalDate.parse(MathKt.removeLeadingZerosFromLongYearForm(obj, 6)));
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
        LocalDate localDate = (LocalDate) obj;
        localDate.getClass();
        charsKt__CharKt.encodeString(localDate.toString());
    }
}
