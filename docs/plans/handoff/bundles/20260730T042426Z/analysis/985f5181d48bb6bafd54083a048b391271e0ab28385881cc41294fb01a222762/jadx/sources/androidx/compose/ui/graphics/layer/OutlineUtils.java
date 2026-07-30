package androidx.compose.ui.graphics.layer;

import android.view.View;

/* compiled from: GraphicsViewLayer.android.kt */
/* loaded from: classes.dex */
final class OutlineUtils {
    public static final OutlineUtils INSTANCE = new OutlineUtils();

    private OutlineUtils() {
    }

    public final boolean rebuildOutline(View view) {
        view.invalidateOutline();
        return true;
    }
}
