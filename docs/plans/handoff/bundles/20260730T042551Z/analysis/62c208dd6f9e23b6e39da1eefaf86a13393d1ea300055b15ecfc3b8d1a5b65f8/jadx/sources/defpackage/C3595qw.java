package defpackage;

import android.graphics.Paint;
import android.graphics.Rect;

/* renamed from: qw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3595qw {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<C3712sw<Rect, Rect>> f15175do = new ThreadLocal<>();

    /* renamed from: qw$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static boolean m7909do(Paint paint, String str) {
            boolean hasGlyph;
            hasGlyph = paint.hasGlyph(str);
            return hasGlyph;
        }
    }
}
