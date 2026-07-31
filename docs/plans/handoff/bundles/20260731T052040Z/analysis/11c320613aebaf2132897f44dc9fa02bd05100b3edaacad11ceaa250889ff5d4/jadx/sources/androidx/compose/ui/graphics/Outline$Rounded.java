package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.node.Owner;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Outline$Rounded extends Brush {
    public final RoundRect roundRect;
    public final AndroidPath roundRectPath;

    public Outline$Rounded(RoundRect roundRect) {
        AndroidPath androidPath;
        this.roundRect = roundRect;
        if (Jsoup.isSimple(roundRect)) {
            androidPath = null;
        } else {
            androidPath = AndroidPath_androidKt.Path();
            Owner.CC.addRoundRect$default(androidPath, roundRect);
        }
        this.roundRectPath = androidPath;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Outline$Rounded) {
            return this.roundRect.equals(((Outline$Rounded) obj).roundRect);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public final Rect getBounds() {
        RoundRect roundRect = this.roundRect;
        return new Rect(roundRect.left, roundRect.top, roundRect.right, roundRect.bottom);
    }

    public final int hashCode() {
        return this.roundRect.hashCode();
    }
}
