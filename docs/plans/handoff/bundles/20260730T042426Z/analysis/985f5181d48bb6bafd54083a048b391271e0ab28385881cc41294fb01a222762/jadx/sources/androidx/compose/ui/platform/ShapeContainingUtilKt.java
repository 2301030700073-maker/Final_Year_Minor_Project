package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: ShapeContainingUtil.kt */
/* loaded from: classes.dex */
public abstract class ShapeContainingUtilKt {
    public static /* synthetic */ boolean isInOutline$default(Outline outline, float f, float f2, Path path, Path path2, int i, Object obj) {
        if ((i & 8) != 0) {
            path = null;
        }
        if ((i & 16) != 0) {
            path2 = null;
        }
        return isInOutline(outline, f, f2, path, path2);
    }

    public static final boolean isInOutline(Outline outline, float f, float f2, Path path, Path path2) {
        if (outline instanceof Outline.Rectangle) {
            return isInRectangle(((Outline.Rectangle) outline).getRect(), f, f2);
        }
        if (outline instanceof Outline.Rounded) {
            return isInRoundedRect((Outline.Rounded) outline, f, f2, path, path2);
        }
        if (outline instanceof Outline.Generic) {
            return isInPath(((Outline.Generic) outline).getPath(), f, f2, path, path2);
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean isInRectangle(Rect rect, float f, float f2) {
        return rect.getLeft() <= f && f < rect.getRight() && rect.getTop() <= f2 && f2 < rect.getBottom();
    }

    private static final boolean isInRoundedRect(Outline.Rounded rounded, float f, float f2, Path path, Path path2) {
        RoundRect roundRect = rounded.getRoundRect();
        if (f < roundRect.getLeft() || f >= roundRect.getRight() || f2 < roundRect.getTop() || f2 >= roundRect.getBottom()) {
            return false;
        }
        if (!cornersFit(roundRect)) {
            Path Path = path2 == null ? AndroidPath_androidKt.Path() : path2;
            Path.CC.addRoundRect$default(Path, roundRect, null, 2, null);
            return isInPath(Path, f, f2, path, path2);
        }
        float m1153getXimpl = CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
        float m1154getYimpl = CornerRadius.m1154getYimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) + roundRect.getTop();
        float right = roundRect.getRight() - CornerRadius.m1153getXimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs());
        float m1154getYimpl2 = CornerRadius.m1154getYimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs()) + roundRect.getTop();
        float right2 = roundRect.getRight() - CornerRadius.m1153getXimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs());
        float bottom = roundRect.getBottom() - CornerRadius.m1154getYimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs());
        float bottom2 = roundRect.getBottom() - CornerRadius.m1154getYimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs());
        float m1153getXimpl2 = CornerRadius.m1153getXimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
        if (f < m1153getXimpl && f2 < m1154getYimpl) {
            return m1994isWithinEllipseVE1yxkc(f, f2, roundRect.m1194getTopLeftCornerRadiuskKHJgLs(), m1153getXimpl, m1154getYimpl);
        }
        if (f < m1153getXimpl2 && f2 > bottom2) {
            return m1994isWithinEllipseVE1yxkc(f, f2, roundRect.m1192getBottomLeftCornerRadiuskKHJgLs(), m1153getXimpl2, bottom2);
        }
        if (f > right && f2 < m1154getYimpl2) {
            return m1994isWithinEllipseVE1yxkc(f, f2, roundRect.m1195getTopRightCornerRadiuskKHJgLs(), right, m1154getYimpl2);
        }
        if (f <= right2 || f2 <= bottom) {
            return true;
        }
        return m1994isWithinEllipseVE1yxkc(f, f2, roundRect.m1193getBottomRightCornerRadiuskKHJgLs(), right2, bottom);
    }

    private static final boolean cornersFit(RoundRect roundRect) {
        return CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m1153getXimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m1153getXimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs()) + CornerRadius.m1153getXimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m1154getYimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m1154getYimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs()) <= roundRect.getHeight() && CornerRadius.m1154getYimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs()) + CornerRadius.m1154getYimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getHeight();
    }

    /* renamed from: isWithinEllipse-VE1yxkc, reason: not valid java name */
    private static final boolean m1994isWithinEllipseVE1yxkc(float f, float f2, long j, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        float m1153getXimpl = CornerRadius.m1153getXimpl(j);
        float m1154getYimpl = CornerRadius.m1154getYimpl(j);
        return ((f5 * f5) / (m1153getXimpl * m1153getXimpl)) + ((f6 * f6) / (m1154getYimpl * m1154getYimpl)) <= 1.0f;
    }

    private static final boolean isInPath(Path path, float f, float f2, Path path2, Path path3) {
        Rect rect = new Rect(f - 0.005f, f2 - 0.005f, f + 0.005f, f2 + 0.005f);
        if (path2 == null) {
            path2 = AndroidPath_androidKt.Path();
        }
        Path.CC.addRect$default(path2, rect, null, 2, null);
        if (path3 == null) {
            path3 = AndroidPath_androidKt.Path();
        }
        path3.mo1249opN5in7k0(path, path2, PathOperation.Companion.m1400getIntersectb3I0S0c());
        boolean isEmpty = path3.isEmpty();
        path3.reset();
        path2.reset();
        return !isEmpty;
    }
}
