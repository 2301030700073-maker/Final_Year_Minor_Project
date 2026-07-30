package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import defpackage.O2;

/* loaded from: classes.dex */
public class Placeholder extends View {

    /* renamed from: do, reason: not valid java name */
    public View f6340do;

    /* renamed from: for, reason: not valid java name */
    public int f6341for;

    /* renamed from: new, reason: not valid java name */
    public int f6342new;

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6341for = -1;
        this.f6340do = null;
        this.f6342new = 4;
        m3643do(attributeSet);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3643do(AttributeSet attributeSet) {
        super.setVisibility(this.f6342new);
        this.f6341for = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.y);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f6341for = obtainStyledAttributes.getResourceId(index, this.f6341for);
                } else if (index == 1) {
                    this.f6342new = obtainStyledAttributes.getInt(index, this.f6342new);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((rect.height() / 2.0f) + (height / 2.0f)) - rect.bottom, paint);
        }
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6341for = -1;
        this.f6340do = null;
        this.f6342new = 4;
        m3643do(attributeSet);
    }
}
