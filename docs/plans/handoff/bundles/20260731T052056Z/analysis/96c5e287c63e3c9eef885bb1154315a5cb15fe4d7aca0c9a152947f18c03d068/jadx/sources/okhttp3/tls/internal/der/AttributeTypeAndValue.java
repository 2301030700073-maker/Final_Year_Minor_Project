package okhttp3.tls.internal.der;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AttributeTypeAndValue {
    public final String type;
    public final Object value;

    public AttributeTypeAndValue(String str, Object obj) {
        this.type = str;
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AttributeTypeAndValue)) {
            return false;
        }
        AttributeTypeAndValue attributeTypeAndValue = (AttributeTypeAndValue) obj;
        return this.type.equals(attributeTypeAndValue.type) && Intrinsics.areEqual(this.value, attributeTypeAndValue.value);
    }

    public final int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        Object obj = this.value;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "AttributeTypeAndValue(type=" + this.type + ", value=" + this.value + ')';
    }
}
