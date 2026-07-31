package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LinkAnnotation implements AnnotatedString.Annotation {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Clickable extends LinkAnnotation {
        public final LinkInteractionListener linkInteractionListener;
        public final TextLinkStyles styles;
        public final String tag;

        public Clickable(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
            this.tag = str;
            this.styles = textLinkStyles;
            this.linkInteractionListener = linkInteractionListener;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Clickable)) {
                return false;
            }
            Clickable clickable = (Clickable) obj;
            return Intrinsics.areEqual(this.tag, clickable.tag) && Intrinsics.areEqual(this.styles, clickable.styles) && Intrinsics.areEqual(this.linkInteractionListener, clickable.linkInteractionListener);
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final LinkInteractionListener getLinkInteractionListener() {
            return this.linkInteractionListener;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles getStyles() {
            return this.styles;
        }

        public final int hashCode() {
            int hashCode = this.tag.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            int hashCode2 = (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
            LinkInteractionListener linkInteractionListener = this.linkInteractionListener;
            return hashCode2 + (linkInteractionListener != null ? linkInteractionListener.hashCode() : 0);
        }

        public final String toString() {
            return Modifier.CC.m(new StringBuilder("LinkAnnotation.Clickable(tag="), this.tag, ')');
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Url extends LinkAnnotation {
        public final LinkInteractionListener linkInteractionListener;
        public final TextLinkStyles styles;
        public final String url;

        public Url(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
            this.url = str;
            this.styles = textLinkStyles;
            this.linkInteractionListener = linkInteractionListener;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Url)) {
                return false;
            }
            Url url = (Url) obj;
            return Intrinsics.areEqual(this.url, url.url) && Intrinsics.areEqual(this.styles, url.styles) && Intrinsics.areEqual(this.linkInteractionListener, url.linkInteractionListener);
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final LinkInteractionListener getLinkInteractionListener() {
            return this.linkInteractionListener;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles getStyles() {
            return this.styles;
        }

        public final int hashCode() {
            int hashCode = this.url.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            int hashCode2 = (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
            LinkInteractionListener linkInteractionListener = this.linkInteractionListener;
            return hashCode2 + (linkInteractionListener != null ? linkInteractionListener.hashCode() : 0);
        }

        public final String toString() {
            return Modifier.CC.m(new StringBuilder("LinkAnnotation.Url(url="), this.url, ')');
        }
    }

    public abstract LinkInteractionListener getLinkInteractionListener();

    public abstract TextLinkStyles getStyles();
}
