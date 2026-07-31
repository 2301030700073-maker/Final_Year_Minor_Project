package org.wikipedia.json;

import android.net.Uri;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UriSerializer implements KSerializer {
    public static final UriSerializer INSTANCE = new UriSerializer();
    public static final PrimitiveSerialDescriptor descriptor = RegexKt.PrimitiveSerialDescriptor("Uri", PrimitiveKind$INT.INSTANCE$8);

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Uri parse = Uri.parse(decoder.decodeString());
        parse.getClass();
        return parse;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Uri uri = (Uri) obj;
        uri.getClass();
        String uri2 = uri.toString();
        uri2.getClass();
        uuidKt.encodeString(uri2);
    }
}
