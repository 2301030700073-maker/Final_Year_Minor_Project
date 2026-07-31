package kotlinx.serialization.json;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonDecodingException extends JsonException {
    private final String hint;
    private final String input;
    private final int offset;
    private final String path;
    private final String shortMessage;

    public JsonDecodingException(int i, String str, String str2, String str3, String str4, String str5) {
        super(str);
        this.shortMessage = str2;
        this.offset = i;
        this.path = str3;
        this.input = str4;
        this.hint = str5;
    }
}
