package com.joeykrim.rootcheck.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes3.dex */
public class ProgressWheelv2 extends View {

    /* renamed from: case, reason: not valid java name */
    public int f12258case;

    /* renamed from: do, reason: not valid java name */
    public double f12259do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f12260do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f12261do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f12262do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RectF f12263do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12264do;

    /* renamed from: else, reason: not valid java name */
    public int f12265else;

    /* renamed from: for, reason: not valid java name */
    public float f12266for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f12267for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f12268for;

    /* renamed from: if, reason: not valid java name */
    public final double f12269if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f12270if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f12271if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Paint f12272if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f12273if;

    /* renamed from: new, reason: not valid java name */
    public float f12274new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f12275new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f12276new;

    /* renamed from: try, reason: not valid java name */
    public int f12277try;

    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new Cdo();

        /* renamed from: case, reason: not valid java name */
        public int f12278case;

        /* renamed from: do, reason: not valid java name */
        public float f12279do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f12280do;

        /* renamed from: else, reason: not valid java name */
        public int f12281else;

        /* renamed from: for, reason: not valid java name */
        public float f12282for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f12283for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f12284for;

        /* renamed from: if, reason: not valid java name */
        public float f12285if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f12286if;

        /* renamed from: new, reason: not valid java name */
        public int f12287new;

        /* renamed from: try, reason: not valid java name */
        public int f12288try;

