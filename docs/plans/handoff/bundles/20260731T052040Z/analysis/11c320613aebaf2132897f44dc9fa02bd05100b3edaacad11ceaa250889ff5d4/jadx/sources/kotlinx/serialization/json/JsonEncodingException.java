package kotlinx.serialization.json;

import kotlin.text.StringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonEncodingException extends JsonException {
    private final String classSerialName;
    private final String hint;
    private final String shortMessage;

    public JsonEncodingException(String str, String str2, String str3) {
        super(str.concat((str3 == null || StringsKt.isBlank(str3)) ? "" : "\n".concat(str3)));
        this.shortMessage = str;
        this.classSerialName = str2;
        this.hint = str3;
    }

    public /* synthetic */ JsonEncodingException(String str, String str2, int i) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) == 0 ? "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'" : null);
    }
}
