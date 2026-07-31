package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.ChildrenAlphaProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.MotionTiming;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.grack.nanojson.JsonBuilder;
import io.noties.markwon.BlockHandlerDef;
import java.util.ArrayList;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public float dependencyOriginalTranslationX;
    public float dependencyOriginalTranslationY;
    public final int[] tmpArray;
    public final Rect tmpRect;
    public final RectF tmpRectF1;
    public final RectF tmpRectF2;

    public FabTransformationBehavior() {
        this.tmpRect = new Rect();
        this.tmpRectF1 = new RectF();
        this.tmpRectF2 = new RectF();
        this.tmpArray = new int[2];
    }

    public static Pair calculateMotionTiming(float f, float f2, boolean z, JsonBuilder jsonBuilder) {
        MotionTiming timing;
        MotionTiming timing2;
        if (f == 0.0f || f2 == 0.0f) {
            timing = ((MotionSpec) jsonBuilder.json).getTiming("translationXLinear");
            timing2 = ((MotionSpec) jsonBuilder.json).getTiming("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            timing = ((MotionSpec) jsonBuilder.json).getTiming("translationXCurveDownwards");
            timing2 = ((MotionSpec) jsonBuilder.json).getTiming("translationYCurveDownwards");
        } else {
            timing = ((MotionSpec) jsonBuilder.json).getTiming("translationXCurveUpwards");
            timing2 = ((MotionSpec) jsonBuilder.json).getTiming("translationYCurveUpwards");
        }
        return new Pair(timing, timing2);
    }

    public static float calculateValueOfAnimationAtEndOfExpansion(JsonBuilder jsonBuilder, MotionTiming motionTiming, float f) {
        long j = motionTiming.delay;
        long j2 = motionTiming.duration;
        MotionTiming timing = ((MotionSpec) jsonBuilder.json).getTiming("expansion");
        return AnimationUtils.lerp(f, 0.0f, motionTiming.getInterpolator().getInterpolation((((timing.delay + timing.duration) + 17) - j) / j2));
    }

    public final float calculateTranslationX(View view, View view2, BlockHandlerDef blockHandlerDef) {
        RectF rectF = this.tmpRectF1;
        calculateWindowBounds(view, rectF);
        rectF.offset(this.dependencyOriginalTranslationX, this.dependencyOriginalTranslationY);
        RectF rectF2 = this.tmpRectF2;
        calculateWindowBounds(view2, rectF2);
        blockHandlerDef.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public final float calculateTranslationY(View view, View view2, BlockHandlerDef blockHandlerDef) {
        RectF rectF = this.tmpRectF1;
        calculateWindowBounds(view, rectF);
        rectF.offset(this.dependencyOriginalTranslationX, this.dependencyOriginalTranslationY);
        RectF rectF2 = this.tmpRectF2;
        calculateWindowBounds(view2, rectF2);
        blockHandlerDef.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final void calculateWindowBounds(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.tmpArray);
        rectF.offsetTo(r3[0], r3[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean layoutDependsOn(View view, View view2) {
        int expandedComponentIdHint;
        if (view.getVisibility() != 8) {
            return (view2 instanceof FloatingActionButton) && ((expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint()) == 0 || expandedComponentIdHint == view.getId());
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet onCreateExpandedStateChangeAnimation(final View view, final View view2, final boolean z, boolean z2) {
        ObjectAnimator ofFloat;
        int i;
        float f;
        ObjectAnimator ofFloat2;
        ObjectAnimator ofFloat3;
        ObjectAnimator ofFloat4;
        JsonBuilder onCreateMotionSpec = onCreateMotionSpec(view2.getContext(), z);
        if (z) {
            this.dependencyOriginalTranslationX = view.getTranslationX();
            this.dependencyOriginalTranslationY = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        float elevation = view2.getElevation() - view.getElevation();
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        ((MotionSpec) onCreateMotionSpec.json).getTiming("elevation").apply(ofFloat);
        arrayList.add(ofFloat);
        float calculateTranslationX = calculateTranslationX(view, view2, (BlockHandlerDef) onCreateMotionSpec.root);
        float calculateTranslationY = calculateTranslationY(view, view2, (BlockHandlerDef) onCreateMotionSpec.root);
        Pair calculateMotionTiming = calculateMotionTiming(calculateTranslationX, calculateTranslationY, z, onCreateMotionSpec);
        MotionTiming motionTiming = (MotionTiming) calculateMotionTiming.first;
        MotionTiming motionTiming2 = (MotionTiming) calculateMotionTiming.second;
        RectF rectF = this.tmpRectF1;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-calculateTranslationX);
                view2.setTranslationY(-calculateTranslationY);
            }
            i = 0;
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            f = 0.0f;
            ofFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float calculateValueOfAnimationAtEndOfExpansion = calculateValueOfAnimationAtEndOfExpansion(onCreateMotionSpec, motionTiming, -calculateTranslationX);
            float calculateValueOfAnimationAtEndOfExpansion2 = calculateValueOfAnimationAtEndOfExpansion(onCreateMotionSpec, motionTiming2, -calculateTranslationY);
            Rect rect = this.tmpRect;
            view2.getWindowVisibleDisplayFrame(rect);
            rectF.set(rect);
            RectF rectF2 = this.tmpRectF2;
            calculateWindowBounds(view2, rectF2);
            rectF2.offset(calculateValueOfAnimationAtEndOfExpansion, calculateValueOfAnimationAtEndOfExpansion2);
            rectF2.intersect(rectF);
            rectF.set(rectF2);
        } else {
            i = 0;
            f = 0.0f;
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -calculateTranslationX);
            ofFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -calculateTranslationY);
        }
        motionTiming.apply(ofFloat2);
        motionTiming2.apply(ofFloat3);
        arrayList.add(ofFloat2);
        arrayList.add(ofFloat3);
        rectF.width();
        rectF.height();
        float calculateTranslationX2 = calculateTranslationX(view, view2, (BlockHandlerDef) onCreateMotionSpec.root);
        float calculateTranslationY2 = calculateTranslationY(view, view2, (BlockHandlerDef) onCreateMotionSpec.root);
        Pair calculateMotionTiming2 = calculateMotionTiming(calculateTranslationX2, calculateTranslationY2, z, onCreateMotionSpec);
        MotionTiming motionTiming3 = (MotionTiming) calculateMotionTiming2.first;
        MotionTiming motionTiming4 = (MotionTiming) calculateMotionTiming2.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            calculateTranslationX2 = this.dependencyOriginalTranslationX;
        }
        float[] fArr = new float[1];
        fArr[i] = calculateTranslationX2;
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        if (!z) {
            calculateTranslationY2 = this.dependencyOriginalTranslationY;
        }
        float[] fArr2 = new float[1];
        fArr2[i] = calculateTranslationY2;
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        motionTiming3.apply(ofFloat5);
        motionTiming4.apply(ofFloat6);
        arrayList.add(ofFloat5);
        arrayList.add(ofFloat6);
        if (view2 instanceof ViewGroup) {
            View findViewById = view2.findViewById(R.id.mtrl_child_content_container);
            ViewGroup viewGroup = findViewById != null ? findViewById instanceof ViewGroup ? (ViewGroup) findViewById : null : (ViewGroup) view2;
            if (viewGroup != null) {
                if (z) {
                    if (!z2) {
                        ChildrenAlphaProperty.CHILDREN_ALPHA.set(viewGroup, Float.valueOf(f));
                    }
                    ChildrenAlphaProperty childrenAlphaProperty = ChildrenAlphaProperty.CHILDREN_ALPHA;
                    float[] fArr3 = new float[1];
                    fArr3[i] = 1.0f;
                    ofFloat4 = ObjectAnimator.ofFloat(viewGroup, childrenAlphaProperty, fArr3);
                } else {
                    ChildrenAlphaProperty childrenAlphaProperty2 = ChildrenAlphaProperty.CHILDREN_ALPHA;
                    float[] fArr4 = new float[1];
                    fArr4[i] = f;
                    ofFloat4 = ObjectAnimator.ofFloat(viewGroup, childrenAlphaProperty2, fArr4);
                }
                ((MotionSpec) onCreateMotionSpec.json).getTiming("contentFade").apply(ofFloat4);
                arrayList.add(ofFloat4);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        Options.Companion.playTogether(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                view2.setVisibility(4);
                View view3 = view;
                view3.setAlpha(1.0f);
                view3.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    View view3 = view;
                    view3.setAlpha(0.0f);
                    view3.setVisibility(4);
                }
            }
        });
        int size = arrayList2.size();
        for (int i2 = i; i2 < size; i2++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i2));
        }
        return animatorSet;
    }

    public abstract JsonBuilder onCreateMotionSpec(Context context, boolean z);

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tmpRect = new Rect();
        this.tmpRectF1 = new RectF();
        this.tmpRectF2 = new RectF();
        this.tmpArray = new int[2];
    }
}
