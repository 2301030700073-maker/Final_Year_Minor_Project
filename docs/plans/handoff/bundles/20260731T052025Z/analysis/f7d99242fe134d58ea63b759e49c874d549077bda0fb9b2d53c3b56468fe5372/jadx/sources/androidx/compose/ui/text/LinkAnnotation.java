package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LinkAnnotation implements AnnotatedString.Annotation {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return Intrinsics.areEqual(this.tag, clickable.tag) && Intrinsics.areEqual(this.styles, clickable.styles);
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles getStyles() {
            return this.styles;
        }

        public final int hashCode() {
            int hashCode = this.tag.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            return (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
        }

        public final String toString() {
            return CameraDevices$CC.m(new StringBuilder("LinkAnnotation.Clickable(tag="), this.tag, ')');
        }
    }

    public abstract TextLinkStyles getStyles();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Url extends LinkAnnotation {
        public final TextLinkStyles styles;
        public final String url;

        public /* synthetic */ Url(String str, TextLinkStyles textLinkStyles, int i) {
            this(str, (i & 2) != 0 ? null : textLinkStyles);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Url)) {
                return false;
            }
            Url url = (Url) obj;
            return Intrinsics.areEqual(this.url, url.url) && Intrinsics.areEqual(this.styles, url.styles);
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles getStyles() {
            return this.styles;
        }

        public final int hashCode() {
            int hashCode = this.url.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.styles;
            return (hashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
        }

        public final String toString() {
            return CameraDevices$CC.m(new StringBuilder("LinkAnnotation.Url(url="), this.url, ')');
        }

        public Url(String str, TextLinkStyles textLinkStyles) {
            this.url = str;
            this.styles = textLinkStyles;
        }
    }
}
