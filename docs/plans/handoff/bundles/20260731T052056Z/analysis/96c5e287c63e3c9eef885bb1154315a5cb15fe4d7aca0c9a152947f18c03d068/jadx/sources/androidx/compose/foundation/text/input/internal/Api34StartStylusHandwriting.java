package androidx.compose.foundation.text.input.internal;

import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.android.BoringLayoutFactory33$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Api34StartStylusHandwriting {
    public static final void setEditorBoundsInfo(CursorAnchorInfo.Builder builder, Rect rect) {
        builder.setEditorBoundsInfo(BoringLayoutFactory33$$ExternalSyntheticApiModelOutline0.m().setEditorBounds(ColorKt.toAndroidRectF(rect)).setHandwritingBounds(ColorKt.toAndroidRectF(rect)).build());
    }

    public static void startStylusHandwriting(InputMethodManager inputMethodManager, View view) {
        inputMethodManager.startStylusHandwriting(view);
    }
}
