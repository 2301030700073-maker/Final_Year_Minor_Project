package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.core.graphics.PathParser$PathDataNode;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImplLollipop;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.grack.nanojson.JsonBuilder;
import java.util.ArrayList;
import kotlin.ranges.RangesKt;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FloatingActionButtonImpl {
    public BorderDrawable borderDrawable;
    public RippleDrawable contentBackground;
    public Animator currentAnimator;
    public float elevation;
    public boolean ensureMinTouchTargetSize;
    public MotionSpec hideMotionSpec;
    public float hoveredFocusedTranslationZ;
    public int maxImageSize;
    public int minTouchTargetSize;
    public float pressedTranslationZ;
    public RippleDrawable rippleDrawable;
    public final ConnectionPool shadowViewDelegate;
    public ShapeAppearanceModel shapeAppearance;
    public FloatingActionButtonImplLollipop.AlwaysStatefulMaterialShapeDrawable shapeDrawable;
    public MotionSpec showMotionSpec;
    public final FloatingActionButton view;
    public static final FastOutSlowInInterpolator ELEVATION_ANIM_INTERPOLATOR = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
    public static final int SHOW_ANIM_DURATION_ATTR = R.attr.motionDurationLong2;
    public static final int SHOW_ANIM_EASING_ATTR = R.attr.motionEasingEmphasizedInterpolator;
    public static final int HIDE_ANIM_DURATION_ATTR = R.attr.motionDurationMedium1;
    public static final int HIDE_ANIM_EASING_ATTR = R.attr.motionEasingEmphasizedAccelerateInterpolator;
    public static final int[] PRESSED_ENABLED_STATE_SET = {android.R.attr.state_pressed, android.R.attr.state_enabled};
    public static final int[] HOVERED_FOCUSED_ENABLED_STATE_SET = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] FOCUSED_ENABLED_STATE_SET = {android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] HOVERED_ENABLED_STATE_SET = {android.R.attr.state_hovered, android.R.attr.state_enabled};
    public static final int[] ENABLED_STATE_SET = {android.R.attr.state_enabled};
    public static final int[] EMPTY_STATE_SET = new int[0];
    public boolean shadowPaddingEnabled = true;
    public float imageMatrixScale = 1.0f;
    public int animState = 0;
    public final Rect tmpRect = new Rect();
    public final RectF tmpRectF1 = new RectF();
    public final RectF tmpRectF2 = new RectF();
    public final Matrix tmpMatrix = new Matrix();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$5, reason: invalid class name */
    public final class AnonymousClass5 implements TypeEvaluator {
        public final /* synthetic */ int $r8$classId;
        public Object floatEvaluator;

        public /* synthetic */ AnonymousClass5(int i) {
            this.$r8$classId = i;
        }

        @Override // android.animation.TypeEvaluator
        public final Object evaluate(float f, Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    float floatValue = ((FloatEvaluator) this.floatEvaluator).evaluate(f, (Number) obj, (Number) obj2).floatValue();
                    if (floatValue < 0.1f) {
                        floatValue = 0.0f;
                    }
                    return Float.valueOf(floatValue);
                default:
                    PathParser$PathDataNode[] pathParser$PathDataNodeArr = (PathParser$PathDataNode[]) obj;
                    PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = (PathParser$PathDataNode[]) obj2;
                    if (!Okio.canMorph(pathParser$PathDataNodeArr, pathParser$PathDataNodeArr2)) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Can't interpolate between two incompatible pathData");
                        return null;
                    }
                    if (!Okio.canMorph((PathParser$PathDataNode[]) this.floatEvaluator, pathParser$PathDataNodeArr)) {
                        this.floatEvaluator = Okio.deepCopyNodes(pathParser$PathDataNodeArr);
                    }
                    int i = 0;
                    while (true) {
                        int length = pathParser$PathDataNodeArr.length;
                        PathParser$PathDataNode[] pathParser$PathDataNodeArr3 = (PathParser$PathDataNode[]) this.floatEvaluator;
                        if (i >= length) {
                            return pathParser$PathDataNodeArr3;
                        }
                        PathParser$PathDataNode pathParser$PathDataNode = pathParser$PathDataNodeArr3[i];
                        PathParser$PathDataNode pathParser$PathDataNode2 = pathParser$PathDataNodeArr[i];
                        PathParser$PathDataNode pathParser$PathDataNode3 = pathParser$PathDataNodeArr2[i];
                        pathParser$PathDataNode.getClass();
                        pathParser$PathDataNode.mType = pathParser$PathDataNode2.mType;
                        int i2 = 0;
                        while (true) {
                            float[] fArr = pathParser$PathDataNode2.mParams;
                            if (i2 < fArr.length) {
                                pathParser$PathDataNode.mParams[i2] = (pathParser$PathDataNode3.mParams[i2] * f) + ((1.0f - f) * fArr[i2]);
                                i2++;
                            }
                        }
                        i++;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DisabledElevationAnimation extends ShadowAnimatorImpl {
        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        public final float getTargetShadowSize() {
            return 0.0f;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ResetElevationAnimation extends ShadowAnimatorImpl {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ FloatingActionButtonImplLollipop this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ResetElevationAnimation(FloatingActionButtonImplLollipop floatingActionButtonImplLollipop, int i) {
            super(floatingActionButtonImplLollipop);
            this.$r8$classId = i;
            this.this$0 = floatingActionButtonImplLollipop;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        public final float getTargetShadowSize() {
            float f;
            float f2;
            int i = this.$r8$classId;
            FloatingActionButtonImplLollipop floatingActionButtonImplLollipop = this.this$0;
            switch (i) {
                case 0:
                    return floatingActionButtonImplLollipop.elevation;
                case 1:
                    f = floatingActionButtonImplLollipop.elevation;
                    f2 = floatingActionButtonImplLollipop.hoveredFocusedTranslationZ;
                    break;
                default:
                    f = floatingActionButtonImplLollipop.elevation;
                    f2 = floatingActionButtonImplLollipop.pressedTranslationZ;
                    break;
            }
            return f + f2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ShadowAnimatorImpl extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        public float shadowSizeEnd;
        public float shadowSizeStart;
        public final /* synthetic */ FloatingActionButtonImplLollipop this$0;
        public boolean validValues;

        public ShadowAnimatorImpl(FloatingActionButtonImplLollipop floatingActionButtonImplLollipop) {
            this.this$0 = floatingActionButtonImplLollipop;
        }

        public abstract float getTargetShadowSize();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            float f = (int) this.shadowSizeEnd;
            FloatingActionButtonImplLollipop.AlwaysStatefulMaterialShapeDrawable alwaysStatefulMaterialShapeDrawable = this.this$0.shapeDrawable;
            if (alwaysStatefulMaterialShapeDrawable != null) {
                alwaysStatefulMaterialShapeDrawable.setElevation(f);
            }
            this.validValues = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            boolean z = this.validValues;
            FloatingActionButtonImplLollipop floatingActionButtonImplLollipop = this.this$0;
            if (!z) {
                FloatingActionButtonImplLollipop.AlwaysStatefulMaterialShapeDrawable alwaysStatefulMaterialShapeDrawable = floatingActionButtonImplLollipop.shapeDrawable;
                this.shadowSizeStart = alwaysStatefulMaterialShapeDrawable == null ? 0.0f : alwaysStatefulMaterialShapeDrawable.drawableState.elevation;
                this.shadowSizeEnd = getTargetShadowSize();
                this.validValues = true;
            }
            float f = this.shadowSizeStart;
            float animatedFraction = (int) ((valueAnimator.getAnimatedFraction() * (this.shadowSizeEnd - f)) + f);
            FloatingActionButtonImplLollipop.AlwaysStatefulMaterialShapeDrawable alwaysStatefulMaterialShapeDrawable2 = floatingActionButtonImplLollipop.shapeDrawable;
            if (alwaysStatefulMaterialShapeDrawable2 != null) {
                alwaysStatefulMaterialShapeDrawable2.setElevation(animatedFraction);
            }
        }
    }

    public FloatingActionButtonImpl(FloatingActionButton floatingActionButton, ConnectionPool connectionPool) {
        int i = 1;
        this.view = floatingActionButton;
        this.shadowViewDelegate = connectionPool;
        JsonBuilder jsonBuilder = new JsonBuilder(11);
        FloatingActionButtonImplLollipop floatingActionButtonImplLollipop = (FloatingActionButtonImplLollipop) this;
        jsonBuilder.addState(createElevationAnimator(new ResetElevationAnimation(floatingActionButtonImplLollipop, 2)));
        jsonBuilder.addState(createElevationAnimator(new ResetElevationAnimation(floatingActionButtonImplLollipop, i)));
        jsonBuilder.addState(createElevationAnimator(new ResetElevationAnimation(floatingActionButtonImplLollipop, i)));
        jsonBuilder.addState(createElevationAnimator(new ResetElevationAnimation(floatingActionButtonImplLollipop, i)));
        jsonBuilder.addState(createElevationAnimator(new ResetElevationAnimation(floatingActionButtonImplLollipop, 0)));
        jsonBuilder.addState(createElevationAnimator(new DisabledElevationAnimation(floatingActionButtonImplLollipop)));
        floatingActionButton.getRotation();
    }

    public static ValueAnimator createElevationAnimator(ShadowAnimatorImpl shadowAnimatorImpl) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(ELEVATION_ANIM_INTERPOLATOR);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(shadowAnimatorImpl);
        valueAnimator.addUpdateListener(shadowAnimatorImpl);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public final void calculateImageMatrixFromScale(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.view.getDrawable();
        if (drawable == null || this.maxImageSize == 0) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.tmpRectF1;
        rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        float f2 = this.maxImageSize;
        RectF rectF2 = this.tmpRectF2;
        rectF2.set(0.0f, 0.0f, f2, f2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        float f3 = this.maxImageSize / 2.0f;
        matrix.postScale(f, f, f3, f3);
    }

    public final AnimatorSet createAnimator(MotionSpec motionSpec, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        int i = 0;
        float[] fArr = {f};
        FloatingActionButton floatingActionButton = this.view;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        motionSpec.getTiming("opacity").apply(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f2);
        motionSpec.getTiming("scale").apply(ofFloat2);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 26) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(i);
            anonymousClass5.floatEvaluator = new FloatEvaluator();
            ofFloat2.setEvaluator(anonymousClass5);
        }
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f2);
        motionSpec.getTiming("scale").apply(ofFloat3);
        if (i2 == 26) {
            AnonymousClass5 anonymousClass52 = new AnonymousClass5(i);
            anonymousClass52.floatEvaluator = new FloatEvaluator();
            ofFloat3.setEvaluator(anonymousClass52);
        }
        arrayList.add(ofFloat3);
        Matrix matrix = this.tmpMatrix;
        calculateImageMatrixFromScale(f3, matrix);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(floatingActionButton, new ImageMatrixProperty(), new TypeEvaluator() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.3
            public final float[] tempStartValues = new float[9];
            public final float[] tempEndValues = new float[9];
            public final Matrix tempMatrix = new Matrix();

            @Override // android.animation.TypeEvaluator
            public final Object evaluate(float f4, Object obj, Object obj2) {
                FloatingActionButtonImpl.this.imageMatrixScale = f4;
                float[] fArr2 = this.tempStartValues;
                ((Matrix) obj).getValues(fArr2);
                float[] fArr3 = this.tempEndValues;
                ((Matrix) obj2).getValues(fArr3);
                for (int i3 = 0; i3 < 9; i3++) {
                    float f5 = fArr3[i3];
                    float f6 = fArr2[i3];
                    fArr3[i3] = Modifier.CC.m(f5, f6, f4, f6);
                }
                Matrix matrix2 = this.tempMatrix;
                matrix2.setValues(fArr3);
                return matrix2;
            }
        }, new Matrix(matrix));
        motionSpec.getTiming("iconScale").apply(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        Options.Companion.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet createDefaultAnimator(final float f, final float f2, final float f3, int i, int i2) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.view;
        final float alpha = floatingActionButton.getAlpha();
        final float scaleX = floatingActionButton.getScaleX();
        final float scaleY = floatingActionButton.getScaleY();
        final float f4 = this.imageMatrixScale;
        final Matrix matrix = new Matrix(this.tmpMatrix);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
                FloatingActionButton floatingActionButton2 = floatingActionButtonImpl.view;
                floatingActionButton2.setAlpha(AnimationUtils.lerp(alpha, f, 0.0f, 0.2f, floatValue));
                float f5 = scaleX;
                float f6 = f2;
                floatingActionButton2.setScaleX(AnimationUtils.lerp(f5, f6, floatValue));
                floatingActionButton2.setScaleY(AnimationUtils.lerp(scaleY, f6, floatValue));
                float f7 = f4;
                float f8 = f3;
                floatingActionButtonImpl.imageMatrixScale = AnimationUtils.lerp(f7, f8, floatValue);
                float lerp = AnimationUtils.lerp(f7, f8, floatValue);
                Matrix matrix2 = matrix;
                floatingActionButtonImpl.calculateImageMatrixFromScale(lerp, matrix2);
                floatingActionButton2.setImageMatrix(matrix2);
            }
        });
        arrayList.add(ofFloat);
        Options.Companion.playTogether(animatorSet, arrayList);
        animatorSet.setDuration(Cookie.Companion.resolveThemeDuration(floatingActionButton.getContext(), i, floatingActionButton.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(Cookie.Companion.resolveThemeInterpolator(floatingActionButton.getContext(), i2, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    public abstract void onElevationsChanged(float f, float f2, float f3);

    public final void setShapeAppearance(ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearance = shapeAppearanceModel;
        FloatingActionButtonImplLollipop.AlwaysStatefulMaterialShapeDrawable alwaysStatefulMaterialShapeDrawable = this.shapeDrawable;
        if (alwaysStatefulMaterialShapeDrawable != null) {
            alwaysStatefulMaterialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Drawable.Callback callback = this.rippleDrawable;
        if (callback instanceof Shapeable) {
            ((Shapeable) callback).setShapeAppearanceModel(shapeAppearanceModel);
        }
        BorderDrawable borderDrawable = this.borderDrawable;
        if (borderDrawable != null) {
            borderDrawable.shapeAppearanceModel = shapeAppearanceModel;
            borderDrawable.invalidateSelf();
        }
    }

    public final void updatePadding() {
        FloatingActionButtonImplLollipop floatingActionButtonImplLollipop = (FloatingActionButtonImplLollipop) this;
        ConnectionPool connectionPool = floatingActionButtonImplLollipop.shadowViewDelegate;
        boolean z = ((FloatingActionButton) connectionPool.delegate).compatPadding;
        boolean z2 = floatingActionButtonImplLollipop.ensureMinTouchTargetSize;
        Rect rect = this.tmpRect;
        FloatingActionButton floatingActionButton = floatingActionButtonImplLollipop.view;
        if (z) {
            int max = z2 ? Math.max((floatingActionButtonImplLollipop.minTouchTargetSize - floatingActionButton.getSizeDimension()) / 2, 0) : 0;
            int max2 = Math.max(max, (int) Math.ceil(floatingActionButtonImplLollipop.shadowPaddingEnabled ? floatingActionButton.getElevation() + floatingActionButtonImplLollipop.pressedTranslationZ : 0.0f));
            int max3 = Math.max(max, (int) Math.ceil(r2 * 1.5f));
            rect.set(max2, max3, max2, max3);
        } else {
            if (z2) {
                int sizeDimension = floatingActionButton.getSizeDimension();
                int i = floatingActionButtonImplLollipop.minTouchTargetSize;
                if (sizeDimension < i) {
                    int sizeDimension2 = (i - floatingActionButton.getSizeDimension()) / 2;
                    rect.set(sizeDimension2, sizeDimension2, sizeDimension2, sizeDimension2);
                }
            }
            rect.set(0, 0, 0, 0);
        }
        RangesKt.checkNotNull(this.contentBackground, "Didn't initialize content background");
        boolean z3 = ((FloatingActionButton) connectionPool.delegate).compatPadding;
        ConnectionPool connectionPool2 = this.shadowViewDelegate;
        if (z3 || (floatingActionButtonImplLollipop.ensureMinTouchTargetSize && floatingActionButton.getSizeDimension() < floatingActionButtonImplLollipop.minTouchTargetSize)) {
            super/*android.widget.ImageButton*/.setBackgroundDrawable(new InsetDrawable((Drawable) this.contentBackground, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            RippleDrawable rippleDrawable = this.contentBackground;
            if (rippleDrawable != null) {
                super/*android.widget.ImageButton*/.setBackgroundDrawable(rippleDrawable);
            } else {
                connectionPool2.getClass();
            }
        }
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) connectionPool2.delegate;
        floatingActionButton2.shadowPadding.set(i2, i3, i4, i5);
        int i6 = floatingActionButton2.imagePadding;
        floatingActionButton2.setPadding(i2 + i6, i3 + i6, i4 + i6, i5 + i6);
    }

    public final void onTranslationChanged() {
    }
}
