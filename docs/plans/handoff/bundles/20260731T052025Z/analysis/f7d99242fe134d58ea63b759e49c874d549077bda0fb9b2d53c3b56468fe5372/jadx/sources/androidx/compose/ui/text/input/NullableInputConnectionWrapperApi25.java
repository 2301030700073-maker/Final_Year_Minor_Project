package androidx.compose.ui.text.input;

import android.os.Bundle;
import android.view.inputmethod.InputContentInfo;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NullableInputConnectionWrapperApi25 extends NullableInputConnectionWrapperApi24 {
    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.delegate;
        if (recordingInputConnection != null) {
            return recordingInputConnection.commitContent(inputContentInfo, i, bundle);
        }
        return false;
    }
}
