package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.StringOpsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonLiteral extends JsonPrimitive {
    public final String content;
    public final boolean isString;

    public JsonLiteral(String str, boolean z) {
        str.getClass();
        this.isString = z;
        this.content = str.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonLiteral.class != obj.getClass()) {
            return false;
        }
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        return this.isString == jsonLiteral.isString && Intrinsics.areEqual(this.content, jsonLiteral.content);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String getContent() {
        return this.content;
    }

    public final int hashCode() {
        return this.content.hashCode() + ((this.isString ? 1231 : 1237) * 31);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String toString() {
        boolean z = this.isString;
        String str = this.content;
        if (!z) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        StringOpsKt.printQuoted(sb, str);
        return sb.toString();
    }
}
