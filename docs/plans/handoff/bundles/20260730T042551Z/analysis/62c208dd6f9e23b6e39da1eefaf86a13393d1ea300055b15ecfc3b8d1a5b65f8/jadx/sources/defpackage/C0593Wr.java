package defpackage;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.search.SearchBar;
import com.joeykrim.rootcheck.R;

/* renamed from: Wr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0593Wr extends AbstractC0176Dr<View> {

    /* renamed from: do, reason: not valid java name */
    public final float f4405do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Rect f4406do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f4407do;

    /* renamed from: for, reason: not valid java name */
    public float f4408for;

    /* renamed from: if, reason: not valid java name */
    public final float f4409if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Rect f4410if;

    public C0593Wr(ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        super(clippableRoundedCornerLayout);
        Resources resources = clippableRoundedCornerLayout.getResources();
        this.f4405do = resources.getDimension(R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.f4409if = resources.getDimension(R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2775for(WindowInsets windowInsets, int i) {
        RoundedCorner roundedCorner;
        int radius;
        roundedCorner = windowInsets.getRoundedCorner(i);
        if (roundedCorner == null) {
            return 0;
        }
        radius = roundedCorner.getRadius();
        return radius;
    }

    /* renamed from: do, reason: not valid java name */
    public final AnimatorSet m2776do(SearchBar searchBar) {
        AnimatorSet animatorSet = new AnimatorSet();
        Object obj = ((AbstractC0176Dr) this).f691do;
        animatorSet.playTogether(ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new C0571Vr(searchBar));
        return animatorSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        r1 = r2.getRootWindowInsets();
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2777if() {
        /*
            r6 = this;
            java.lang.Integer r0 = r6.f4407do
            if (r0 != 0) goto L46
            r0 = 2
            int[] r1 = new int[r0]
            V extends android.view.View r2 = r6.f691do
            r2.getLocationOnScreen(r1)
            r3 = 1
            r1 = r1[r3]
            r4 = 0
            if (r1 != 0) goto L14
            r1 = 1
            goto L15
        L14:
            r1 = 0
        L15:
            if (r1 == 0) goto L40
            int r1 = android.os.Build.VERSION.SDK_INT
            r5 = 31
            if (r1 < r5) goto L40
            android.view.WindowInsets r1 = defpackage.C3245l.m7302catch(r2)
            if (r1 == 0) goto L40
            int r2 = m2775for(r1, r4)
            int r3 = m2775for(r1, r3)
            int r2 = java.lang.Math.max(r2, r3)
            r3 = 3
            int r3 = m2775for(r1, r3)
            int r0 = m2775for(r1, r0)
            int r0 = java.lang.Math.max(r3, r0)
            int r4 = java.lang.Math.max(r2, r0)
        L40:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            r6.f4407do = r0
        L46:
            java.lang.Integer r0 = r6.f4407do
            int r0 = r0.intValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0593Wr.m2777if():int");
    }
}
