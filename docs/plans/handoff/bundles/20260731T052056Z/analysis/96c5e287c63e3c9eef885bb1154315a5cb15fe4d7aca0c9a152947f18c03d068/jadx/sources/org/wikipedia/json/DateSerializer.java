package org.wikipedia.json;

import java.util.Date;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DateSerializer implements KSerializer {
    public static final DateSerializer INSTANCE = new DateSerializer();
    public static final PrimitiveSerialDescriptor descriptor = RegexKt.PrimitiveSerialDescriptor("Date", PrimitiveKind$INT.INSTANCE$6);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        try {
            return new Date(decoder.decodeLong());
        } catch (Exception e) {
            L.w(e);
            return new Date(Date.parse(decoder.decodeString()));
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Date date = (Date) obj;
        date.getClass();
        uuidKt.encodeLong(date.getTime());
    }
}
