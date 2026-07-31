package androidx.compose.ui.platform;

import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.CompositionContext;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WindowRecomposer_androidKt {
    public static final MutableScatterMap animationScale;

    static {
        long[] jArr = ScatterMapKt.EmptyGroup;
        animationScale = new MutableScatterMap();
    }

    public static final CompositionContext getCompositionContext(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }
}
