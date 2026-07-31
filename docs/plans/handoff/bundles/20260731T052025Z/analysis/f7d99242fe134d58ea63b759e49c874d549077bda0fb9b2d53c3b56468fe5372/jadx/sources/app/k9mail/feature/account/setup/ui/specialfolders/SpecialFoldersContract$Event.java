package app.k9mail.feature.account.setup.ui.specialfolders;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SpecialFoldersContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadSpecialFolderOptions implements SpecialFoldersContract$Event {
        public static final LoadSpecialFolderOptions INSTANCE = new LoadSpecialFolderOptions();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadSpecialFolderOptions);
        }

        public final int hashCode() {
            return 417933459;
        }

        public final String toString() {
            return "LoadSpecialFolderOptions";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements SpecialFoldersContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return -1564334293;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements SpecialFoldersContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return 1059584927;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnRetryClicked implements SpecialFoldersContract$Event {
        public static final OnRetryClicked INSTANCE = new OnRetryClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnRetryClicked);
        }

        public final int hashCode() {
            return 1090449364;
        }

        public final String toString() {
            return "OnRetryClicked";
        }
    }
}
