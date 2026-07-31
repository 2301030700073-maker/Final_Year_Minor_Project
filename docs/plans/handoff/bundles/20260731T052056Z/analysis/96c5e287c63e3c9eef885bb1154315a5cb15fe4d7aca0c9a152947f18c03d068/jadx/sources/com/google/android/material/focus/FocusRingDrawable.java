package com.google.android.material.focus;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.animation.OvershootInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FocusRingDrawable extends DrawableWrapper {
    public static final ColorDrawable EMPTY_DRAWABLE = new ColorDrawable(0);
    public static final int[] FOCUSED_STATE_SET = {R.attr.state_focused, R.attr.state_window_focused};
    public static final OvershootInterpolator INTERPOLATOR = new OvershootInterpolator(4.0f);
    public static final AnonymousClass1 PROPERTY_INTERPOLATION = new FloatProperty() { // from class: com.google.android.material.focus.FocusRingDrawable.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((FocusRingDrawable) obj).interpolation);
        }

        public final void setValue(Object obj, float f) {
            FocusRingDrawable focusRingDrawable = (FocusRingDrawable) obj;
            focusRingDrawable.interpolation = f;
            focusRingDrawable.invalidateSelf();
        }
    };
    public ObjectAnimator animator;
    public boolean focused;
    public float interpolation;
    public WeakReference materialShapeDrawable;
    public final Matrix matrix;
    public boolean mutated;
    public final Paint paint;
    public final ActivityLoginBinding pathProvider;
    public boolean previousStateSetEmpty;
    public float shapeAppearanceCornerSize;
    public final Path shapeAppearancePath;
    public FocusRingState state;
    public final Path tmpPath;
    public final Rect tmpRect;
    public final RectF tmpRectF;

    private FocusRingDrawable(FocusRingState focusRingState, Resources resources) {
        super(null);
        Paint paint = new Paint(1);
        this.paint = paint;
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ActivityLoginBinding.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        FocusRingState focusRingState2 = new FocusRingState(focusRingState);
        this.state = focusRingState2;
        Drawable.ConstantState constantState = focusRingState2.wrappedState;
        if (constantState != null) {
            setDrawable(resources != null ? constantState.newDrawable(resources) : constantState.newDrawable());
        }
        paint.setStyle(Paint.Style.STROKE);
        if (Float.isNaN(this.state.ringOuterStrokeWidth)) {
            return;
        }
        paint.setStrokeWidth(this.state.ringOuterStrokeWidth);
    }

    public static FocusRingDrawable find(Drawable drawable) {
        if (drawable instanceof FocusRingDrawable) {
            return (FocusRingDrawable) drawable;
        }
        if (drawable instanceof DrawableWrapper) {
            Drawable drawable2 = ((DrawableWrapper) drawable).getDrawable();
            if (drawable2 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable2;
            }
        }
        if (!(drawable instanceof LayerDrawable)) {
            return null;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        for (int i = 0; i < layerDrawable.getNumberOfLayers(); i++) {
            Drawable drawable3 = layerDrawable.getDrawable(i);
            if (drawable3 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable3;
            }
        }
        return null;
    }

    public static int getValueDataIfAttr(TypedArray typedArray, int i) {
        if (typedArray.getType(i) != 2) {
            return Integer.MIN_VALUE;
        }
        TypedValue typedValue = new TypedValue();
        if (typedArray.getValue(i, typedValue)) {
            return typedValue.data;
        }
        return Integer.MIN_VALUE;
    }

    public static FocusRingDrawable layer(Context context, LayerDrawable layerDrawable, MaterialShapeDrawable materialShapeDrawable) {
        if (Build.VERSION.SDK_INT < 24 || !Operation$State.resolveBoolean(context.getTheme(), org.wikipedia.R.attr.focusRingsEnabled, false)) {
            return null;
        }
        FocusRingDrawable focusRingDrawable = new FocusRingDrawable(context, EMPTY_DRAWABLE);
        if (materialShapeDrawable != null) {
            focusRingDrawable.materialShapeDrawable = new WeakReference(materialShapeDrawable);
        }
        layerDrawable.addLayer(focusRingDrawable);
        focusRingDrawable.setCallback(layerDrawable);
        return focusRingDrawable;
    }

    public static float maybeResolveDimension(float f, Resources.Theme theme, int i, TypedArray typedArray, int i2, int i3) {
        if (!Float.isNaN(f)) {
            return f;
        }
        Resources resources = theme.getResources();
        if (i != Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (theme.resolveAttribute(i, typedValue, true)) {
                return typedValue.getDimension(resources.getDisplayMetrics());
            }
        }
        float dimension = typedArray.getDimension(i2, Float.NaN);
        if (!Float.isNaN(dimension)) {
            return dimension;
        }
        if (i3 == 0) {
            return Float.NaN;
        }
        return resources.getDimension(i3);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        init(theme);
    }

    public final void calculateBounds(RectF rectF) {
        Rect rect = this.state.ringCustomBounds;
        if (rect != null) {
            rectF.set(rect);
            return;
        }
        WeakReference weakReference = this.materialShapeDrawable;
        if (weakReference != null && weakReference.get() != null) {
            rectF.set(((MaterialShapeDrawable) this.materialShapeDrawable.get()).getBounds());
            return;
        }
        if (!(getDrawable() instanceof RippleDrawable)) {
            rectF.set(getBounds());
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) getDrawable();
        Rect rect2 = this.tmpRect;
        rippleDrawable.getHotspotBounds(rect2);
        int radius = rippleDrawable.getRadius();
        if (radius > 0) {
            rect2.inset(Math.max(0, (rect2.width() / 2) - radius), Math.max(0, (rect2.height() / 2) - radius));
        }
        rectF.set(rect2);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0046, code lost:
    
        if (r1.isEmpty() == false) goto L9;
     */
    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.focus.FocusRingDrawable.draw(android.graphics.Canvas):void");
    }

    public final void drawPath(Canvas canvas, Path path, float f, float f2, int i) {
        RectF rectF = this.tmpRectF;
        calculateBounds(rectF);
        float f3 = f * 2.0f;
        float width = 1.0f - (f3 / rectF.width());
        float height = 1.0f - (f3 / rectF.height());
        Matrix matrix = this.matrix;
        matrix.reset();
        matrix.postScale(width, height, rectF.centerX(), rectF.centerY());
        Path path2 = this.tmpPath;
        path.transform(matrix, path2);
        float f4 = f2 * this.interpolation;
        Paint paint = this.paint;
        paint.setStrokeWidth(f4);
        paint.setColor(i);
        canvas.drawPath(path2, paint);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        FocusRingState focusRingState = this.state;
        if (focusRingState.wrappedState == null) {
            return null;
        }
        focusRingState.mChangingConfigurations = getChangingConfigurations();
        return this.state;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean hasFocusStateSpecified() {
        try {
            if (super.hasFocusStateSpecified()) {
                return true;
            }
            return this.state.ringEnabled;
        } catch (NoSuchMethodError unused) {
            return this.state.ringEnabled;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        int[] iArr = R$styleable.FocusRingDrawable;
        TypedArray obtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, iArr, 0, 0) : resources.obtainAttributes(attributeSet, iArr);
        this.state.ringEnabledAttr = getValueDataIfAttr(obtainStyledAttributes, 0);
        if (this.state.ringEnabledAttr == Integer.MIN_VALUE && obtainStyledAttributes.hasValue(0)) {
            FocusRingState focusRingState = this.state;
            focusRingState.ringEnabled = obtainStyledAttributes.getBoolean(0, focusRingState.ringEnabled);
            this.state.ringEnabledInflated = true;
        }
        this.state.ringOuterColorAttr = getValueDataIfAttr(obtainStyledAttributes, 5);
        FocusRingState focusRingState2 = this.state;
        if (focusRingState2.ringOuterColorAttr == Integer.MIN_VALUE) {
            focusRingState2.ringOuterColor = obtainStyledAttributes.getColor(5, Integer.MIN_VALUE);
        }
        this.state.ringInnerColorAttr = getValueDataIfAttr(obtainStyledAttributes, 1);
        FocusRingState focusRingState3 = this.state;
        if (focusRingState3.ringInnerColorAttr == Integer.MIN_VALUE) {
            focusRingState3.ringInnerColor = obtainStyledAttributes.getColor(1, Integer.MIN_VALUE);
        }
        this.state.ringOuterStrokeWidthAttr = getValueDataIfAttr(obtainStyledAttributes, 6);
        FocusRingState focusRingState4 = this.state;
        if (focusRingState4.ringOuterStrokeWidthAttr == Integer.MIN_VALUE) {
            focusRingState4.ringOuterStrokeWidth = obtainStyledAttributes.getDimension(6, Float.NaN);
        }
        this.state.ringInnerStrokeWidthAttr = getValueDataIfAttr(obtainStyledAttributes, 3);
        FocusRingState focusRingState5 = this.state;
        if (focusRingState5.ringInnerStrokeWidthAttr == Integer.MIN_VALUE) {
            focusRingState5.ringInnerStrokeWidth = obtainStyledAttributes.getDimension(3, Float.NaN);
        }
        this.state.ringInnerStrokeWidthAttr = getValueDataIfAttr(obtainStyledAttributes, 3);
        FocusRingState focusRingState6 = this.state;
        if (focusRingState6.ringInnerStrokeWidthAttr == Integer.MIN_VALUE) {
            focusRingState6.ringInnerStrokeWidth = obtainStyledAttributes.getDimension(3, Float.NaN);
        }
        this.state.ringRadiusAttr = getValueDataIfAttr(obtainStyledAttributes, 7);
        FocusRingState focusRingState7 = this.state;
        if (focusRingState7.ringRadiusAttr == Integer.MIN_VALUE) {
            focusRingState7.ringRadius = obtainStyledAttributes.getDimension(7, Float.NaN);
        }
        this.state.ringInsetAttr = getValueDataIfAttr(obtainStyledAttributes, 4);
        FocusRingState focusRingState8 = this.state;
        if (focusRingState8.ringInsetAttr == Integer.MIN_VALUE) {
            focusRingState8.ringInset = obtainStyledAttributes.getDimension(4, Float.NaN);
        }
        this.state.ringInnerInsetAttr = getValueDataIfAttr(obtainStyledAttributes, 2);
        FocusRingState focusRingState9 = this.state;
        if (focusRingState9.ringInnerInsetAttr == Integer.MIN_VALUE) {
            focusRingState9.ringInnerInset = obtainStyledAttributes.getDimension(2, Float.NaN);
        }
        this.state.ringShapeAppearanceAttr = getValueDataIfAttr(obtainStyledAttributes, 8);
        this.state.ringShapeAppearanceResId = obtainStyledAttributes.getType(8) == 1 ? obtainStyledAttributes.getResourceId(8, Integer.MIN_VALUE) : Integer.MIN_VALUE;
        obtainStyledAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        Drawable drawable = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            } else if (next == 2) {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            }
        }
        if (drawable != null) {
            setDrawable(drawable);
            this.state.wrappedState = drawable.getConstantState();
        } else {
            ColorDrawable colorDrawable = EMPTY_DRAWABLE;
            setDrawable(colorDrawable);
            this.state.wrappedState = colorDrawable.getConstantState();
        }
    }

    public final void init(Resources.Theme theme) {
        TypedValue resolve;
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(R$styleable.FocusRingDrawable);
        int i = this.state.ringEnabledAttr;
        if (i != Integer.MIN_VALUE && (resolve = Operation$State.resolve(theme, i)) != null) {
            FocusRingState focusRingState = this.state;
            focusRingState.ringEnabled = resolve.data != 0;
            focusRingState.ringEnabledInflated = true;
        }
        FocusRingState focusRingState2 = this.state;
        if (!focusRingState2.ringEnabledInflated) {
            focusRingState2.ringEnabled = Operation$State.resolveBoolean(theme, org.wikipedia.R.attr.focusRingsEnabled, focusRingState2.ringEnabled);
        }
        FocusRingState focusRingState3 = this.state;
        if (focusRingState3.ringEnabled) {
            int i2 = focusRingState3.ringOuterColor;
            int i3 = focusRingState3.ringOuterColorAttr;
            if (i2 == Integer.MIN_VALUE) {
                if (i3 != Integer.MIN_VALUE) {
                    TypedValue typedValue = new TypedValue();
                    if (theme.resolveAttribute(i3, typedValue, true)) {
                        i2 = typedValue.data;
                    }
                }
                i2 = obtainStyledAttributes.getColor(5, -16777216);
            }
            focusRingState3.ringOuterColor = i2;
            FocusRingState focusRingState4 = this.state;
            int i4 = focusRingState4.ringInnerColor;
            int i5 = focusRingState4.ringInnerColorAttr;
            if (i4 == Integer.MIN_VALUE) {
                if (i5 != Integer.MIN_VALUE) {
                    TypedValue typedValue2 = new TypedValue();
                    if (theme.resolveAttribute(i5, typedValue2, true)) {
                        i4 = typedValue2.data;
                    }
                }
                i4 = obtainStyledAttributes.getColor(1, -1);
            }
            focusRingState4.ringInnerColor = i4;
            FocusRingState focusRingState5 = this.state;
            focusRingState5.ringOuterStrokeWidth = maybeResolveDimension(focusRingState5.ringOuterStrokeWidth, theme, focusRingState5.ringOuterStrokeWidthAttr, obtainStyledAttributes, 6, org.wikipedia.R.dimen.mtrl_focus_ring_outer_stroke_width);
            FocusRingState focusRingState6 = this.state;
            focusRingState6.ringInnerStrokeWidth = maybeResolveDimension(focusRingState6.ringInnerStrokeWidth, theme, focusRingState6.ringInnerStrokeWidthAttr, obtainStyledAttributes, 3, org.wikipedia.R.dimen.mtrl_focus_ring_inner_stroke_width);
            FocusRingState focusRingState7 = this.state;
            focusRingState7.ringRadius = maybeResolveDimension(focusRingState7.ringRadius, theme, focusRingState7.ringRadiusAttr, obtainStyledAttributes, 7, 0);
            FocusRingState focusRingState8 = this.state;
            focusRingState8.ringInset = maybeResolveDimension(focusRingState8.ringInset, theme, focusRingState8.ringInsetAttr, obtainStyledAttributes, 4, 0);
            if (Float.isNaN(this.state.ringInset)) {
                this.state.ringInset = RecyclerView.DECELERATION_RATE;
            }
            FocusRingState focusRingState9 = this.state;
            focusRingState9.ringInnerInset = maybeResolveDimension(focusRingState9.ringInnerInset, theme, focusRingState9.ringInnerInsetAttr, obtainStyledAttributes, 2, org.wikipedia.R.dimen.mtrl_focus_ring_inner_stroke_inset);
            FocusRingState focusRingState10 = this.state;
            int i6 = focusRingState10.ringShapeAppearanceResId;
            int[] iArr = R$styleable.ShapeAppearance;
            if (i6 != Integer.MIN_VALUE) {
                focusRingState10.ringShapeAppearance = ShapeAppearanceModel.builder(theme.obtainStyledAttributes(i6, iArr), new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE)).build();
            } else {
                int i7 = focusRingState10.ringShapeAppearanceAttr;
                if (i7 == Integer.MIN_VALUE) {
                    i7 = org.wikipedia.R.attr.focusRingsShapeAppearance;
                }
                TypedValue resolve2 = Operation$State.resolve(theme, i7);
                if (resolve2 != null) {
                    this.state.ringShapeAppearance = ShapeAppearanceModel.builder(theme.obtainStyledAttributes(resolve2.resourceId, iArr), new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE)).build();
                }
            }
        }
        obtainStyledAttributes.recycle();
        Paint.Style style = Paint.Style.STROKE;
        Paint paint = this.paint;
        paint.setStyle(style);
        if (Float.isNaN(this.state.ringOuterStrokeWidth)) {
            return;
        }
        paint.setStrokeWidth(this.state.ringOuterStrokeWidth);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Drawable drawable = getDrawable();
        return drawable != null && drawable.isProjected();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return super.isStateful() || this.state.ringEnabled;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.end();
            this.animator = null;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.state = new FocusRingState(this.state);
            Drawable drawable = getDrawable();
            if (drawable != null) {
                this.state.wrappedState = drawable.getConstantState();
            }
            this.mutated = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x019a  */
    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onBoundsChange(android.graphics.Rect r15) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.focus.FocusRingDrawable.onBoundsChange(android.graphics.Rect):void");
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        FocusRingState focusRingState = this.state;
        if (!focusRingState.ringEnabled) {
            this.focused = false;
            return super.onStateChange(iArr);
        }
        boolean stateSetMatches = StateSet.stateSetMatches(focusRingState.ringStateSet, iArr);
        boolean z = this.focused != stateSetMatches;
        this.focused = stateSetMatches;
        if (z && iArr.length > 0 && !this.previousStateSetEmpty) {
            ObjectAnimator objectAnimator = this.animator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.animator = null;
            }
            if (!stateSetMatches) {
                this.interpolation = 1.0f;
            } else if (Build.VERSION.SDK_INT >= 24) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, PROPERTY_INTERPOLATION, RecyclerView.DECELERATION_RATE, 1.0f);
                ofFloat.setDuration(300L);
                ofFloat.setInterpolator(INTERPOLATOR);
                ofFloat.addListener(new Transition.AnonymousClass3(6, this));
                this.animator = ofFloat;
                ofFloat.start();
            }
        }
        this.previousStateSetEmpty = iArr.length == 0;
        return super.onStateChange(iArr) || z;
    }

    public final void updateShapeAppearanceCornerSizeOrPath(ShapeAppearance shapeAppearance) {
        RectF rectF = this.tmpRectF;
        calculateBounds(rectF);
        ShapeAppearanceModel shapeForState = shapeAppearance.getShapeForState(FOCUSED_STATE_SET);
        boolean isRoundRect = shapeForState.isRoundRect(rectF);
        Path path = this.shapeAppearancePath;
        if (!isRoundRect) {
            this.pathProvider.calculatePath(shapeForState, null, 1.0f, rectF, null, path);
            this.shapeAppearanceCornerSize = -1.0f;
            return;
        }
        FocusRingState focusRingState = this.state;
        float f = ((focusRingState.ringOuterStrokeWidth / 2.0f) * this.interpolation) + focusRingState.ringInset;
        rectF.inset(f, f);
        this.shapeAppearanceCornerSize = shapeForState.topLeftCornerSize.getCornerSize(rectF);
        path.reset();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FocusRingState extends Drawable.ConstantState {
        public int mChangingConfigurations;
        public Rect ringCustomBounds;
        public boolean ringEnabled;
        public int ringEnabledAttr;
        public boolean ringEnabledInflated;
        public int ringInnerColor;
        public int ringInnerColorAttr;
        public float ringInnerInset;
        public int ringInnerInsetAttr;
        public float ringInnerStrokeWidth;
        public int ringInnerStrokeWidthAttr;
        public float ringInset;
        public int ringInsetAttr;
        public int ringOuterColor;
        public int ringOuterColorAttr;
        public float ringOuterStrokeWidth;
        public int ringOuterStrokeWidthAttr;
        public float ringRadius;
        public int ringRadiusAttr;
        public ShapeAppearance ringShapeAppearance;
        public int ringShapeAppearanceAttr;
        public int ringShapeAppearanceResId;
        public int[] ringStateSet;
        public Drawable.ConstantState wrappedState;

        public FocusRingState(FocusRingState focusRingState) {
            this.mChangingConfigurations = 0;
            this.ringEnabled = false;
            this.ringEnabledAttr = Integer.MIN_VALUE;
            this.ringEnabledInflated = false;
            this.ringOuterColor = Integer.MIN_VALUE;
            this.ringOuterColorAttr = Integer.MIN_VALUE;
            this.ringInnerColor = Integer.MIN_VALUE;
            this.ringInnerColorAttr = Integer.MIN_VALUE;
            this.ringOuterStrokeWidth = Float.NaN;
            this.ringOuterStrokeWidthAttr = Integer.MIN_VALUE;
            this.ringInnerStrokeWidth = Float.NaN;
            this.ringInnerStrokeWidthAttr = Integer.MIN_VALUE;
            this.ringRadius = Float.NaN;
            this.ringRadiusAttr = Integer.MIN_VALUE;
            this.ringInset = Float.NaN;
            this.ringInsetAttr = Integer.MIN_VALUE;
            this.ringInnerInset = Float.NaN;
            this.ringInnerInsetAttr = Integer.MIN_VALUE;
            this.ringShapeAppearance = null;
            this.ringShapeAppearanceResId = Integer.MIN_VALUE;
            this.ringShapeAppearanceAttr = Integer.MIN_VALUE;
            this.ringCustomBounds = null;
            this.ringStateSet = FocusRingDrawable.FOCUSED_STATE_SET;
            if (focusRingState != null) {
                this.wrappedState = focusRingState.wrappedState;
                this.mChangingConfigurations = focusRingState.mChangingConfigurations;
                this.ringEnabled = focusRingState.ringEnabled;
                this.ringEnabledAttr = focusRingState.ringEnabledAttr;
                this.ringEnabledInflated = focusRingState.ringEnabledInflated;
                this.ringOuterColor = focusRingState.ringOuterColor;
                this.ringOuterColorAttr = focusRingState.ringOuterColorAttr;
                this.ringInnerColor = focusRingState.ringInnerColor;
                this.ringInnerColorAttr = focusRingState.ringInnerColorAttr;
                this.ringOuterStrokeWidth = focusRingState.ringOuterStrokeWidth;
                this.ringOuterStrokeWidthAttr = focusRingState.ringOuterStrokeWidthAttr;
                this.ringInnerStrokeWidth = focusRingState.ringInnerStrokeWidth;
                this.ringInnerStrokeWidthAttr = focusRingState.ringInnerStrokeWidthAttr;
                this.ringRadius = focusRingState.ringRadius;
                this.ringRadiusAttr = focusRingState.ringRadiusAttr;
                this.ringInset = focusRingState.ringInset;
                this.ringInsetAttr = focusRingState.ringInsetAttr;
                this.ringInnerInset = focusRingState.ringInnerInset;
                this.ringInnerInsetAttr = focusRingState.ringInnerInsetAttr;
                this.ringShapeAppearanceResId = focusRingState.ringShapeAppearanceResId;
                this.ringShapeAppearanceAttr = focusRingState.ringShapeAppearanceAttr;
                ShapeAppearance shapeAppearance = focusRingState.ringShapeAppearance;
                if (shapeAppearance instanceof ShapeAppearanceModel) {
                    this.ringShapeAppearance = ((ShapeAppearanceModel) shapeAppearance).toBuilder().build();
                } else if (shapeAppearance instanceof StateListShapeAppearanceModel) {
                    this.ringShapeAppearance = ((StateListShapeAppearanceModel) shapeAppearance).toBuilder().build();
                } else {
                    this.ringShapeAppearance = shapeAppearance;
                }
                if (focusRingState.ringCustomBounds != null) {
                    this.ringCustomBounds = new Rect(focusRingState.ringCustomBounds);
                }
                int[] iArr = focusRingState.ringStateSet;
                this.ringStateSet = Arrays.copyOf(iArr, iArr.length);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            Drawable.ConstantState constantState = this.wrappedState;
            return this.mChangingConfigurations | (constantState != null ? constantState.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new FocusRingDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new FocusRingDrawable(this, resources);
        }
    }

    public FocusRingDrawable() {
        super(null);
        this.paint = new Paint(1);
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ActivityLoginBinding.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        this.state = new FocusRingState(null);
    }

    public FocusRingDrawable(Context context, Drawable drawable) {
        super(drawable);
        this.paint = new Paint(1);
        this.tmpRectF = new RectF();
        this.tmpRect = new Rect();
        this.tmpPath = new Path();
        this.shapeAppearancePath = new Path();
        this.matrix = new Matrix();
        this.pathProvider = ActivityLoginBinding.getInstanceOrCreate();
        this.shapeAppearanceCornerSize = -1.0f;
        this.interpolation = 1.0f;
        this.focused = false;
        this.mutated = false;
        FocusRingState focusRingState = new FocusRingState(null);
        this.state = focusRingState;
        if (drawable != null) {
            focusRingState.wrappedState = drawable.getConstantState();
        }
        init(context.getTheme());
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
