package androidx.compose.foundation.text.input.internal;

import android.graphics.Rect;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LegacyTextInputMethodRequest {
    public final LegacyCursorAnchorInfoController cursorAnchorInfoController;
    public Rect focusedRect;
    public final CardView.AnonymousClass1 inputMethodManager;
    public LegacyTextFieldState legacyTextFieldState;
    public TextFieldSelectionManager textFieldSelectionManager;
    public final View view;
    public ViewConfiguration viewConfiguration;
    public Function1 onEditCommand = new ChipKt$$ExternalSyntheticLambda2(10);
    public Function1 onImeActionPerformed = new ChipKt$$ExternalSyntheticLambda2(11);
    public TextFieldValue state = new TextFieldValue(4, TextRange.Zero, "");
    public ImeOptions imeOptions = ImeOptions.Default;
    public final ArrayList ics = new ArrayList();
    public final Lazy baseInputConnection$delegate = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new NavBackStackEntry$$ExternalSyntheticLambda0(18, this));

    public LegacyTextInputMethodRequest(View view, AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1 androidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1, CardView.AnonymousClass1 anonymousClass1) {
        this.view = view;
        this.inputMethodManager = anonymousClass1;
        this.cursorAnchorInfoController = new LegacyCursorAnchorInfoController(androidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1, anonymousClass1);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.text.input.internal.RecordingInputConnection createInputConnection(android.view.inputmethod.EditorInfo r18) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest.createInputConnection(android.view.inputmethod.EditorInfo):androidx.compose.foundation.text.input.internal.RecordingInputConnection");
    }
}
