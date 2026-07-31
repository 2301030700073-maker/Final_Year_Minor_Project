package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageState {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Error implements MessageState {
        public final String text;

        public Error(String str) {
            this.text = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && this.text.equals(((Error) obj).text);
        }

        @Override // app.k9mail.core.ui.compose.designsystem.molecule.input.MessageState
        public final String getText() {
            return this.text;
        }

        public final int hashCode() {
            return this.text.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Error(text=", this.text, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Warning implements MessageState {
        public final String text;

        public Warning(String str) {
            this.text = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Warning) && this.text.equals(((Warning) obj).text);
        }

        @Override // app.k9mail.core.ui.compose.designsystem.molecule.input.MessageState
        public final String getText() {
            return this.text;
        }

        public final int hashCode() {
            return this.text.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Warning(text=", this.text, ")");
        }
    }

    String getText();
}
