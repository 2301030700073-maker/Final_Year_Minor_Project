package app.k9mail.feature.account.setup.ui.options.sync;

import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;
import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SyncOptionsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadAccountState implements SyncOptionsContract$Event {
        public static final LoadAccountState INSTANCE = new LoadAccountState();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadAccountState);
        }

        public final int hashCode() {
            return -2017040314;
        }

        public final String toString() {
            return "LoadAccountState";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements SyncOptionsContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return 1068137861;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnCheckFrequencyChanged implements SyncOptionsContract$Event {
        public final EmailCheckFrequency checkFrequency;

        public OnCheckFrequencyChanged(EmailCheckFrequency emailCheckFrequency) {
            emailCheckFrequency.getClass();
            this.checkFrequency = emailCheckFrequency;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnCheckFrequencyChanged) && this.checkFrequency == ((OnCheckFrequencyChanged) obj).checkFrequency;
        }

        public final int hashCode() {
            return this.checkFrequency.hashCode();
        }

        public final String toString() {
            return "OnCheckFrequencyChanged(checkFrequency=" + this.checkFrequency + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnMessageDisplayCountChanged implements SyncOptionsContract$Event {
        public final EmailDisplayCount messageDisplayCount;

        public OnMessageDisplayCountChanged(EmailDisplayCount emailDisplayCount) {
            emailDisplayCount.getClass();
            this.messageDisplayCount = emailDisplayCount;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnMessageDisplayCountChanged) && this.messageDisplayCount == ((OnMessageDisplayCountChanged) obj).messageDisplayCount;
        }

        public final int hashCode() {
            return this.messageDisplayCount.hashCode();
        }

        public final String toString() {
            return "OnMessageDisplayCountChanged(messageDisplayCount=" + this.messageDisplayCount + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements SyncOptionsContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return -602910215;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnShowNotificationChanged implements SyncOptionsContract$Event {
        public final boolean showNotification;

        public OnShowNotificationChanged(boolean z) {
            this.showNotification = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnShowNotificationChanged) && this.showNotification == ((OnShowNotificationChanged) obj).showNotification;
        }

        public final int hashCode() {
            return this.showNotification ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("OnShowNotificationChanged(showNotification=", ")", this.showNotification);
        }
    }
}
