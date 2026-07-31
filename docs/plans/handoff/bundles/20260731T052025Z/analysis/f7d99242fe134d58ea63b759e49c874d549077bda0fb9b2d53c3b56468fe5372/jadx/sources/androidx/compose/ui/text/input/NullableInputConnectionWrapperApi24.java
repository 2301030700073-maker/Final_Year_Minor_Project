package androidx.compose.ui.text.input;

import android.os.Handler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NullableInputConnectionWrapperApi24 extends NullableInputConnectionWrapperApi21 {
    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21
    public final void closeDelegate(androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection) {
        recordingInputConnection.closeConnection();
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.delegate;
        if (recordingInputConnection != null) {
            return recordingInputConnection.deleteSurroundingTextInCodePoints(i, i2);
        }
        return false;
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return null;
    }
}
