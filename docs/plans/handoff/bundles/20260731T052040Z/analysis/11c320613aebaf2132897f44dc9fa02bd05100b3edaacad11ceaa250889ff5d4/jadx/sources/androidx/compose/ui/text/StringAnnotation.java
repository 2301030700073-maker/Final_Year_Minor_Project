package androidx.compose.ui.text;

import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringAnnotation implements AnnotatedString.Annotation {
    public final String value;

    public final boolean equals(Object obj) {
        if (obj instanceof StringAnnotation) {
            return this.value.equals(((StringAnnotation) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return Owner.CC.m(')', "StringAnnotation(value=", this.value);
    }
}
