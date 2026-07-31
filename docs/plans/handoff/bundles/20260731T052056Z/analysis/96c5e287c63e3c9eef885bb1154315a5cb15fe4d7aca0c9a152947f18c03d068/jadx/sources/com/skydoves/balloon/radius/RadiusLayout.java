package com.skydoves.balloon.radius;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.skydoves.balloon.ArrowOrientation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.RegexKt;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rR.\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR+\u0010%\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R*\u0010&\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u001d8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010\"\"\u0004\b)\u0010$R*\u0010*\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u001d8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010'\u001a\u0004\b+\u0010\"\"\u0004\b,\u0010$R*\u0010-\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u001d8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010'\u001a\u0004\b.\u0010\"\"\u0004\b/\u0010$R*\u00101\u001a\u0002002\u0006\u0010\u000f\u001a\u0002008\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00108\u001a\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\"¨\u00069"}, d2 = {"Lcom/skydoves/balloon/radius/RadiusLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "color", "", "setFillColor", "(I)V", "Landroid/graphics/drawable/Drawable;", "value", "customShapeBackgroundDrawable", "Landroid/graphics/drawable/Drawable;", "getCustomShapeBackgroundDrawable", "()Landroid/graphics/drawable/Drawable;", "setCustomShapeBackgroundDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", "drawCustomShape", "Z", "getDrawCustomShape", "()Z", "setDrawCustomShape", "(Z)V", "", "<set-?>", "radius$delegate", "Lokhttp3/FormBody$Builder;", "getRadius", "()F", "setRadius", "(F)V", "radius", "arrowHeight", "F", "getArrowHeight", "setArrowHeight", "arrowWidth", "getArrowWidth", "setArrowWidth", "arrowPositionRatio", "getArrowPositionRatio", "setArrowPositionRatio", "Lcom/skydoves/balloon/ArrowOrientation;", "arrowOrientation", "Lcom/skydoves/balloon/ArrowOrientation;", "getArrowOrientation", "()Lcom/skydoves/balloon/ArrowOrientation;", "setArrowOrientation", "(Lcom/skydoves/balloon/ArrowOrientation;)V", "getHalfStroke", "halfStroke", "balloon_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RadiusLayout extends FrameLayout {
    public static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.factory.mutableProperty1(new MutablePropertyReference1Impl(RadiusLayout.class, "radius", "getRadius()F", 0))};
    public float arrowHeight;
    public ArrowOrientation arrowOrientation;
    public float arrowPositionRatio;
    public float arrowWidth;
    public int basePaddingBottom;
    public int basePaddingLeft;
    public int basePaddingRight;
    public int basePaddingTop;
    public Drawable customShapeBackgroundDrawable;
    public boolean drawCustomShape;
    public final Paint fillPaint;
    public final Path path;

    /* renamed from: radius$delegate, reason: from kotlin metadata */
    public final FormBody.Builder radius;
    public final Paint strokePaint;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ArrowOrientation.values().length];
            try {
                iArr[ArrowOrientation.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ArrowOrientation.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ArrowOrientation.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ArrowOrientation.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        setWillNotDraw(false);
        this.path = new Path();
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeJoin(Paint.Join.MITER);
        this.strokePaint = paint2;
        this.radius = Operation$State.viewProperty(this, Float.valueOf(RecyclerView.DECELERATION_RATE));
        this.arrowPositionRatio = 0.5f;
        this.arrowOrientation = ArrowOrientation.BOTTOM;
    }

    private final float getHalfStroke() {
        Paint paint = this.strokePaint;
        return paint.getStrokeWidth() > RecyclerView.DECELERATION_RATE ? paint.getStrokeWidth() / 2.0f : RecyclerView.DECELERATION_RATE;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.getClass();
        if (this.drawCustomShape) {
            Path path = this.path;
            if (!path.isEmpty()) {
                int saveLayer = canvas.saveLayer(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, getWidth(), getHeight(), null);
                Paint paint = this.strokePaint;
                if (paint.getStrokeWidth() > RecyclerView.DECELERATION_RATE) {
                    canvas.drawPath(path, paint);
                }
                canvas.clipPath(path);
                Drawable drawable = this.customShapeBackgroundDrawable;
                if (drawable == null) {
                    canvas.drawPath(path, this.fillPaint);
                } else if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.dispatchDraw(canvas);
                canvas.restoreToCount(saveLayer);
                return;
            }
        }
        super.dispatchDraw(canvas);
    }

    public final float getArrowHeight() {
        return this.arrowHeight;
    }

    public final ArrowOrientation getArrowOrientation() {
        return this.arrowOrientation;
    }

    public final float getArrowPositionRatio() {
        return this.arrowPositionRatio;
    }

    public final float getArrowWidth() {
        return this.arrowWidth;
    }

    public final Drawable getCustomShapeBackgroundDrawable() {
        return this.customShapeBackgroundDrawable;
    }

    public final boolean getDrawCustomShape() {
        return this.drawCustomShape;
    }

    public final float getRadius() {
        KProperty kProperty = $$delegatedProperties[0];
        FormBody.Builder builder = this.radius;
        builder.getClass();
        kProperty.getClass();
        return ((Number) builder.values).floatValue();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Path path = this.path;
        path.rewind();
        path.addRoundRect(new RectF(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, i, i2), getRadius(), getRadius(), Path.Direction.CW);
        if (this.drawCustomShape) {
            rebuildPath();
            updateEffectivePadding();
            Drawable drawable = this.customShapeBackgroundDrawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, i, i2);
            }
            requestLayout();
        }
    }

    public final void rebuildPath() {
        Path path = this.path;
        path.reset();
        if (!this.drawCustomShape || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        float f = this.arrowHeight * 0.5f;
        float halfStroke = getHalfStroke() + f;
        float halfStroke2 = this.arrowOrientation == ArrowOrientation.START ? halfStroke : getHalfStroke();
        float halfStroke3 = this.arrowOrientation == ArrowOrientation.TOP ? halfStroke : getHalfStroke();
        float width = this.arrowOrientation == ArrowOrientation.END ? getWidth() - halfStroke : getWidth() - getHalfStroke();
        float height = this.arrowOrientation == ArrowOrientation.BOTTOM ? getHeight() - halfStroke : getHeight() - getHalfStroke();
        float coerceIn = RegexKt.coerceIn(getWidth() * this.arrowPositionRatio, (this.arrowWidth / 2.0f) + getHalfStroke(), (getWidth() - (this.arrowWidth / 2.0f)) - getHalfStroke());
        float coerceIn2 = RegexKt.coerceIn(getHeight() * this.arrowPositionRatio, (this.arrowWidth / 2.0f) + getHalfStroke(), (getHeight() - (this.arrowWidth / 2.0f)) - getHalfStroke());
        int i = WhenMappings.$EnumSwitchMapping$0[this.arrowOrientation.ordinal()];
        if (i == 1) {
            path.moveTo(getRadius() + halfStroke2, height);
            path.lineTo(width - getRadius(), height);
            path.quadTo(width, height, width, height - getRadius());
            path.lineTo(width, getRadius() + halfStroke3);
            path.quadTo(width, halfStroke3, width - getRadius(), halfStroke3);
            path.lineTo((this.arrowWidth / 2.0f) + coerceIn, halfStroke3);
            path.lineTo(coerceIn, halfStroke3 - f);
            path.lineTo(coerceIn - (this.arrowWidth / 2.0f), halfStroke3);
            path.lineTo(getRadius() + halfStroke2, halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, halfStroke2, getRadius() + halfStroke3);
            path.lineTo(halfStroke2, height - getRadius());
            path.quadTo(halfStroke2, height, getRadius() + halfStroke2, height);
        } else if (i == 2) {
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo((this.arrowWidth / 2.0f) + coerceIn, height);
            path.lineTo(coerceIn, f + height);
            path.lineTo(coerceIn - (this.arrowWidth / 2.0f), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        } else if (i == 3) {
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, (this.arrowWidth / 2.0f) + coerceIn2);
            path.lineTo(halfStroke2 - f, coerceIn2);
            path.lineTo(halfStroke2, coerceIn2 - (this.arrowWidth / 2.0f));
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        } else {
            if (i != 4) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, coerceIn2 - (this.arrowWidth / 2.0f));
            path.lineTo(f + width, coerceIn2);
            path.lineTo(width, (this.arrowWidth / 2.0f) + coerceIn2);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        }
        path.close();
        invalidate();
    }

    public final void setArrowHeight(float f) {
        if (this.arrowHeight == f) {
            return;
        }
        this.arrowHeight = f;
        if (this.drawCustomShape) {
            rebuildPath();
        }
        if (this.drawCustomShape) {
            updateEffectivePadding();
        }
    }

    public final void setArrowOrientation(ArrowOrientation arrowOrientation) {
        arrowOrientation.getClass();
        if (this.arrowOrientation != arrowOrientation) {
            this.arrowOrientation = arrowOrientation;
            if (this.drawCustomShape) {
                rebuildPath();
            }
            if (this.drawCustomShape) {
                updateEffectivePadding();
            }
        }
    }

    public final void setArrowPositionRatio(float f) {
        if (this.arrowPositionRatio == f) {
            return;
        }
        this.arrowPositionRatio = f;
        if (this.drawCustomShape) {
            rebuildPath();
        }
    }

    public final void setArrowWidth(float f) {
        if (this.arrowWidth == f) {
            return;
        }
        this.arrowWidth = f;
        if (this.drawCustomShape) {
            rebuildPath();
        }
    }

    public final void setCustomShapeBackgroundDrawable(Drawable drawable) {
        if (Intrinsics.areEqual(this.customShapeBackgroundDrawable, drawable)) {
            return;
        }
        this.customShapeBackgroundDrawable = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getHeight());
        }
        invalidate();
    }

    public final void setDrawCustomShape(boolean z) {
        if (this.drawCustomShape != z) {
            this.drawCustomShape = z;
            setWillNotDraw(!z);
            invalidate();
        }
    }

    public final void setFillColor(int color) {
        this.fillPaint.setColor(color);
        invalidate();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.basePaddingLeft = i;
        this.basePaddingTop = i2;
        this.basePaddingRight = i3;
        this.basePaddingBottom = i4;
        if (this.drawCustomShape) {
            updateEffectivePadding();
        } else {
            super.setPadding(i, i2, i3, i4);
        }
    }

    public final void setRadius(float f) {
        KProperty kProperty = $$delegatedProperties[0];
        this.radius.setValue(Float.valueOf(f), kProperty);
    }

    public final void updateEffectivePadding() {
        if (this.drawCustomShape) {
            float halfStroke = (this.arrowHeight * 0.5f) + getHalfStroke();
            int i = this.basePaddingLeft;
            ArrowOrientation arrowOrientation = this.arrowOrientation;
            super.setPadding(i + (arrowOrientation == ArrowOrientation.START ? (int) halfStroke : 0), this.basePaddingTop + (arrowOrientation == ArrowOrientation.TOP ? (int) halfStroke : 0), this.basePaddingRight + (arrowOrientation == ArrowOrientation.END ? (int) halfStroke : 0), this.basePaddingBottom + (arrowOrientation == ArrowOrientation.BOTTOM ? (int) halfStroke : 0));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ RadiusLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
