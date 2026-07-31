package androidx.compose.foundation.text.input.internal;

import android.graphics.Rect;
import android.view.View;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlinx.datetime.internal.format.SignedFormatStructure$formatter$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyTextInputMethodRequest {
    public final LegacyCursorAnchorInfoController cursorAnchorInfoController;
    public Rect focusedRect;
    public final CardView.AnonymousClass1 inputMethodManager;
    public LegacyTextFieldState legacyTextFieldState;
    public TextFieldSelectionManager textFieldSelectionManager;
    public final View view;
    public ViewConfiguration viewConfiguration;
    public Function1 onEditCommand = new ScrollState$$ExternalSyntheticLambda4(29);
    public Function1 onImeActionPerformed = new TextKt$$ExternalSyntheticLambda1(1);
    public TextFieldValue state = new TextFieldValue(4, TextRange.Zero, "");
    public ImeOptions imeOptions = ImeOptions.Default;
    public final ArrayList ics = new ArrayList();
    public final Lazy baseInputConnection$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(26, this));

    public LegacyTextInputMethodRequest(View view, SignedFormatStructure$formatter$1 signedFormatStructure$formatter$1, CardView.AnonymousClass1 anonymousClass1) {
        this.view = view;
        this.inputMethodManager = anonymousClass1;
        this.cursorAnchorInfoController = new LegacyCursorAnchorInfoController(signedFormatStructure$formatter$1, anonymousClass1);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.text.input.internal.RecordingInputConnection createInputConnection(android.view.inputmethod.EditorInfo r18) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest.createInputConnection(android.view.inputmethod.EditorInfo):androidx.compose.foundation.text.input.internal.RecordingInputConnection");
    }
}
