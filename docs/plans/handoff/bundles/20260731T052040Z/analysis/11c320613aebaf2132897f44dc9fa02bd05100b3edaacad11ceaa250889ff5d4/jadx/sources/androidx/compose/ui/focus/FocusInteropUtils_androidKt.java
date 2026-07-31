package androidx.compose.ui.focus;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.ui.platform.AndroidComposeView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FocusInteropUtils_androidKt {
    public static final int[] tempCoordinates = new int[2];
    public static final Rect tempRect = new Rect();

    public static final androidx.compose.ui.geometry.Rect calculateFocusRectRelativeTo(View view, AndroidComposeView androidComposeView) {
        int[] iArr = tempCoordinates;
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        androidComposeView.getLocationInWindow(iArr);
        int i3 = iArr[0];
        float f = i2 - iArr[1];
        view.getFocusedRect(tempRect);
        float f2 = (i - i3) + r1.left;
        return new androidx.compose.ui.geometry.Rect(f2, r1.top + f, r1.width() + f2, f + r1.top + r1.height());
    }

    public static final FocusDirection toFocusDirection(int i) {
        if (i == 1) {
            return new FocusDirection(2);
        }
        if (i == 2) {
            return new FocusDirection(1);
        }
        if (i == 17) {
            return new FocusDirection(3);
        }
        if (i == 33) {
            return new FocusDirection(5);
        }
        if (i == 66) {
            return new FocusDirection(4);
        }
        if (i != 130) {
            return null;
        }
        return new FocusDirection(6);
    }
}
