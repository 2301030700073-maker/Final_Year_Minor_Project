package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.text.font.FontWeight;
import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ContextMenuSpec {
    public static final BiasAlignment.Vertical LabelVerticalTextAlignment = Alignment.Companion.CenterVertically;
    public static final int LabelHorizontalTextAlignment = 5;
    public static final float HorizontalPadding = 12.0f;
    public static final float VerticalPadding = 8.0f;
    public static final float IconSize = 24.0f;
    public static final float DividerHeight = 1.0f;
    public static final float DividerVerticalPadding = 8.0f;
    public static final long FontSize = SQLite.getSp(14);
    public static final FontWeight FontWeight = FontWeight.Medium;
    public static final long LineHeight = SQLite.getSp(20);
    public static final long LetterSpacing = SQLite.pack(0.1f, 4294967296L);
}
