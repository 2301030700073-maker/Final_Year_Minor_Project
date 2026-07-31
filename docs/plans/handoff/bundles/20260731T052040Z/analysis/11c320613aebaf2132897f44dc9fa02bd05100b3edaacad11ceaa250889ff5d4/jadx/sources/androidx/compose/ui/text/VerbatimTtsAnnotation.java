package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VerbatimTtsAnnotation implements AnnotatedString.Annotation {
    public final String verbatim;

    public VerbatimTtsAnnotation(String str) {
        this.verbatim = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VerbatimTtsAnnotation) {
            return this.verbatim.equals(((VerbatimTtsAnnotation) obj).verbatim);
        }
        return false;
    }

    public final int hashCode() {
        return this.verbatim.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("VerbatimTtsAnnotation(verbatim="), this.verbatim, ')');
    }
}
