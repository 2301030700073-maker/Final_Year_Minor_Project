package app.k9mail.feature.settings.p000import.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Action {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Close extends Action {
        public final boolean importSuccess;

        public Close(boolean z) {
            this.importSuccess = z;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PasswordPrompt extends Action {
        public final String accountName;
        public final String accountUuid;
        public final String incomingServerName;
        public final boolean inputIncomingServerPassword;
        public final boolean inputOutgoingServerPassword;
        public final String outgoingServerName;

        public PasswordPrompt(String str, String str2, boolean z, String str3, boolean z2, String str4) {
            str2.getClass();
            this.accountUuid = str;
            this.accountName = str2;
            this.inputIncomingServerPassword = z;
            this.incomingServerName = str3;
            this.inputOutgoingServerPassword = z2;
            this.outgoingServerName = str4;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PickApp extends Action {
        public static final PickApp INSTANCE = new PickApp();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PickDocument extends Action {
        public static final PickDocument INSTANCE = new PickDocument();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ScanQrCode extends Action {
        public static final ScanQrCode INSTANCE = new ScanQrCode();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StartAuthorization extends Action {
        public final String accountUuid;

        public StartAuthorization(String str) {
            this.accountUuid = str;
        }
    }
}
