package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextDelegate {
    public final Density density;
    public final FontFamily$Resolver fontFamilyResolver;
    public LayoutDirection intrinsicsLayoutDirection;
    public LocalStore.AnonymousClass7 paragraphIntrinsics;
    public final boolean softWrap;
    public final TextStyle style;
    public final AnnotatedString text;
    public final int maxLines = Integer.MAX_VALUE;
    public final int minLines = 1;
    public final int overflow = 1;
    public final List placeholders = EmptyList.INSTANCE;

    public TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, boolean z, Density density, FontFamily$Resolver fontFamily$Resolver, int i) {
        this.text = annotatedString;
        this.style = textStyle;
        this.softWrap = z;
        this.density = density;
        this.fontFamilyResolver = fontFamily$Resolver;
    }

    public final void layoutIntrinsics(LayoutDirection layoutDirection) {
        LocalStore.AnonymousClass7 anonymousClass7 = this.paragraphIntrinsics;
        if (anonymousClass7 == null || layoutDirection != this.intrinsicsLayoutDirection || anonymousClass7.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            anonymousClass7 = new LocalStore.AnonymousClass7(this.text, ParagraphKt.resolveDefaults(this.style, layoutDirection), this.placeholders, this.density, this.fontFamilyResolver);
        }
        this.paragraphIntrinsics = anonymousClass7;
    }
}
