package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import com.google.android.material.R$styleable;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShapeAppearanceModel implements ShapeAppearance {
    public static final RelativeCornerSize PILL = new RelativeCornerSize(0.5f);
    public Validate topLeftCorner = new RoundedCornerTreatment();
    public Validate topRightCorner = new RoundedCornerTreatment();
    public Validate bottomRightCorner = new RoundedCornerTreatment();
    public Validate bottomLeftCorner = new RoundedCornerTreatment();
    public CornerSize topLeftCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize topRightCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize bottomRightCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize bottomLeftCornerSize = new AbsoluteCornerSize(0.0f);
    public Transition.AnonymousClass1 topEdge = new Transition.AnonymousClass1();
    public Transition.AnonymousClass1 rightEdge = new Transition.AnonymousClass1();
    public Transition.AnonymousClass1 bottomEdge = new Transition.AnonymousClass1();
    public Transition.AnonymousClass1 leftEdge = new Transition.AnonymousClass1();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public Validate topLeftCorner = new RoundedCornerTreatment();
        public Validate topRightCorner = new RoundedCornerTreatment();
        public Validate bottomRightCorner = new RoundedCornerTreatment();
        public Validate bottomLeftCorner = new RoundedCornerTreatment();
        public CornerSize topLeftCornerSize = new AbsoluteCornerSize(0.0f);
        public CornerSize topRightCornerSize = new AbsoluteCornerSize(0.0f);
        public CornerSize bottomRightCornerSize = new AbsoluteCornerSize(0.0f);
        public CornerSize bottomLeftCornerSize = new AbsoluteCornerSize(0.0f);
        public Transition.AnonymousClass1 topEdge = new Transition.AnonymousClass1();
        public Transition.AnonymousClass1 rightEdge = new Transition.AnonymousClass1();
        public Transition.AnonymousClass1 bottomEdge = new Transition.AnonymousClass1();
        public Transition.AnonymousClass1 leftEdge = new Transition.AnonymousClass1();

        public final ShapeAppearanceModel build() {
            ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
            shapeAppearanceModel.topLeftCorner = this.topLeftCorner;
            shapeAppearanceModel.topRightCorner = this.topRightCorner;
            shapeAppearanceModel.bottomRightCorner = this.bottomRightCorner;
            shapeAppearanceModel.bottomLeftCorner = this.bottomLeftCorner;
            shapeAppearanceModel.topLeftCornerSize = this.topLeftCornerSize;
            shapeAppearanceModel.topRightCornerSize = this.topRightCornerSize;
            shapeAppearanceModel.bottomRightCornerSize = this.bottomRightCornerSize;
            shapeAppearanceModel.bottomLeftCornerSize = this.bottomLeftCornerSize;
            shapeAppearanceModel.topEdge = this.topEdge;
            shapeAppearanceModel.rightEdge = this.rightEdge;
            shapeAppearanceModel.bottomEdge = this.bottomEdge;
            shapeAppearanceModel.leftEdge = this.leftEdge;
            return shapeAppearanceModel;
        }

        public final void setAllCornerSizes(float f) {
            this.topLeftCornerSize = new AbsoluteCornerSize(f);
            this.topRightCornerSize = new AbsoluteCornerSize(f);
            this.bottomRightCornerSize = new AbsoluteCornerSize(f);
            this.bottomLeftCornerSize = new AbsoluteCornerSize(f);
        }
    }

    public static Builder builder(TypedArray typedArray, CornerSize cornerSize) {
        try {
            int i = typedArray.getInt(0, 0);
            int i2 = typedArray.getInt(3, i);
            int i3 = typedArray.getInt(4, i);
            int i4 = typedArray.getInt(2, i);
            int i5 = typedArray.getInt(1, i);
            CornerSize cornerSize2 = getCornerSize(typedArray, 5, cornerSize);
            CornerSize cornerSize3 = getCornerSize(typedArray, 8, cornerSize2);
            CornerSize cornerSize4 = getCornerSize(typedArray, 9, cornerSize2);
            CornerSize cornerSize5 = getCornerSize(typedArray, 7, cornerSize2);
            CornerSize cornerSize6 = getCornerSize(typedArray, 6, cornerSize2);
            Builder builder = new Builder();
            builder.topLeftCorner = SQLite.createCornerTreatment(i2);
            builder.topLeftCornerSize = cornerSize3;
            builder.topRightCorner = SQLite.createCornerTreatment(i3);
            builder.topRightCornerSize = cornerSize4;
            builder.bottomRightCorner = SQLite.createCornerTreatment(i4);
            builder.bottomRightCornerSize = cornerSize5;
            builder.bottomLeftCorner = SQLite.createCornerTreatment(i5);
            builder.bottomLeftCornerSize = cornerSize6;
            return builder;
        } finally {
            typedArray.recycle();
        }
    }

    public static CornerSize getCornerSize(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel[] getShapeAppearanceModels() {
        return new ShapeAppearanceModel[]{this};
    }

    public final boolean isRoundRect(RectF rectF) {
        boolean z = this.leftEdge.getClass().equals(Transition.AnonymousClass1.class) && this.rightEdge.getClass().equals(Transition.AnonymousClass1.class) && this.topEdge.getClass().equals(Transition.AnonymousClass1.class) && this.bottomEdge.getClass().equals(Transition.AnonymousClass1.class);
        float cornerSize = this.topLeftCornerSize.getCornerSize(rectF);
        return z && ((this.topRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.topRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomLeftCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomLeftCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && (this.topRightCorner instanceof RoundedCornerTreatment) && (this.topLeftCorner instanceof RoundedCornerTreatment) && (this.bottomRightCorner instanceof RoundedCornerTreatment) && (this.bottomLeftCorner instanceof RoundedCornerTreatment);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final boolean isStateful() {
        return false;
    }

    public final Builder toBuilder() {
        Builder builder = new Builder();
        builder.topLeftCorner = this.topLeftCorner;
        builder.topRightCorner = this.topRightCorner;
        builder.bottomRightCorner = this.bottomRightCorner;
        builder.bottomLeftCorner = this.bottomLeftCorner;
        builder.topLeftCornerSize = this.topLeftCornerSize;
        builder.topRightCornerSize = this.topRightCornerSize;
        builder.bottomRightCornerSize = this.bottomRightCornerSize;
        builder.bottomLeftCornerSize = this.bottomLeftCornerSize;
        builder.topEdge = this.topEdge;
        builder.rightEdge = this.rightEdge;
        builder.bottomEdge = this.bottomEdge;
        builder.leftEdge = this.leftEdge;
        return builder;
    }

    public final String toString() {
        return "[" + this.topLeftCornerSize + ", " + this.topRightCornerSize + ", " + this.bottomRightCornerSize + ", " + this.bottomLeftCornerSize + "]";
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(float f) {
        Builder builder = toBuilder();
        builder.setAllCornerSizes(f);
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getDefaultShape() {
        return this;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getShapeForState(int[] iArr) {
        return this;
    }

    public static Builder builder(Context context, AttributeSet attributeSet, int i, int i2) {
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(0.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resourceId);
        if (resourceId2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(resourceId2, true);
        }
        return builder(contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance), absoluteCornerSize);
    }
}
