package kotlinx.serialization.json;

import kotlin.text.StringsKt;
import kotlinx.serialization.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonDecodingException extends SerializationException {
    public final String message;

    public JsonDecodingException(String str, String str2) {
        this(str.concat((str2 == null || StringsKt.isBlank(str2)) ? "" : "\n".concat(str2)));
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.message;
    }

    public JsonDecodingException(String str) {
        super(str);
        this.message = str;
    }
}
