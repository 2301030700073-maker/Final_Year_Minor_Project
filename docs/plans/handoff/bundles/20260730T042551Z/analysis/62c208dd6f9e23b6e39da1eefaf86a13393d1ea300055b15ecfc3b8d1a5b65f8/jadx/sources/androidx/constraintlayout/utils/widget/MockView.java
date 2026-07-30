package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import defpackage.O2;

/* loaded from: classes.dex */
public class MockView extends View {

    /* renamed from: break, reason: not valid java name */
    public String f6214break;

    /* renamed from: case, reason: not valid java name */
    public int f6215case;

    /* renamed from: do, reason: not valid java name */
    public final Paint f6216do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f6217do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6218do;

    /* renamed from: for, reason: not valid java name */
    public int f6219for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Paint f6220for;

    /* renamed from: if, reason: not valid java name */
    public final Paint f6221if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6222if;

    /* renamed from: new, reason: not valid java name */
    public int f6223new;

    /* renamed from: try, reason: not valid java name */
    public int f6224try;

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6216do = new Paint();
        this.f6221if = new Paint();
        this.f6220for = new Paint();
        this.f6218do = true;
        this.f6222if = true;
        this.f6214break = null;
        this.f6217do = new Rect();
        this.f6219for = Color.argb(255, 0, 0, 0);
        this.f6223new = Color.argb(255, 200, 200, 200);
        this.f6224try = Color.argb(255, 50, 50, 50);
        this.f6215case = 4;
        m3622do(context, attributeSet);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3622do(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.I);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.f6214break = obtainStyledAttributes.getString(index);
                } else if (index == 4) {
                    this.f6218do = obtainStyledAttributes.getBoolean(index, this.f6218do);
                } else if (index == 0) {
                    this.f6219for = obtainStyledAttributes.getColor(index, this.f6219for);
                } else if (index == 2) {
                    this.f6224try = obtainStyledAttributes.getColor(index, this.f6224try);
                } else if (index == 3) {
                    this.f6223new = obtainStyledAttributes.getColor(index, this.f6223new);
                } else if (index == 5) {
                    this.f6222if = obtainStyledAttributes.getBoolean(index, this.f6222if);
                }
            }
        }
        if (this.f6214break == null) {
            try {
                this.f6214break = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        int i2 = this.f6219for;
        Paint paint = this.f6216do;
        paint.setColor(i2);
        paint.setAntiAlias(true);
        int i3 = this.f6223new;
        Paint paint2 = this.f6221if;
        paint2.setColor(i3);
        paint2.setAntiAlias(true);
        this.f6220for.setColor(this.f6224try);
        this.f6215case = Math.round((getResources().getDisplayMetrics().xdpi / 160.0f) * this.f6215case);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f6218do) {
            width--;
            height--;
            float f = width;
            float f2 = height;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f6216do);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f6216do);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f6216do);
            canvas.drawLine(f, 0.0f, f, f2, this.f6216do);
            canvas.drawLine(f, f2, 0.0f, f2, this.f6216do);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f6216do);
        }
        String str = this.f6214break;
        if (str == null || !this.f6222if) {
            return;
        }
        int length = str.length();
        Paint paint = this.f6221if;
        Rect rect = this.f6217do;
        paint.getTextBounds(str, 0, length, rect);
        float width2 = (width - rect.width()) / 2.0f;
        float height2 = ((height - rect.height()) / 2.0f) + rect.height();
        rect.offset((int) width2, (int) height2);
        int i = rect.left;
        int i2 = this.f6215case;
        rect.set(i - i2, rect.top - i2, rect.right + i2, rect.bottom + i2);
        canvas.drawRect(rect, this.f6220for);
        canvas.drawText(this.f6214break, width2, height2, paint);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6216do = new Paint();
        this.f6221if = new Paint();
        this.f6220for = new Paint();
        this.f6218do = true;
        this.f6222if = true;
        this.f6214break = null;
        this.f6217do = new Rect();
        this.f6219for = Color.argb(255, 0, 0, 0);
        this.f6223new = Color.argb(255, 200, 200, 200);
        this.f6224try = Color.argb(255, 50, 50, 50);
        this.f6215case = 4;
        m3622do(context, attributeSet);
    }
}
