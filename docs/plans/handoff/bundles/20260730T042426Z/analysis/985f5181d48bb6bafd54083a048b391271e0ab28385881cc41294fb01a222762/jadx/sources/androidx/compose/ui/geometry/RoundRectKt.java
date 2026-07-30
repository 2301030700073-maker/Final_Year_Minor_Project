package androidx.compose.ui.geometry;

/* compiled from: RoundRect.kt */
/* loaded from: classes.dex */
public abstract class RoundRectKt {
    public static final RoundRect RoundRect(float f, float f2, float f3, float f4, float f5, float f6) {
        long CornerRadius = CornerRadiusKt.CornerRadius(f5, f6);
        return new RoundRect(f, f2, f3, f4, CornerRadius, CornerRadius, CornerRadius, CornerRadius, null);
    }

    /* renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m1197RoundRectgG7oq9Y(float f, float f2, float f3, float f4, long j) {
        return RoundRect(f, f2, f3, f4, CornerRadius.m1153getXimpl(j), CornerRadius.m1154getYimpl(j));
    }

    /* renamed from: RoundRect-ZAM2FJo, reason: not valid java name */
    public static final RoundRect m1196RoundRectZAM2FJo(Rect rect, long j, long j2, long j3, long j4) {
        return new RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), j, j2, j3, j4, null);
    }

    public static final Rect getBoundingRect(RoundRect roundRect) {
        return new Rect(roundRect.getLeft(), roundRect.getTop(), roundRect.getRight(), roundRect.getBottom());
    }

    public static final boolean isSimple(RoundRect roundRect) {
        return CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1154getYimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1153getXimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1154getYimpl(roundRect.m1195getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1153getXimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1154getYimpl(roundRect.m1193getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1153getXimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs()) && CornerRadius.m1153getXimpl(roundRect.m1194getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1154getYimpl(roundRect.m1192getBottomLeftCornerRadiuskKHJgLs());
    }
}
