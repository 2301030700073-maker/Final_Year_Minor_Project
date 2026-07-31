package androidx.compose.ui.autofill;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
