package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: break, reason: not valid java name */
    public final int f7964break;

    /* renamed from: catch, reason: not valid java name */
    public final int f7965catch;

    /* renamed from: class, reason: not valid java name */
    public int f7966class;

    /* renamed from: const, reason: not valid java name */
    public final int f7967const;

    /* renamed from: do, reason: not valid java name */
    public final Paint f7968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f7969do;

    /* renamed from: else, reason: not valid java name */
    public final int f7970else;

    /* renamed from: final, reason: not valid java name */
    public final int f7971final;

    /* renamed from: for, reason: not valid java name */
    public float f7972for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7973for;

    /* renamed from: goto, reason: not valid java name */
    public final int f7974goto;

    /* renamed from: if, reason: not valid java name */
    public float f7975if;

    /* renamed from: new, reason: not valid java name */
    public boolean f7976new;

    /* renamed from: this, reason: not valid java name */
    public final int f7977this;

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((PagerTitleStrip) PagerTabStrip.this).f7986do.m4693package(r2.f8038new - 1);
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewPager viewPager = ((PagerTitleStrip) PagerTabStrip.this).f7986do;
            viewPager.m4693package(viewPager.f8038new + 1);
        }
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f7968do = paint;
        this.f7969do = new Rect();
        this.f7966class = 255;
        this.f7973for = false;
        int i = this.f7982case;
        this.f7970else = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f7974goto = (int) ((3.0f * f) + 0.5f);
        this.f7977this = (int) ((6.0f * f) + 0.5f);
        int i2 = (int) (64.0f * f);
        this.f7965catch = (int) ((16.0f * f) + 0.5f);
        this.f7967const = (int) ((1.0f * f) + 0.5f);
        this.f7964break = (int) ((f * 32.0f) + 0.5f);
        this.f7971final = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int i3 = super.f7993new;
        super.f7993new = i3 >= i2 ? i3 : i2;
        requestLayout();
        setWillNotDraw(false);
        ((PagerTitleStrip) this).f7984do.setFocusable(true);
        ((PagerTitleStrip) this).f7984do.setOnClickListener(new Cdo());
        ((PagerTitleStrip) this).f7990for.setFocusable(true);
        ((PagerTitleStrip) this).f7990for.setOnClickListener(new Cif());
        if (getBackground() == null) {
            this.f7973for = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: do, reason: not valid java name */
    public final int mo4667do() {
        return Math.max(super.mo4667do(), this.f7964break);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: new, reason: not valid java name */
    public final void mo4668new(float f, int i, boolean z) {
        int height = getHeight();
        TextView textView = ((PagerTitleStrip) this).f7991if;
        int left = textView.getLeft();
        int i2 = this.f7965catch;
        int right = textView.getRight() + i2;
        int i3 = height - this.f7974goto;
        Rect rect = this.f7969do;
        rect.set(left - i2, i3, right, height);
        super.mo4668new(f, i, z);
        this.f7966class = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(textView.getLeft() - i2, i3, textView.getRight() + i2, height);
        invalidate(rect);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        TextView textView = ((PagerTitleStrip) this).f7991if;
        int left = textView.getLeft();
        int i = this.f7965catch;
        int i2 = left - i;
        int right = textView.getRight() + i;
        int i3 = height - this.f7974goto;
        Paint paint = this.f7968do;
        int i4 = this.f7966class << 24;
        int i5 = this.f7970else;
        paint.setColor(i4 | (i5 & 16777215));
        float f = right;
        float f2 = height;
        canvas.drawRect(i2, i3, f, f2, paint);
        if (this.f7973for) {
            paint.setColor((-16777216) | (i5 & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f7967const, getWidth() - getPaddingRight(), f2, paint);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.f7976new) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f7975if = x;
            this.f7972for = y;
            this.f7976new = false;
        } else if (action == 1) {
            int left = ((PagerTitleStrip) this).f7991if.getLeft();
            int i = this.f7965catch;
            if (x < left - i) {
                ViewPager viewPager = ((PagerTitleStrip) this).f7986do;
                viewPager.m4693package(viewPager.f8038new - 1);
            } else if (x > r5.getRight() + i) {
                ViewPager viewPager2 = ((PagerTitleStrip) this).f7986do;
                viewPager2.m4693package(viewPager2.f8038new + 1);
            }
        } else if (action == 2) {
            float abs = Math.abs(x - this.f7975if);
            int i2 = this.f7971final;
            if (abs > i2 || Math.abs(y - this.f7972for) > i2) {
                this.f7976new = true;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        this.f7973for = (i & (-16777216)) == 0;
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        this.f7973for = drawable == null;
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        this.f7973for = i == 0;
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f7977this;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }
}
