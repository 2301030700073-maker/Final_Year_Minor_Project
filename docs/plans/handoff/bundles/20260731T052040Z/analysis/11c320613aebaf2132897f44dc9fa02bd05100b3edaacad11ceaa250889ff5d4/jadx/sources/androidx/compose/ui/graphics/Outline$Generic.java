package androidx.compose.ui.graphics;

import android.graphics.RectF;
import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Outline$Generic extends Brush {
    public final AndroidPath path;

    public Outline$Generic(AndroidPath androidPath) {
        this.path = androidPath;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public final Rect getBounds() {
        AndroidPath androidPath = this.path;
        if (androidPath.rectF == null) {
            androidPath.rectF = new RectF();
        }
        RectF rectF = androidPath.rectF;
        rectF.getClass();
        androidPath.internalPath.computeBounds(rectF, true);
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
