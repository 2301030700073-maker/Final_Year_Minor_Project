package androidx.compose.foundation.text;

import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextFieldDelegateKt {
    public static final String EmptyTextReplacement = StringsKt__StringsJVMKt.repeat("H", 10);

    public static final long computeSizeForDefaultText(TextStyle textStyle, Density density, FontFamily$Resolver fontFamily$Resolver, String str, int i) {
        AndroidParagraph m690ParagraphUl8oQg4$default = ParagraphKt.m690ParagraphUl8oQg4$default(str, textStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), density, fontFamily$Resolver, i, 64);
        return (BasicTextKt.ceilToIntPx(m690ParagraphUl8oQg4$default.paragraphIntrinsics.getMinIntrinsicWidth()) << 32) | (BasicTextKt.ceilToIntPx(m690ParagraphUl8oQg4$default.getHeight()) & 4294967295L);
    }
}
