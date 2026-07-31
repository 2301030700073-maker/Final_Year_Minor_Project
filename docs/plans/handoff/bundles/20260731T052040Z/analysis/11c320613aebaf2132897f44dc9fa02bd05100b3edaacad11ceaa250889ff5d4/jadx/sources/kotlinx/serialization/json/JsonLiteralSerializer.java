package kotlinx.serialization.json;

import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonLiteralSerializer implements KSerializer {
    public static final JsonLiteralSerializer INSTANCE = new JsonLiteralSerializer();
    public static final PrimitiveSerialDescriptor descriptor;

    static {
        PrimitiveKind$INT primitiveKind$INT = PrimitiveKind$INT.INSTANCE$8;
        if (StringsKt.isBlank("kotlinx.serialization.json.JsonLiteral")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
        } else {
            PrimitivesKt.checkNameIsNotAPrimitive("kotlinx.serialization.json.JsonLiteral");
            descriptor = new PrimitiveSerialDescriptor("kotlinx.serialization.json.JsonLiteral", primitiveKind$INT);
        }
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        JsonDecoder asJsonDecoder = CharsKt.asJsonDecoder(decoder);
        JsonElement decodeJsonElement = asJsonDecoder.decodeJsonElement();
        if (decodeJsonElement instanceof JsonLiteral) {
            return (JsonLiteral) decodeJsonElement;
        }
        String str = "Unexpected JSON element, expected JsonLiteral, had " + Reflection.getOrCreateKotlinClass(decodeJsonElement.getClass());
        String obj = asJsonDecoder.getJson().configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, decodeJsonElement.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str, null, null, obj), str, null, obj, null);
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
    public final void serialize(kotlinx.serialization.encoding.Encoder r3, java.lang.Object r4) {
        /*
            r2 = this;
            kotlinx.serialization.json.JsonLiteral r4 = (kotlinx.serialization.json.JsonLiteral) r4
            r4.getClass()
            java.lang.String r2 = r4.content
            kotlin.text.CharsKt.access$verify(r3)
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
            kotlin.ULong r4 = kotlin.text.UStringsKt.toULongOrNull(r2)
            if (r4 == 0) goto L32
            long r0 = r4.data
            kotlinx.serialization.internal.InlineClassDescriptor r2 = kotlinx.serialization.internal.ULongSerializer.descriptor
            kotlinx.serialization.encoding.Encoder r2 = r3.encodeInline(r2)
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
            goto L70
        L4d:
            java.lang.String r0 = "true"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L59
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            goto L63
        L59:
            java.lang.String r0 = "false"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L63
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
        L63:
            if (r4 == 0) goto L6d
            boolean r2 = r4.booleanValue()
            r3.encodeBoolean(r2)
            goto L70
        L6d:
            r3.encodeString(r2)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.JsonLiteralSerializer.serialize(kotlinx.serialization.encoding.Encoder, java.lang.Object):void");
    }
}
