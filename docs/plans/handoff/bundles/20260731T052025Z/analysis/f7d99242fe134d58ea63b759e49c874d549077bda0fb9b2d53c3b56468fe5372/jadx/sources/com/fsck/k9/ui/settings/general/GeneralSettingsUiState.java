package com.fsck.k9.ui.settings.general;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface GeneralSettingsUiState {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Exporting implements GeneralSettingsUiState {
        public static final Exporting INSTANCE = new Exporting();
        public static final SnackbarState snackbarState = SnackbarState.Hidden;

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final SnackbarState getSnackbarState() {
            return snackbarState;
        }

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final boolean isExportLogsMenuEnabled() {
            return false;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure implements GeneralSettingsUiState {
        public static final Failure INSTANCE = new Failure();
        public static final SnackbarState snackbarState = SnackbarState.ExportLogFailure;

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final SnackbarState getSnackbarState() {
            return snackbarState;
        }

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final boolean isExportLogsMenuEnabled() {
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Idle implements GeneralSettingsUiState {
        public static final Idle INSTANCE = new Idle();
        public static final SnackbarState snackbarState = SnackbarState.Hidden;

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final SnackbarState getSnackbarState() {
            return snackbarState;
        }

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final boolean isExportLogsMenuEnabled() {
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements GeneralSettingsUiState {
        public static final Success INSTANCE = new Success();
        public static final SnackbarState snackbarState = SnackbarState.ExportLogSuccess;

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final SnackbarState getSnackbarState() {
            return snackbarState;
        }

        @Override // com.fsck.k9.ui.settings.general.GeneralSettingsUiState
        public final boolean isExportLogsMenuEnabled() {
            return true;
        }
    }

    SnackbarState getSnackbarState();

    boolean isExportLogsMenuEnabled();
}
