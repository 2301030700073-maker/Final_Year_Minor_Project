package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DefaultTextSelectionColors_androidKt {
    public static final TextSelectionColors DefaultTextSelectionColors;

    static {
        long Color;
        long Color2 = Brush.Color(4282550004L);
        Color = Brush.Color(Color.m249getRedimpl(Color2), Color.m248getGreenimpl(Color2), Color.m246getBlueimpl(Color2), 0.4f, Color.m247getColorSpaceimpl(Color2));
        DefaultTextSelectionColors = new TextSelectionColors(Color2, Color);
    }
}
