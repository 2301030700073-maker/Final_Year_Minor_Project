package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.text.font.FontWeight;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ContextMenuSpec {
    public static final BiasAlignment.Vertical LabelVerticalTextAlignment = Alignment.Companion.CenterVertically;
    public static final int LabelHorizontalTextAlignment = 5;
    public static final float HorizontalPadding = 12.0f;
    public static final float VerticalPadding = 8.0f;
    public static final float IconSize = 24.0f;
    public static final float DividerHeight = 1.0f;
    public static final float DividerVerticalPadding = 8.0f;
    public static final long FontSize = ContextsKt.getSp(14);
    public static final FontWeight FontWeight = FontWeight.Medium;
    public static final long LineHeight = ContextsKt.getSp(20);
    public static final long LetterSpacing = ContextsKt.pack(0.1f, 4294967296L);
}
