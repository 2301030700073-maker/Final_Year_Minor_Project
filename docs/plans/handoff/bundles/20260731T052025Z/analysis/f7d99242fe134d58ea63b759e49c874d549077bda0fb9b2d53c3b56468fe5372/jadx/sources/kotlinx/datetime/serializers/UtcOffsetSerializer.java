package kotlinx.datetime.serializers;

import j$.time.format.DateTimeFormatter;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.CharsKt__CharKt;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.UtcOffsetJvmKt;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.format.UtcOffsetFormatKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtcOffsetSerializer implements KSerializer {
    public static final UtcOffsetSerializer INSTANCE = new UtcOffsetSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.datetime.UtcOffset");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        UtcOffset.Companion companion = UtcOffset.Companion;
        String decodeString = decoder.decodeString();
        SynchronizedLazyImpl synchronizedLazyImpl = UtcOffsetFormatKt.ISO_OFFSET$delegate;
        UtcOffsetFormat utcOffsetFormat = (UtcOffsetFormat) synchronizedLazyImpl.getValue();
        companion.getClass();
        decodeString.getClass();
        utcOffsetFormat.getClass();
        if (utcOffsetFormat == ((UtcOffsetFormat) synchronizedLazyImpl.getValue())) {
            DateTimeFormatter dateTimeFormatter = (DateTimeFormatter) UtcOffsetJvmKt.isoFormat$delegate.getValue();
            dateTimeFormatter.getClass();
            return UtcOffsetJvmKt.access$parseWithFormat(decodeString, dateTimeFormatter);
        }
        if (utcOffsetFormat == ((UtcOffsetFormat) UtcOffsetFormatKt.ISO_OFFSET_BASIC$delegate.getValue())) {
            DateTimeFormatter dateTimeFormatter2 = (DateTimeFormatter) UtcOffsetJvmKt.isoBasicFormat$delegate.getValue();
            dateTimeFormatter2.getClass();
            return UtcOffsetJvmKt.access$parseWithFormat(decodeString, dateTimeFormatter2);
        }
        if (utcOffsetFormat != ((UtcOffsetFormat) UtcOffsetFormatKt.FOUR_DIGIT_OFFSET$delegate.getValue())) {
            return (UtcOffset) utcOffsetFormat.parse(decodeString);
        }
        DateTimeFormatter dateTimeFormatter3 = (DateTimeFormatter) UtcOffsetJvmKt.fourDigitsFormat$delegate.getValue();
        dateTimeFormatter3.getClass();
        return UtcOffsetJvmKt.access$parseWithFormat(decodeString, dateTimeFormatter3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        UtcOffset utcOffset = (UtcOffset) obj;
        utcOffset.getClass();
        charsKt__CharKt.encodeString(utcOffset.toString());
    }
}
