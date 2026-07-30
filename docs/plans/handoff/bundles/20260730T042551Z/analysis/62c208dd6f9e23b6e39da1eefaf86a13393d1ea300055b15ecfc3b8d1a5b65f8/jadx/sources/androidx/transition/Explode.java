package androidx.transition;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C3500pI;
import defpackage.N7;

/* loaded from: classes.dex */
public class Explode extends Visibility {

    /* renamed from: for, reason: not valid java name */
    public final int[] f7853for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final DecelerateInterpolator f7852do = new DecelerateInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static final AccelerateInterpolator f7851do = new AccelerateInterpolator();

    public Explode() {
        this.f7853for = new int[2];
        ((Transition) this).f7874do = new N7();
    }

    /* renamed from: implements, reason: not valid java name */
    private void m4616implements(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        int[] iArr = this.f7853for;
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        c3500pI.f14906do.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        float f;
        float f2;
        if (c3500pI == null) {
            return null;
        }
        Rect rect = (Rect) c3500pI.f14906do.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c3500pI.f14904do.getTag(R.id.transition_position);
        if (iArr != null) {
            f = (r7 - rect.left) + translationX;
            f2 = (r0 - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f = translationX;
            f2 = translationY;
        }
        b(viewGroup, rect, this.f7853for);
        return Celse.m4662do(view, c3500pI, i, i2, translationX, translationY, f + r0[0], f2 + r0[1], f7851do, this);
    }

    public final void b(View view, Rect rect, int[] iArr) {
        int centerX;
        int centerY;
        int[] iArr2 = this.f7853for;
        view.getLocationOnScreen(iArr2);
        int i = iArr2[0];
        int i2 = iArr2[1];
        Transition.Cfor cfor = ((Transition) this).f7877do;
        Rect mo4653do = cfor == null ? null : cfor.mo4653do();
        if (mo4653do == null) {
            centerX = Math.round(view.getTranslationX()) + (view.getWidth() / 2) + i;
            centerY = Math.round(view.getTranslationY()) + (view.getHeight() / 2) + i2;
        } else {
            centerX = mo4653do.centerX();
            centerY = mo4653do.centerY();
        }
        float centerX2 = rect.centerX() - centerX;
        float centerY2 = rect.centerY() - centerY;
        if (centerX2 == 0.0f && centerY2 == 0.0f) {
            centerX2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY2 = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float sqrt = (float) Math.sqrt((centerY2 * centerY2) + (centerX2 * centerX2));
        int i3 = centerX - i;
        int i4 = centerY - i2;
        float max = Math.max(i3, view.getWidth() - i3);
        float max2 = Math.max(i4, view.getHeight() - i4);
        float sqrt2 = (float) Math.sqrt((max2 * max2) + (max * max));
        iArr[0] = Math.round((centerX2 / sqrt) * sqrt2);
        iArr[1] = Math.round(sqrt2 * (centerY2 / sqrt));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4658implements(c3500pI);
        m4616implements(c3500pI);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: synchronized, reason: not valid java name */
    public final Animator mo4617synchronized(ViewGroup viewGroup, View view, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI2 == null) {
            return null;
        }
        Rect rect = (Rect) c3500pI2.f14906do.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        b(viewGroup, rect, this.f7853for);
        return Celse.m4662do(view, c3500pI2, rect.left, rect.top, translationX + r0[0], translationY + r0[1], translationX, translationY, f7852do, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4658implements(c3500pI);
        m4616implements(c3500pI);
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7853for = new int[2];
        ((Transition) this).f7874do = new N7();
    }
}
