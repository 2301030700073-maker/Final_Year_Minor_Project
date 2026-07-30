package defpackage;

import android.graphics.Rect;
import android.view.DisplayCutout;
import j$.util.Objects;
import java.util.List;

/* renamed from: Fe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0207Fe {

    /* renamed from: do, reason: not valid java name */
    public final DisplayCutout f1076do;

    /* renamed from: Fe$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: case, reason: not valid java name */
        public static int m623case(DisplayCutout displayCutout) {
            int safeInsetTop;
            safeInsetTop = displayCutout.getSafeInsetTop();
            return safeInsetTop;
        }

        /* renamed from: do, reason: not valid java name */
        public static DisplayCutout m624do(Rect rect, List<Rect> list) {
            return new DisplayCutout(rect, list);
        }

        /* renamed from: for, reason: not valid java name */
        public static int m625for(DisplayCutout displayCutout) {
            int safeInsetBottom;
            safeInsetBottom = displayCutout.getSafeInsetBottom();
            return safeInsetBottom;
        }

        /* renamed from: if, reason: not valid java name */
        public static List<Rect> m626if(DisplayCutout displayCutout) {
            List<Rect> boundingRects;
            boundingRects = displayCutout.getBoundingRects();
            return boundingRects;
        }

        /* renamed from: new, reason: not valid java name */
        public static int m627new(DisplayCutout displayCutout) {
            int safeInsetLeft;
            safeInsetLeft = displayCutout.getSafeInsetLeft();
            return safeInsetLeft;
        }

        /* renamed from: try, reason: not valid java name */
        public static int m628try(DisplayCutout displayCutout) {
            int safeInsetRight;
            safeInsetRight = displayCutout.getSafeInsetRight();
            return safeInsetRight;
        }
    }

    public C0207Fe(DisplayCutout displayCutout) {
        this.f1076do = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0207Fe.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f1076do, ((C0207Fe) obj).f1076do);
    }

    public final int hashCode() {
        int hashCode;
        DisplayCutout displayCutout = this.f1076do;
        if (displayCutout == null) {
            return 0;
        }
        hashCode = displayCutout.hashCode();
        return hashCode;
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f1076do + "}";
    }
}
