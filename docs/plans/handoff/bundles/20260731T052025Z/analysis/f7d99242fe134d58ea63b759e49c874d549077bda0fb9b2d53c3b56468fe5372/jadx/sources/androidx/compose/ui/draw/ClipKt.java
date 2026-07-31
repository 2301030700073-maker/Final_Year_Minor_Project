package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ClipKt {
    public static final Modifier alpha(Modifier modifier, float f) {
        return f == 1.0f ? modifier : ColorKt.m494graphicsLayer_6ThJ44$default(modifier, f, 0.0f, null, 520187);
    }

    public static final Modifier clip(Modifier modifier, Shape shape) {
        return ColorKt.m494graphicsLayer_6ThJ44$default(modifier, 0.0f, 0.0f, shape, 518143);
    }

    public static final Modifier clipToBounds(Modifier modifier) {
        return ColorKt.m494graphicsLayer_6ThJ44$default(modifier, 0.0f, 0.0f, null, 520191);
    }

    public static final Modifier drawBehind(Modifier modifier, Function1 function1) {
        return modifier.then(new DrawBehindElement(function1));
    }

    public static final Modifier drawWithCache(Modifier modifier, Function1 function1) {
        return modifier.then(new DrawWithCacheElement(function1));
    }

    public static final Modifier drawWithContent(Modifier modifier, Function1 function1) {
        return modifier.then(new DrawWithContentElement(function1));
    }

    public static Modifier paint$default(Modifier modifier, Painter painter, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i) {
        if ((i & 4) != 0) {
            alignment = Alignment.Companion.Center;
        }
        Alignment alignment2 = alignment;
        if ((i & 16) != 0) {
            f = 1.0f;
        }
        return modifier.then(new PainterElement(painter, alignment2, contentScale, f, colorFilter));
    }

    public static final Modifier rotate(Modifier modifier, float f) {
        return f == 0.0f ? modifier : ColorKt.m494graphicsLayer_6ThJ44$default(modifier, 0.0f, f, null, 524031);
    }
}
