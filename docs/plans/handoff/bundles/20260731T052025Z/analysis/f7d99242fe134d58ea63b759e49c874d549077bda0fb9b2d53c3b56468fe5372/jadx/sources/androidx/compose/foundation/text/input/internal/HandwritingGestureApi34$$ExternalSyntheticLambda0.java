package androidx.compose.foundation.text.input.internal;

import android.os.CancellationSignal;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.text.TextRange;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class HandwritingGestureApi34$$ExternalSyntheticLambda0 implements CancellationSignal.OnCancelListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ HandwritingGestureApi34$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public final void onCancel() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj;
                if (textFieldSelectionManager != null) {
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                    if (legacyTextFieldState != null) {
                        legacyTextFieldState.m275setDeletionPreviewHighlightRange5zctL8(TextRange.Zero);
                    }
                    LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                    if (legacyTextFieldState2 != null) {
                        legacyTextFieldState2.m276setSelectionPreviewHighlightRange5zctL8(TextRange.Zero);
                        break;
                    }
                }
                break;
            default:
                ((StandaloneCoroutine) obj).cancel(null);
                break;
        }
    }
}
