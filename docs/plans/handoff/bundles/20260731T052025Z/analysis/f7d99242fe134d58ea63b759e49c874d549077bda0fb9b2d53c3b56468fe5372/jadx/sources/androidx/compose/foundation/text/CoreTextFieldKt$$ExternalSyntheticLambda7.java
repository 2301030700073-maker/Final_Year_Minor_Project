package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreTextFieldKt$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextFieldSelectionManager f$0;

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda7(TextFieldSelectionManager textFieldSelectionManager, int i) {
        this.$r8$classId = i;
        this.f$0 = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Rect rect;
        LegacyTextFieldState legacyTextFieldState;
        LayoutCoordinates layoutCoordinates;
        char c;
        long j;
        float f;
        LayoutCoordinates layoutCoordinates2;
        LayoutCoordinates layoutCoordinates3;
        LayoutCoordinates layoutCoordinates4;
        LayoutCoordinates layoutCoordinates5;
        int i = this.$r8$classId;
        TextFieldSelectionManager textFieldSelectionManager = this.f$0;
        switch (i) {
            case 0:
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(6, textFieldSelectionManager);
            case 1:
                textFieldSelectionManager.showSelectionToolbar$foundation();
                return Unit.INSTANCE;
            default:
                LayoutCoordinates layoutCoordinates6 = (LayoutCoordinates) obj;
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                Rect rect2 = Rect.Zero;
                if (legacyTextFieldState2 != null) {
                    if (legacyTextFieldState2.isLayoutResultStale) {
                        legacyTextFieldState2 = null;
                    }
                    if (legacyTextFieldState2 != null) {
                        OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
                        long j2 = textFieldSelectionManager.getValue$foundation().selection;
                        int i2 = TextRange.$r8$clinit;
                        int originalToTransformed = offsetMapping.originalToTransformed((int) (j2 >> 32));
                        int originalToTransformed2 = textFieldSelectionManager.offsetMapping.originalToTransformed((int) (textFieldSelectionManager.getValue$foundation().selection & 4294967295L));
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.state;
                        long j3 = 0;
                        long mo579localToRootMKHz9U = (legacyTextFieldState3 == null || (layoutCoordinates5 = legacyTextFieldState3.getLayoutCoordinates()) == null) ? 0L : layoutCoordinates5.mo579localToRootMKHz9U(textFieldSelectionManager.m312getHandlePositiontuRUvjQ$foundation(true));
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.state;
                        if (legacyTextFieldState4 != null && (layoutCoordinates4 = legacyTextFieldState4.getLayoutCoordinates()) != null) {
                            j3 = layoutCoordinates4.mo579localToRootMKHz9U(textFieldSelectionManager.m312getHandlePositiontuRUvjQ$foundation(false));
                        }
                        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.state;
                        float f2 = 0.0f;
                        if (legacyTextFieldState5 == null || (layoutCoordinates3 = legacyTextFieldState5.getLayoutCoordinates()) == null) {
                            c = ' ';
                            j = j3;
                            f = 0.0f;
                        } else {
                            c = ' ';
                            j = j3;
                            f = Float.intBitsToFloat((int) (layoutCoordinates3.mo579localToRootMKHz9U((Float.floatToRawIntBits(legacyTextFieldState2.getLayoutResult() != null ? r4.value.getCursorRect(originalToTransformed).top : 0.0f) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32)) & 4294967295L));
                        }
                        LegacyTextFieldState legacyTextFieldState6 = textFieldSelectionManager.state;
                        if (legacyTextFieldState6 != null && (layoutCoordinates2 = legacyTextFieldState6.getLayoutCoordinates()) != null) {
                            f2 = Float.intBitsToFloat((int) (layoutCoordinates2.mo579localToRootMKHz9U((Float.floatToRawIntBits(0.0f) << c) | (Float.floatToRawIntBits(legacyTextFieldState2.getLayoutResult() != null ? r7.value.getCursorRect(originalToTransformed2).top : 0.0f) & 4294967295L)) & 4294967295L));
                        }
                        int i3 = (int) (mo579localToRootMKHz9U >> c);
                        int i4 = (int) (j >> c);
                        rect = new Rect(Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)), Math.min(f, f2), Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)), (legacyTextFieldState2.textDelegate.density.getDensity() * 25.0f) + Math.max(Float.intBitsToFloat((int) (mo579localToRootMKHz9U & 4294967295L)), Float.intBitsToFloat((int) (j & 4294967295L))));
                        legacyTextFieldState = textFieldSelectionManager.state;
                        if (legacyTextFieldState != null || (layoutCoordinates = legacyTextFieldState.getLayoutCoordinates()) == null) {
                            return null;
                        }
                        return (layoutCoordinates.isAttached$1() && layoutCoordinates6.isAttached$1()) ? Util.m1090Recttz77jQw(layoutCoordinates6.mo577localPositionOfR5De75A(RulerKt.findRootCoordinates(layoutCoordinates), rect.m447getTopLeftF1C5BW0()), rect.m446getSizeNHjbRc()) : rect2;
                    }
                }
                rect = rect2;
                legacyTextFieldState = textFieldSelectionManager.state;
                if (legacyTextFieldState != null) {
                }
                return null;
        }
    }
}
