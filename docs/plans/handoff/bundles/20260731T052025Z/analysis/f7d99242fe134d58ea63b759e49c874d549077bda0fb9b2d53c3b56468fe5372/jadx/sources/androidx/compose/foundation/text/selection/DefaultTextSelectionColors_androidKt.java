package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DefaultTextSelectionColors_androidKt {
    public static final TextSelectionColors DefaultTextSelectionColors;

    static {
        long Color;
        long Color2 = ColorKt.Color(4282550004L);
        Color = ColorKt.Color(Color.m487getRedimpl(Color2), Color.m486getGreenimpl(Color2), Color.m484getBlueimpl(Color2), 0.4f, Color.m485getColorSpaceimpl(Color2));
        DefaultTextSelectionColors = new TextSelectionColors(Color2, Color);
    }
}
