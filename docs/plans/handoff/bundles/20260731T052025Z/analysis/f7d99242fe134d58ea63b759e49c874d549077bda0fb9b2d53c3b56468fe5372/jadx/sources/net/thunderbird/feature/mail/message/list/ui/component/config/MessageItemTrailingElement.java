package net.thunderbird.feature.mail.message.list.ui.component.config;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageItemTrailingElement {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EncryptedBadge implements MessageItemTrailingElement {
        public final boolean isFavouriteHidden;

        public EncryptedBadge(boolean z) {
            this.isFavouriteHidden = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EncryptedBadge) && this.isFavouriteHidden == ((EncryptedBadge) obj).isFavouriteHidden;
        }

        public final int hashCode() {
            return this.isFavouriteHidden ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("EncryptedBadge(isFavouriteHidden=", ")", this.isFavouriteHidden);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FavouriteIconButton implements MessageItemTrailingElement {
        public final boolean favourite;

        public FavouriteIconButton(boolean z) {
            this.favourite = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FavouriteIconButton) && this.favourite == ((FavouriteIconButton) obj).favourite;
        }

        public final int hashCode() {
            return this.favourite ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("FavouriteIconButton(favourite=", ")", this.favourite);
        }
    }
}
