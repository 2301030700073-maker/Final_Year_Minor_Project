package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UrlAnnotation implements AnnotatedString.Annotation {
    public final String url;

    public UrlAnnotation(String str) {
        this.url = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UrlAnnotation) {
            return this.url.equals(((UrlAnnotation) obj).url);
        }
        return false;
    }

    public final int hashCode() {
        return this.url.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("UrlAnnotation(url="), this.url, ')');
    }
}
