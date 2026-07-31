package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LinkAnnotation implements AnnotatedString.Annotation {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Clickable extends LinkAnnotation {
        public final TextLinkStyles styles;
        public final String tag;

        public Clickable(String str, TextLinkStyles textLinkStyles) {
            this.tag = str;
            this.styles = textLinkStyles;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Clickable)) {
                return false;
            }
            Clickable clickable = (Clickable) obj;
            return this.tag.equals(clickable.tag) && Intrinsics.areEqual(this.styles, clickable.styles);
        }

        public final int hashCode() {
            int hashCode = this.tag.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            return (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
        }

        public final String toString() {
            return Modifier.CC.m(new StringBuilder("LinkAnnotation.Clickable(tag="), this.tag, ')');
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Url extends LinkAnnotation {
        public final TextLinkStyles styles;
        public final String url;

        public Url(String str, TextLinkStyles textLinkStyles) {
            this.url = str;
            this.styles = textLinkStyles;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Url)) {
                return false;
            }
            Url url = (Url) obj;
            return this.url.equals(url.url) && Intrinsics.areEqual(this.styles, url.styles);
        }

        public final int hashCode() {
            int hashCode = this.url.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            return (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
        }

        public final String toString() {
            return Modifier.CC.m(new StringBuilder("LinkAnnotation.Url(url="), this.url, ')');
        }
    }
}
