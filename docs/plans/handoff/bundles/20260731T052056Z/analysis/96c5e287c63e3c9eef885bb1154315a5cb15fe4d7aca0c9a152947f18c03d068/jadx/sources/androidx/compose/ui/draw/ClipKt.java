package androidx.compose.ui.draw;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ClipKt {
    public static final Modifier alpha(Modifier modifier, float f) {
        return f == 1.0f ? modifier : ColorKt.m439graphicsLayer_6ThJ44$default(modifier, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE, null, 520187);
    }

    public static final Modifier clip(Modifier modifier, Shape shape) {
        return ColorKt.m439graphicsLayer_6ThJ44$default(modifier, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, shape, 518143);
    }

    public static final Modifier clipToBounds(Modifier modifier) {
        return ColorKt.m439graphicsLayer_6ThJ44$default(modifier, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 520191);
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

    public static Modifier paint$default(Modifier modifier, Painter painter, Alignment alignment, ContentScale contentScale, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        if ((i & 4) != 0) {
            alignment = Alignment.Companion.Center;
        }
        Alignment alignment2 = alignment;
        if ((i & 16) != 0) {
            f = 1.0f;
        }
        return modifier.then(new PainterElement(painter, alignment2, contentScale, f, blendModeColorFilter));
    }

    /* renamed from: shadow-s4CzXII$default, reason: not valid java name */
    public static Modifier m354shadows4CzXII$default(Modifier modifier, float f, RoundedCornerShape roundedCornerShape, int i) {
        Shape shape = roundedCornerShape;
        if ((i & 2) != 0) {
            shape = ColorKt.RectangleShape;
        }
        Shape shape2 = shape;
        boolean z = Dp.m692compareTo0680j_4(f, RecyclerView.DECELERATION_RATE) > 0;
        long j = GraphicsLayerScopeKt.DefaultShadowColor;
        return (Dp.m692compareTo0680j_4(f, RecyclerView.DECELERATION_RATE) > 0 || z) ? modifier.then(new ShadowGraphicsLayerElement(f, shape2, z, j, j)) : modifier;
    }
}