        /* renamed from: com.joeykrim.rootcheck.Views.ProgressWheelv2$WheelSavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<WheelSavedState> {
            @Override // android.os.Parcelable.Creator
            public final WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        }

        public WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f12279do);
            parcel.writeFloat(this.f12285if);
            parcel.writeByte(this.f12280do ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f12282for);
            parcel.writeInt(this.f12283for);
            parcel.writeInt(this.f12287new);
            parcel.writeInt(this.f12288try);
            parcel.writeInt(this.f12278case);
            parcel.writeInt(this.f12281else);
            parcel.writeByte(this.f12286if ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f12284for ? (byte) 1 : (byte) 0);
        }

        public WheelSavedState(Parcel parcel) {
            super(parcel);
            this.f12279do = parcel.readFloat();
            this.f12285if = parcel.readFloat();
            this.f12280do = parcel.readByte() != 0;
            this.f12282for = parcel.readFloat();
            this.f12283for = parcel.readInt();
            this.f12287new = parcel.readInt();
            this.f12288try = parcel.readInt();
            this.f12278case = parcel.readInt();
            this.f12281else = parcel.readInt();
            this.f12286if = parcel.readByte() != 0;
            this.f12284for = parcel.readByte() != 0;
        }
    }

    public ProgressWheelv2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12267for = 90;
        this.f12275new = 5;
        this.f12277try = 5;
        this.f12264do = false;
        this.f12259do = 0.0d;
        this.f12269if = 460.0d;
        this.f12260do = 0.0f;
        this.f12273if = true;
        this.f12261do = 0L;
        this.f12258case = -1442840576;
        this.f12265else = 16777215;
        this.f12262do = new Paint();
        this.f12272if = new Paint();
        this.f12263do = new RectF();
        this.f12270if = 230.0f;
        this.f12271if = 0L;
        this.f12266for = 0.0f;
        this.f12274new = 0.0f;
        this.f12276new = false;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6386do(float f) {
        if (this.f12276new) {
            this.f12266for = 0.0f;
            this.f12276new = false;
        }
        if (f > 1.0f) {
            f = 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        float f2 = this.f12274new;
        if (f == f2) {
            return;
        }
        if (this.f12266for == f2) {
            this.f12271if = SystemClock.uptimeMillis();
        }
        this.f12274new = Math.min(f * 360.0f, 360.0f);
        invalidate();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6387if() {
        Paint paint = this.f12262do;
        try {
            paint.setColor(this.f12258case);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f12275new);
            Paint paint2 = this.f12272if;
            paint2.setColor(this.f12265else);
            paint2.setAntiAlias(true);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(this.f12277try);
        } catch (NoSuchFieldError unused) {
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        canvas.drawArc(this.f12263do, 360.0f, 360.0f, false, this.f12272if);
        boolean z = this.f12276new;
        Paint paint = this.f12262do;
        boolean z2 = true;
        if (z) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f12271if;
            float f3 = (uptimeMillis * this.f12270if) / 1000.0f;
            long j = this.f12261do;
            if (j >= 200) {
                double d = this.f12259do + uptimeMillis;
                this.f12259do = d;
                double d2 = this.f12269if;
                if (d > d2) {
                    this.f12259do = d - d2;
                    this.f12261do = 0L;
                    this.f12273if = !this.f12273if;
                }
                float cos = (((float) Math.cos(((this.f12259do / d2) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                if (this.f12273if) {
                    this.f12260do = cos * 254.0f;
                } else {
                    float f4 = (1.0f - cos) * 254.0f;
                    this.f12266for = (this.f12260do - f4) + this.f12266for;
                    this.f12260do = f4;
                }
            } else {
                this.f12261do = j + uptimeMillis;
            }
            float f5 = this.f12266for + f3;
            this.f12266for = f5;
            if (f5 > 360.0f) {
                this.f12266for = f5 - 360.0f;
            }
            this.f12271if = SystemClock.uptimeMillis();
            float f6 = this.f12266for - 90.0f;
            float f7 = this.f12260do + 16.0f;
            if (isInEditMode()) {
                f2 = 0.0f;
                f = 135.0f;
            } else {
                f = f7;
                f2 = f6;
            }
            canvas.drawArc(this.f12263do, f2, f, false, paint);
        } else {
            if (this.f12266for != this.f12274new) {
                this.f12266for = Math.min(this.f12266for + (((SystemClock.uptimeMillis() - this.f12271if) / 1000.0f) * this.f12270if), this.f12274new);
                this.f12271if = SystemClock.uptimeMillis();
            } else {
                z2 = false;
            }
            float f8 = this.f12266for;
            if (!this.f12268for) {
                r2 = this.f12274new == 360.0f ? ((float) (1.0d - Math.pow(1.0f - (f8 / 360.0f), 4.0f))) * 360.0f : 0.0f;
                f8 = ((float) (1.0d - Math.pow(1.0f - (this.f12266for / 360.0f), 2.0f))) * 360.0f;
            }
            canvas.drawArc(this.f12263do, r2 - 90.0f, isInEditMode() ? 360.0f : f8, false, paint);
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.f12267for;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f12267for;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            paddingRight = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingRight = Math.min(paddingRight, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingBottom = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingBottom = Math.min(paddingBottom, size2);
        }
        setMeasuredDimension(paddingRight, paddingBottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WheelSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        WheelSavedState wheelSavedState = (WheelSavedState) parcelable;
        super.onRestoreInstanceState(wheelSavedState.getSuperState());
        this.f12266for = wheelSavedState.f12279do;
        this.f12274new = wheelSavedState.f12285if;
        this.f12276new = wheelSavedState.f12280do;
        this.f12270if = wheelSavedState.f12282for;
        this.f12275new = wheelSavedState.f12283for;
        this.f12258case = wheelSavedState.f12287new;
        this.f12277try = wheelSavedState.f12288try;
        this.f12265else = wheelSavedState.f12278case;
        this.f12267for = wheelSavedState.f12281else;
        this.f12268for = wheelSavedState.f12286if;
        this.f12264do = wheelSavedState.f12284for;
        this.f12271if = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f12279do = this.f12266for;
        wheelSavedState.f12285if = this.f12274new;
        wheelSavedState.f12280do = this.f12276new;
        wheelSavedState.f12282for = this.f12270if;
        wheelSavedState.f12283for = this.f12275new;
        wheelSavedState.f12287new = this.f12258case;
        wheelSavedState.f12288try = this.f12277try;
        wheelSavedState.f12278case = this.f12265else;
        wheelSavedState.f12281else = this.f12267for;
        wheelSavedState.f12286if = this.f12268for;
        wheelSavedState.f12284for = this.f12264do;
        return wheelSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.f12264do) {
            int i5 = this.f12275new;
            this.f12263do = new RectF(paddingLeft + i5, paddingTop + i5, (i - paddingRight) - i5, (i2 - paddingBottom) - i5);
        } else {
            int i6 = (i - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i6, (i2 - paddingBottom) - paddingTop), (this.f12267for * 2) - (this.f12275new * 2));
            int i7 = ((i6 - min) / 2) + paddingLeft;
            int i8 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            int i9 = this.f12275new;
            this.f12263do = new RectF(i7 + i9, i8 + i9, (i7 + min) - i9, (i8 + min) - i9);
        }
        m6387if();
        invalidate();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f12271if = SystemClock.uptimeMillis();
        }
    }
}
