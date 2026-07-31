package androidx.compose.ui.text.input;

import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.network.okhttp.internal.CallsKt$await$2$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PlatformTextInputService {
    void hideSoftwareKeyboard();

    void notifyFocusedRect(Rect rect);

    void showSoftwareKeyboard();

    void startInput();

    void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1, CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1);

    void stopInput();

    void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2);

    void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, CallsKt$await$2$1 callsKt$await$2$1, Rect rect, Rect rect2);
}
