package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DefaultTextSelectionColors_androidKt {
    public static final TextSelectionColors DefaultTextSelectionColors;

    static {
        long Color;
        long Color2 = ColorKt.Color(4282550004L);
        Color = ColorKt.Color(Color.m433getRedimpl(Color2), Color.m432getGreenimpl(Color2), Color.m430getBlueimpl(Color2), 0.4f, Color.m431getColorSpaceimpl(Color2));
        DefaultTextSelectionColors = new TextSelectionColors(Color2, Color);
    }
}
