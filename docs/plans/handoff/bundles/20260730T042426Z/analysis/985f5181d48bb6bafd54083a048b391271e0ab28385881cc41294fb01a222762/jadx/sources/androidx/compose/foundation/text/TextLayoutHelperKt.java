package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextLayoutHelper.kt */
/* loaded from: classes.dex */
public abstract class TextLayoutHelperKt {
    /* renamed from: canReuse-7_7YC6M, reason: not valid java name */
    public static final boolean m465canReuse7_7YC6M(TextLayoutResult textLayoutResult, AnnotatedString annotatedString, TextStyle textStyle, List list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j) {
        TextLayoutInput layoutInput = textLayoutResult.getLayoutInput();
        if (textLayoutResult.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts() || !Intrinsics.areEqual(layoutInput.getText(), annotatedString) || !layoutInput.getStyle().hasSameLayoutAffectingAttributes(textStyle) || !Intrinsics.areEqual(layoutInput.getPlaceholders(), list) || layoutInput.getMaxLines() != i || layoutInput.getSoftWrap() != z || !TextOverflow.m2380equalsimpl0(layoutInput.m2107getOverflowgIe3tQ8(), i2) || !Intrinsics.areEqual(layoutInput.getDensity(), density) || layoutInput.getLayoutDirection() != layoutDirection || !Intrinsics.areEqual(layoutInput.getFontFamilyResolver(), resolver) || Constraints.m2399getMinWidthimpl(j) != Constraints.m2399getMinWidthimpl(layoutInput.m2106getConstraintsmsEJaDk())) {
            return false;
        }
        if (z || TextOverflow.m2380equalsimpl0(i2, TextOverflow.Companion.m2384getEllipsisgIe3tQ8())) {
            return Constraints.m2397getMaxWidthimpl(j) == Constraints.m2397getMaxWidthimpl(layoutInput.m2106getConstraintsmsEJaDk()) && Constraints.m2396getMaxHeightimpl(j) == Constraints.m2396getMaxHeightimpl(layoutInput.m2106getConstraintsmsEJaDk());
        }
        return true;
    }
}
