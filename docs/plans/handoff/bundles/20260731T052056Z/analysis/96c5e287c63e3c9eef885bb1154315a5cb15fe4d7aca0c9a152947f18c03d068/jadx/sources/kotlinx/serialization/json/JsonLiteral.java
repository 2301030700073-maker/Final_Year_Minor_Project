package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.StringOpsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonLiteral extends JsonPrimitive {
    public final String content;
    public final boolean isString;

    public JsonLiteral(Object obj, boolean z) {
        obj.getClass();
        this.isString = z;
        this.content = obj.toString();
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
    public final boolean isString() {
        return this.isString;
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
