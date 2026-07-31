package androidx.compose.ui.autofill;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidContentDataType {
    public final int androidAutofillType;

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidContentDataType) {
            return this.androidAutofillType == ((AndroidContentDataType) obj).androidAutofillType;
        }
        return false;
    }

    public final int hashCode() {
        return this.androidAutofillType;
    }

    public final String toString() {
        return "AndroidContentDataType(androidAutofillType=" + this.androidAutofillType + ')';
    }
}
