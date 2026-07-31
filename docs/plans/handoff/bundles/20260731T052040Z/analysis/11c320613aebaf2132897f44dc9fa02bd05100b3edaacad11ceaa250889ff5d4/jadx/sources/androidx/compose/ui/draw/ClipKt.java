package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ClipKt {
    public static final Modifier clip(Modifier modifier, Shape shape) {
        return Brush.m228graphicsLayer_6ThJ44$default(modifier, 0.0f, shape, true, 518143);
    }

    public static final Modifier clipToBounds(Modifier modifier) {
        return Brush.m228graphicsLayer_6ThJ44$default(modifier, 0.0f, null, true, 520191);
    }

    public static final Modifier drawBehind(Modifier modifier, Function1 function1) {
        return modifier.then(new DrawBehindElement(function1));
    }

    public static Modifier paint$default(Modifier modifier, Painter painter, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        if ((i & 16) != 0) {
            f = 1.0f;
        }
        return modifier.then(new PainterElement(painter, biasAlignment, f, blendModeColorFilter));
    }
}
