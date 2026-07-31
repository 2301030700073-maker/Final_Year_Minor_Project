package org.maplibre.android.annotations;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import org.maplibre.android.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Deprecated
/* loaded from: classes.dex */
public class BubbleLayout extends LinearLayout {
    public final ArrowDirection arrowDirection;
    public final float arrowHeight;
    public final float arrowPosition;
    public final float arrowWidth;
    public Bubble bubble;
    public final int bubbleColor;
    public final float cornersRadius;
    public final int strokeColor;
    public final float strokeWidth;

    public BubbleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.maplibre_BubbleLayout);
        int i = obtainStyledAttributes.getInt(0, 0);
        this.arrowDirection = new ArrowDirection(i);
        float dimension = obtainStyledAttributes.getDimension(3, (context.getResources().getDisplayMetrics().densityDpi / 160) * 8.0f);
        this.arrowWidth = dimension;
        float dimension2 = obtainStyledAttributes.getDimension(1, 8.0f * (context.getResources().getDisplayMetrics().densityDpi / 160));
        this.arrowHeight = dimension2;
        this.arrowPosition = obtainStyledAttributes.getDimension(2, 12.0f * (context.getResources().getDisplayMetrics().densityDpi / 160));
        this.cornersRadius = obtainStyledAttributes.getDimension(5, RecyclerView.DECELERATION_RATE);
        this.bubbleColor = obtainStyledAttributes.getColor(4, -1);
        float dimension3 = obtainStyledAttributes.getDimension(7, -1.0f);
        this.strokeWidth = dimension3;
        this.strokeColor = obtainStyledAttributes.getColor(6, -7829368);
        obtainStyledAttributes.recycle();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        if (i == 0) {
            paddingLeft = (int) (paddingLeft + dimension);
        } else if (i == 1) {
            paddingRight = (int) (paddingRight + dimension);
        } else if (i == 2) {
            paddingTop = (int) (paddingTop + dimension2);
        } else if (i == 3) {
            paddingBottom = (int) (paddingBottom + dimension2);
        }
        if (dimension3 > RecyclerView.DECELERATION_RATE) {
            paddingLeft = (int) (paddingLeft + dimension3);
            paddingRight = (int) (paddingRight + dimension3);
            paddingTop = (int) (paddingTop + dimension3);
            paddingBottom = (int) (paddingBottom + dimension3);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Bubble bubble = this.bubble;
        if (bubble != null) {
            bubble.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public ArrowDirection getArrowDirection() {
        return this.arrowDirection;
    }

    public float getArrowHeight() {
        return this.arrowHeight;
    }

    public float getArrowPosition() {
        return this.arrowPosition;
    }

    public float getArrowWidth() {
        return this.arrowWidth;
    }

    public int getBubbleColor() {
        return this.bubbleColor;
    }

    public float getCornersRadius() {
        return this.cornersRadius;
    }

    public int getStrokeColor() {
        return this.strokeColor;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int width = getWidth();
        int height = getHeight();
        if (width < 0 || height < 0) {
            return;
        }
        RectF rectF = new RectF(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, width, height);
        Bubble bubble = new Bubble();
        Paint paint = new Paint(1);
        bubble.paint = paint;
        Path path = new Path();
        bubble.path = path;
        bubble.rect = rectF;
        bubble.arrowWidth = this.arrowWidth;
        bubble.arrowHeight = this.arrowHeight;
        bubble.arrowPosition = this.arrowPosition;
        bubble.cornersRadius = this.cornersRadius;
        paint.setColor(this.bubbleColor);
        float f = this.strokeWidth;
        bubble.strokeWidth = f;
        ArrowDirection arrowDirection = this.arrowDirection;
        if (f > RecyclerView.DECELERATION_RATE) {
            Paint paint2 = new Paint(1);
            bubble.strokePaint = paint2;
            paint2.setColor(this.strokeColor);
            Path path2 = new Path();
            bubble.strokePath = path2;
            bubble.initPath(arrowDirection, path, f);
            bubble.initPath(arrowDirection, path2, RecyclerView.DECELERATION_RATE);
        } else {
            bubble.initPath(arrowDirection, path, RecyclerView.DECELERATION_RATE);
        }
        this.bubble = bubble;
    }
}
