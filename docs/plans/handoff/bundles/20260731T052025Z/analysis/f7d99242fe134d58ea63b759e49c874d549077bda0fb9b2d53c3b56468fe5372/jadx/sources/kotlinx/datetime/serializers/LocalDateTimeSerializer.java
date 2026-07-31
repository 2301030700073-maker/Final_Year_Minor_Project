package kotlinx.datetime.serializers;

import j$.time.format.DateTimeParseException;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.datetime.internal.MathKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalDateTimeSerializer implements KSerializer {
    public static final LocalDateTimeSerializer INSTANCE = new LocalDateTimeSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.datetime.LocalDateTime");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        LocalDateTime.Companion companion = LocalDateTime.Companion;
        String decodeString = decoder.decodeString();
        LocalDateTimeFormat localDateTimeFormat = LocalDateTime.Formats.ISO;
        companion.getClass();
        decodeString.getClass();
        localDateTimeFormat.getClass();
        try {
            String obj = decodeString.toString();
            obj.getClass();
            return new LocalDateTime(j$.time.LocalDateTime.parse(MathKt.removeLeadingZerosFromLongYearForm(obj, 12)));
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
        LocalDateTime localDateTime = (LocalDateTime) obj;
        localDateTime.getClass();
        charsKt__CharKt.encodeString(localDateTime.toString());
    }
}
