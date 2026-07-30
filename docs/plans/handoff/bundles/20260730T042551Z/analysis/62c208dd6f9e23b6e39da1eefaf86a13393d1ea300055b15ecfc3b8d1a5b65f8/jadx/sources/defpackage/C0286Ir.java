package defpackage;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.joeykrim.rootcheck.R;

/* renamed from: Ir, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0286Ir extends AbstractC0176Dr<View> {

    /* renamed from: do, reason: not valid java name */
    public final float f1570do;

    /* renamed from: if, reason: not valid java name */
    public final float f1571if;

    public C0286Ir(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f1570do = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f1571if = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    /* renamed from: do, reason: not valid java name */
    public final AnimatorSet m974do() {
        AnimatorSet animatorSet = new AnimatorSet();
        Object obj = ((AbstractC0176Dr) this).f691do;
        animatorSet.playTogether(ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(obj, (Property<Object, Float>) View.SCALE_Y, 1.0f));
        if (obj instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) obj;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new C0166Dh());
        return animatorSet;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m975if(float f) {
        float interpolation = ((AbstractC0176Dr) this).f690do.getInterpolation(f);
        V v = ((AbstractC0176Dr) this).f691do;
        float width = v.getWidth();
        float height = v.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f2 = this.f1570do / width;
        float f3 = this.f1571if / height;
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        float m7823for = 1.0f - Cpublic.m7823for(f2, 0.0f, interpolation, 0.0f);
        float m7823for2 = 1.0f - Cpublic.m7823for(f3, 0.0f, interpolation, 0.0f);
        v.setScaleX(m7823for);
        v.setPivotY(height);
        v.setScaleY(m7823for2);
        if (v instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(m7823for2 != 0.0f ? m7823for / m7823for2 : 1.0f);
            }
        }
    }
}
