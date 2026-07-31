package kotlinx.datetime.serializers;

import j$.time.format.DateTimeParseException;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.CharsKt__CharKt;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.format.LocalTimeFormat;
import kotlinx.datetime.format.LocalTimeFormatKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalTimeSerializer implements KSerializer {
    public static final LocalTimeSerializer INSTANCE = new LocalTimeSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.datetime.LocalTime");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        LocalTime.Companion companion = LocalTime.Companion;
        String decodeString = decoder.decodeString();
        SynchronizedLazyImpl synchronizedLazyImpl = LocalTimeFormatKt.ISO_TIME$delegate;
        LocalTimeFormat localTimeFormat = (LocalTimeFormat) synchronizedLazyImpl.getValue();
        companion.getClass();
        decodeString.getClass();
        localTimeFormat.getClass();
        if (localTimeFormat != ((LocalTimeFormat) synchronizedLazyImpl.getValue())) {
            return (LocalTime) localTimeFormat.parse(decodeString);
        }
        try {
            return new LocalTime(j$.time.LocalTime.parse(decodeString));
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
        LocalTime localTime = (LocalTime) obj;
        localTime.getClass();
        charsKt__CharKt.encodeString(localTime.toString());
    }
}
