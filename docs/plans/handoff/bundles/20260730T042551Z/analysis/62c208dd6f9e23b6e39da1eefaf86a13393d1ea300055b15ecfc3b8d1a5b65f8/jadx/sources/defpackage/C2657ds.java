package defpackage;

import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.joeykrim.rootcheck.R;
import java.util.WeakHashMap;

/* renamed from: ds, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2657ds extends AbstractC0176Dr<View> {

    /* renamed from: do, reason: not valid java name */
    public final float f12550do;

    /* renamed from: for, reason: not valid java name */
    public final float f12551for;

    /* renamed from: if, reason: not valid java name */
    public final float f12552if;

    public C2657ds(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f12550do = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f12552if = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f12551for = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6466do() {
        B4 b4 = ((AbstractC0176Dr) this).f689do;
        ((AbstractC0176Dr) this).f689do = null;
        if (b4 == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        Object obj = ((AbstractC0176Dr) this).f691do;
        animatorSet.playTogether(ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_Y, 1.0f));
        if (obj instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) obj;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(super.f692for);
        animatorSet.start();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6467for(float f, int i, boolean z) {
        float interpolation = ((AbstractC0176Dr) this).f690do.getInterpolation(f);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        V v = ((AbstractC0176Dr) this).f691do;
        boolean z2 = (Gravity.getAbsoluteGravity(i, v.getLayoutDirection()) & 3) == 3;
        boolean z3 = z == z2;
        int width = v.getWidth();
        int height = v.getHeight();
        float f2 = width;
        if (f2 > 0.0f) {
            float f3 = height;
            if (f3 <= 0.0f) {
                return;
            }
            float f4 = this.f12550do / f2;
            float f5 = this.f12552if / f2;
            float f6 = this.f12551for / f3;
            if (z2) {
                f2 = 0.0f;
            }
            v.setPivotX(f2);
            if (!z3) {
                f5 = -f4;
            }
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            float m7823for = Cpublic.m7823for(f5, 0.0f, interpolation, 0.0f);
            float f7 = m7823for + 1.0f;
            v.setScaleX(f7);
            float f8 = 1.0f - (((f6 - 0.0f) * interpolation) + 0.0f);
            v.setScaleY(f8);
            if (v instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) v;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    childAt.setPivotX(z2 ? childAt.getWidth() + (width - childAt.getRight()) : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f9 = z3 ? 1.0f - m7823for : 1.0f;
                    float f10 = f8 != 0.0f ? (f7 / f8) * f9 : 1.0f;
                    childAt.setScaleX(f9);
                    childAt.setScaleY(f10);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6468if(B4 b4, int i, AnimatorListenerAdapter animatorListenerAdapter, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        int i2;
        boolean z = b4.f199do == 0;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        V v = ((AbstractC0176Dr) this).f691do;
        boolean z2 = (Gravity.getAbsoluteGravity(i, v.getLayoutDirection()) & 3) == 3;
        float scaleX = v.getScaleX() * v.getWidth();
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i2 = z2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
        } else {
            i2 = 0;
        }
        float f = scaleX + i2;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (z2) {
            f = -f;
        }
        fArr[0] = f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(v, (Property<V, Float>) property, fArr);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setInterpolator(new C0166Dh());
        ofFloat.setDuration(C2785g1.m6710if(b4.f200for, ((AbstractC0176Dr) this).f688do, super.f693if));
        ofFloat.addListener(new C2599cs(this, z, i));
        ofFloat.addListener(animatorListenerAdapter);
        ofFloat.start();
    }
}
