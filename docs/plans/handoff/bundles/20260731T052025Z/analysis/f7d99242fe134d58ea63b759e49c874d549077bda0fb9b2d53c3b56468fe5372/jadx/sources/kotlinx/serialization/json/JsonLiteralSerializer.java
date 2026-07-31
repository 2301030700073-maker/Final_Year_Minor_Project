package kotlinx.serialization.json;

import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.Handshake;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonLiteralSerializer implements KSerializer {
    public static final JsonLiteralSerializer INSTANCE = new JsonLiteralSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("kotlinx.serialization.json.JsonLiteral");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        JsonDecoder asJsonDecoder = Hex.asJsonDecoder(decoder);
        JsonElement decodeJsonElement = asJsonDecoder.decodeJsonElement();
        if (decodeJsonElement instanceof JsonLiteral) {
            return (JsonLiteral) decodeJsonElement;
        }
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Unexpected JSON element, expected JsonLiteral, had " + Reflection.getOrCreateKotlinClass(decodeJsonElement.getClass()), null, null, asJsonDecoder.getJson().configuration.canOverride ? WriteModeKt.minify(-1, decodeJsonElement.toString()).toString() : null));
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.text.CharsKt__CharKt r3, java.lang.Object r4) {
        /*
            r2 = this;
            kotlinx.serialization.json.JsonLiteral r4 = (kotlinx.serialization.json.JsonLiteral) r4
            r4.getClass()
            java.lang.String r2 = r4.content
            org.minidns.util.Hex.access$verify(r3)
            boolean r4 = r4.isString
            if (r4 == 0) goto L12
            r3.encodeString(r2)
            return
        L12:
            java.lang.Long r4 = kotlin.text.StringsKt__StringsJVMKt.toLongOrNull(r2)
            if (r4 == 0) goto L20
            long r0 = r4.longValue()
            r3.encodeLong(r0)
            return
        L20:
            kotlin.ULong r4 = org.jsoup.Jsoup.toULongOrNull(r2)
            if (r4 == 0) goto L32
            long r0 = r4.data
            kotlinx.serialization.internal.InlineClassDescriptor r2 = kotlinx.serialization.internal.ULongSerializer.descriptor
            kotlin.text.CharsKt__CharKt r2 = r3.encodeInline(r2)
            r2.encodeLong(r0)
            return
        L32:
            r4 = 0
            boolean r0 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.isValidFloat$StringsKt__StringNumberConversionsJVMKt(r2)     // Catch: java.lang.NumberFormatException -> L42
            if (r0 == 0) goto L42
            double r0 = java.lang.Double.parseDouble(r2)     // Catch: java.lang.NumberFormatException -> L42
            java.lang.Double r0 = java.lang.Double.valueOf(r0)     // Catch: java.lang.NumberFormatException -> L42
            goto L43
        L42:
            r0 = r4
        L43:
            if (r0 == 0) goto L4d
            double r0 = r0.doubleValue()
            r3.encodeDouble(r0)
            goto L6f
        L4d:
            java.lang.String r0 = "true"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L58
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            goto L62
        L58:
            java.lang.String r0 = "false"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L62
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
        L62:
            if (r4 == 0) goto L6c
            boolean r2 = r4.booleanValue()
            r3.encodeBoolean(r2)
            goto L6f
        L6c:
            r3.encodeString(r2)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.JsonLiteralSerializer.serialize(kotlin.text.CharsKt__CharKt, java.lang.Object):void");
    }
}
