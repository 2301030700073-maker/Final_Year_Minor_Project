package androidx.compose.foundation.text;

import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TextFieldDelegateKt {
    public static final String EmptyTextReplacement = StringsKt__StringsJVMKt.repeat(10, "H");

    public static final long computeSizeForDefaultText(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i) {
        AndroidParagraph m632ParagraphUl8oQg4$default = ParagraphKt.m632ParagraphUl8oQg4$default(str, textStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), density, resolver, i, 64);
        return (BasicTextKt.ceilToIntPx(m632ParagraphUl8oQg4$default.paragraphIntrinsics.getMinIntrinsicWidth()) << 32) | (BasicTextKt.ceilToIntPx(m632ParagraphUl8oQg4$default.getHeight()) & 4294967295L);
    }
}
