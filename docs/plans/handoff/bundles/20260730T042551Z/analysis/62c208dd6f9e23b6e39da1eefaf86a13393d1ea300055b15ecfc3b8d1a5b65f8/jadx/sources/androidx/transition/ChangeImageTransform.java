package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.transition.Ccase;
import androidx.transition.Transition;
import com.joeykrim.rootcheck.R;
import defpackage.C2893hs;
import defpackage.C3500pI;
import defpackage.C3703sn;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeImageTransform extends Transition {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f7814do = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7812do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7813do = new Cif();

    /* renamed from: androidx.transition.ChangeImageTransform$do, reason: invalid class name */
    public class Cdo implements TypeEvaluator<Matrix> {
        @Override // android.animation.TypeEvaluator
        public final /* bridge */ /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f7815do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f7815do = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7815do[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$if, reason: invalid class name */
    public class Cif extends Property<ImageView, Matrix> {
        public Cif() {
            super(Matrix.class, "animatedTransform");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ImageView imageView, Matrix matrix) {
            C3703sn.m8137do(imageView, matrix);
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$new, reason: invalid class name */
    public static class Cnew extends AnimatorListenerAdapter implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Matrix f7816do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ImageView f7817do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7818do = true;

        /* renamed from: if, reason: not valid java name */
        public final Matrix f7819if;

        public Cnew(ImageView imageView, Matrix matrix, Matrix matrix2) {
            this.f7817do = imageView;
            this.f7816do = matrix;
            this.f7819if = matrix2;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case */
        public final void mo4604case(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for */
        public final void mo4607for(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
            ImageView imageView = this.f7817do;
            Matrix matrix = (Matrix) imageView.getTag(R.id.transition_image_transform);
            if (matrix != null) {
                C3703sn.m8137do(imageView, matrix);
                imageView.setTag(R.id.transition_image_transform, null);
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            this.f7818do = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            Matrix matrix = (Matrix) ((ObjectAnimator) animator).getAnimatedValue();
            ImageView imageView = this.f7817do;
            imageView.setTag(R.id.transition_image_transform, matrix);
            C3703sn.m8137do(imageView, this.f7819if);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            ImageView imageView = this.f7817do;
            Matrix matrix = (Matrix) imageView.getTag(R.id.transition_image_transform);
            if (matrix != null) {
                C3703sn.m8137do(imageView, matrix);
                imageView.setTag(R.id.transition_image_transform, null);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            this.f7818do = false;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
            if (this.f7818do) {
                ImageView imageView = this.f7817do;
                imageView.setTag(R.id.transition_image_transform, this.f7816do);
                C3703sn.m8137do(imageView, this.f7819if);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.f7818do = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.f7818do = false;
        }
    }

    public ChangeImageTransform() {
    }

    @Override // androidx.transition.Transition
    /* renamed from: class */
    public final Animator mo2719class(ViewGroup viewGroup, C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI != null && c3500pI2 != null) {
            HashMap hashMap = c3500pI.f14906do;
            Rect rect = (Rect) hashMap.get("android:changeImageTransform:bounds");
            HashMap hashMap2 = c3500pI2.f14906do;
            Rect rect2 = (Rect) hashMap2.get("android:changeImageTransform:bounds");
            if (rect != null && rect2 != null) {
                Matrix matrix = (Matrix) hashMap.get("android:changeImageTransform:matrix");
                Matrix matrix2 = (Matrix) hashMap2.get("android:changeImageTransform:matrix");
                boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                if (rect.equals(rect2) && z) {
                    return null;
                }
                ImageView imageView = (ImageView) c3500pI2.f14904do;
                Drawable drawable = imageView.getDrawable();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Cif cif = f7813do;
                if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                    Cdo cdo = f7812do;
                    C2893hs.Cdo cdo2 = C2893hs.f13369do;
                    return ObjectAnimator.ofObject(imageView, cif, cdo, cdo2, cdo2);
                }
                if (matrix == null) {
                    matrix = C2893hs.f13369do;
                }
                if (matrix2 == null) {
                    matrix2 = C2893hs.f13369do;
                }
                cif.set(imageView, matrix);
                ObjectAnimator ofObject = ObjectAnimator.ofObject(imageView, cif, new Ccase.Cif(), matrix, matrix2);
                Cnew cnew = new Cnew(imageView, matrix, matrix2);
                ofObject.addListener(cnew);
                ofObject.addPauseListener(cnew);
                mo4631do(cnew);
                return ofObject;
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        m4612implements(c3500pI, true);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4612implements(C3500pI c3500pI, boolean z) {
        Matrix matrix;
        View view = c3500pI.f14904do;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() == null) {
                return;
            }
            HashMap hashMap = c3500pI.f14906do;
            hashMap.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            Matrix matrix2 = z ? (Matrix) imageView.getTag(R.id.transition_image_transform) : null;
            if (matrix2 == null) {
                Drawable drawable = imageView.getDrawable();
                if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
                    matrix2 = new Matrix(imageView.getImageMatrix());
                } else {
                    int i = Cfor.f7815do[imageView.getScaleType().ordinal()];
                    if (i == 1) {
                        Drawable drawable2 = imageView.getDrawable();
                        matrix = new Matrix();
                        matrix.postScale(imageView.getWidth() / drawable2.getIntrinsicWidth(), imageView.getHeight() / drawable2.getIntrinsicHeight());
                    } else if (i != 2) {
                        matrix2 = new Matrix(imageView.getImageMatrix());
                    } else {
                        Drawable drawable3 = imageView.getDrawable();
                        int intrinsicWidth = drawable3.getIntrinsicWidth();
                        float width = imageView.getWidth();
                        float f = intrinsicWidth;
                        int intrinsicHeight = drawable3.getIntrinsicHeight();
                        float height = imageView.getHeight();
                        float f2 = intrinsicHeight;
                        float max = Math.max(width / f, height / f2);
                        int round = Math.round((width - (f * max)) / 2.0f);
                        int round2 = Math.round((height - (f2 * max)) / 2.0f);
                        matrix = new Matrix();
                        matrix.postScale(max, max);
                        matrix.postTranslate(round, round2);
                    }
                    matrix2 = matrix;
                }
            }
            hashMap.put("android:changeImageTransform:matrix", matrix2);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: import */
    public final String[] mo4603import() {
        return f7814do;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        m4612implements(c3500pI, false);
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
