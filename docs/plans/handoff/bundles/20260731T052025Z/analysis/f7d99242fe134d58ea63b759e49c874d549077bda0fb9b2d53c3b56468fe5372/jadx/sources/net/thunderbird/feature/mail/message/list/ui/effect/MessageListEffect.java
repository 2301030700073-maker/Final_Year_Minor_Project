package net.thunderbird.feature.mail.message.list.ui.effect;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageListEffect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenMessage implements MessageListEffect {
        public final MessageItemUi message;

        public OpenMessage(MessageItemUi messageItemUi) {
            messageItemUi.getClass();
            this.message = messageItemUi;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenMessage) && Intrinsics.areEqual(this.message, ((OpenMessage) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return "OpenMessage(message=" + this.message + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ResetToolbarActionMode implements MessageListEffect {
        public static final ResetToolbarActionMode INSTANCE = new ResetToolbarActionMode();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ResetToolbarActionMode);
        }

        public final int hashCode() {
            return -953318484;
        }

        public final String toString() {
            return "ResetToolbarActionMode";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ScrollToMessage implements MessageListEffect {
        public final MessageItemUi message;

        public ScrollToMessage(MessageItemUi messageItemUi) {
            messageItemUi.getClass();
            this.message = messageItemUi;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ScrollToMessage) && Intrinsics.areEqual(this.message, ((ScrollToMessage) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return "ScrollToMessage(message=" + this.message + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TriggerOnFooterClicked implements MessageListEffect {
        public static final TriggerOnFooterClicked INSTANCE = new TriggerOnFooterClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TriggerOnFooterClicked);
        }

        public final int hashCode() {
            return 1316449276;
        }

        public final String toString() {
            return "TriggerOnFooterClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateToolbarActionMode implements MessageListEffect {
        public final boolean isAllSelected;
        public final String title;

        public UpdateToolbarActionMode(String str, boolean z) {
            this.title = str;
            this.isAllSelected = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateToolbarActionMode)) {
                return false;
            }
            UpdateToolbarActionMode updateToolbarActionMode = (UpdateToolbarActionMode) obj;
            return this.title.equals(updateToolbarActionMode.title) && this.isAllSelected == updateToolbarActionMode.isAllSelected;
        }

        public final int hashCode() {
            return (this.title.hashCode() * 31) + (this.isAllSelected ? 1231 : 1237);
        }

        public final String toString() {
            return "UpdateToolbarActionMode(title=" + this.title + ", isAllSelected=" + this.isAllSelected + ")";
        }
    }
}
