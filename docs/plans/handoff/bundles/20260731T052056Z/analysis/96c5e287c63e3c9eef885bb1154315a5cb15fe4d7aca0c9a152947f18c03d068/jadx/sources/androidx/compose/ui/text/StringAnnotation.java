package androidx.compose.ui.text;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringAnnotation implements AnnotatedString.Annotation {
    public final String value;

    public /* synthetic */ StringAnnotation(String str) {
        this.value = str;
    }

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
        return Animation.CC.m(')', "StringAnnotation(value=", this.value);
    }
}
