package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.super, reason: invalid class name */
/* loaded from: classes.dex */
public class Csuper extends RecyclerView.Creturn {

    /* renamed from: do, reason: not valid java name */
    public float f7677do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SuppressLint({"UnknownNullness"})
    public PointF f7678do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DisplayMetrics f7679do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinearInterpolator f7681do = new LinearInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DecelerateInterpolator f7680do = new DecelerateInterpolator();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7683for = false;

    /* renamed from: if, reason: not valid java name */
    public int f7684if = 0;

    /* renamed from: for, reason: not valid java name */
    public int f7682for = 0;

    @SuppressLint({"UnknownNullness"})
    public Csuper(Context context) {
        this.f7679do = context.getResources().getDisplayMetrics();
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4569try(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: case, reason: not valid java name */
    public int mo4570case(View view, int i) {
        RecyclerView.Cclass cclass = ((RecyclerView.Creturn) this).f7428do;
        if (cclass == null || !cclass.mo4323try()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m4569try((view.getLeft() - RecyclerView.Cclass.m4385strictfp(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, RecyclerView.Cclass.m4386synchronized(view) + view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, cclass.m4391interface(), cclass.f7384new - cclass.m4393protected(), i);
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: else, reason: not valid java name */
    public int mo4571else(View view, int i) {
        RecyclerView.Cclass cclass = ((RecyclerView.Creturn) this).f7428do;
        if (cclass == null || !cclass.mo4316case()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m4569try((view.getTop() - RecyclerView.Cclass.b(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, RecyclerView.Cclass.m4384static(view) + view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, cclass.m4396transient(), cclass.f7386try - cclass.m4397volatile(), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    @Override // androidx.recyclerview.widget.RecyclerView.Creturn
    @android.annotation.SuppressLint({"UnknownNullness"})
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4444for(android.view.View r7, androidx.recyclerview.widget.RecyclerView.Creturn.Cdo r8) {
        /*
            r6 = this;
            android.graphics.PointF r0 = r6.f7678do
            r1 = -1
            r2 = 0
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L15
            float r0 = r0.x
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            if (r0 <= 0) goto L13
            r0 = 1
            goto L16
        L13:
            r0 = -1
            goto L16
        L15:
            r0 = 0
        L16:
            int r0 = r6.mo4570case(r7, r0)
            android.graphics.PointF r5 = r6.f7678do
            if (r5 == 0) goto L29
            float r5 = r5.y
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 != 0) goto L25
            goto L29
        L25:
            if (r4 <= 0) goto L2a
            r1 = 1
            goto L2a
        L29:
            r1 = 0
        L2a:
            int r7 = r6.mo4571else(r7, r1)
            int r1 = r0 * r0
            int r2 = r7 * r7
            int r2 = r2 + r1
            double r1 = (double) r2
            double r1 = java.lang.Math.sqrt(r1)
            int r1 = (int) r1
            int r1 = r6.mo4562this(r1)
            double r1 = (double) r1
            r4 = 4599717252057688074(0x3fd57a786c22680a, double:0.3356)
            double r1 = r1 / r4
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            if (r1 <= 0) goto L59
            int r0 = -r0
            int r7 = -r7
            android.view.animation.DecelerateInterpolator r2 = r6.f7680do
            r8.f7433do = r0
            r8.f7437if = r7
            r8.f7436for = r1
            r8.f7434do = r2
            r8.f7435do = r3
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.Csuper.mo4444for(android.view.View, androidx.recyclerview.widget.RecyclerView$return$do):void");
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: goto */
    public float mo363goto(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: this */
    public int mo4562this(int i) {
        float abs = Math.abs(i);
        if (!this.f7683for) {
            this.f7677do = mo363goto(this.f7679do);
            this.f7683for = true;
        }
        return (int) Math.ceil(abs * this.f7677do);
    }
}
