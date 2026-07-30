package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.C3527pn;
import defpackage.O2;

/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: do, reason: not valid java name */
    public float f6196do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Path f6197do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RectF f6198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayerDrawable f6199do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewOutlineProvider f6200do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f6201do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable[] f6202do;

    /* renamed from: for, reason: not valid java name */
    public float f6203for;

    /* renamed from: if, reason: not valid java name */
    public float f6204if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6205if;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {
        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            ImageFilterView imageFilterView = ImageFilterView.this;
            outline.setRoundRect(0, 0, imageFilterView.getWidth(), imageFilterView.getHeight(), (Math.min(r3, r4) * imageFilterView.f6204if) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float[] f6209do = new float[20];

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ColorMatrix f6208do = new ColorMatrix();

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final ColorMatrix f6212if = new ColorMatrix();

        /* renamed from: do, reason: not valid java name */
        public final float f6207do = 1.0f;

        /* renamed from: if, reason: not valid java name */
        public float f6211if = 1.0f;

        /* renamed from: for, reason: not valid java name */
        public float f6210for = 1.0f;

        /* renamed from: new, reason: not valid java name */
        public float f6213new = 1.0f;

        /* renamed from: do, reason: not valid java name */
        public final void m3621do(ImageView imageView) {
            boolean z;
            float f;
            float log;
            float f2;
            ColorMatrix colorMatrix = this.f6208do;
            colorMatrix.reset();
            float f3 = this.f6211if;
            float[] fArr = this.f6209do;
            boolean z2 = true;
            if (f3 != 1.0f) {
                float f4 = 1.0f - f3;
                float f5 = 0.2999f * f4;
                float f6 = 0.587f * f4;
                float f7 = f4 * 0.114f;
                fArr[0] = f5 + f3;
                fArr[1] = f6;
                fArr[2] = f7;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = f5;
                fArr[6] = f6 + f3;
                fArr[7] = f7;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[10] = f5;
                fArr[11] = f6;
                fArr[12] = f7 + f3;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                colorMatrix.set(fArr);
                z = true;
            } else {
                z = false;
            }
            float f8 = this.f6210for;
            ColorMatrix colorMatrix2 = this.f6212if;
            if (f8 != 1.0f) {
                colorMatrix2.setScale(f8, f8, f8, 1.0f);
                colorMatrix.postConcat(colorMatrix2);
                z = true;
            }
            float f9 = this.f6213new;
            if (f9 != 1.0f) {
                if (f9 <= 0.0f) {
                    f9 = 0.01f;
                }
                float f10 = (5000.0f / f9) / 100.0f;
                if (f10 > 66.0f) {
                    double d = f10 - 60.0f;
                    f2 = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                    log = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
                } else {
                    log = (((float) Math.log(f10)) * 99.4708f) - 161.11957f;
                    f2 = 255.0f;
                }
                float log2 = f10 < 66.0f ? f10 > 19.0f ? (((float) Math.log(f10 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
                float min = Math.min(255.0f, Math.max(f2, 0.0f));
                float min2 = Math.min(255.0f, Math.max(log, 0.0f));
                float min3 = Math.min(255.0f, Math.max(log2, 0.0f));
                float log3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
                float log4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
                float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
                float min5 = Math.min(255.0f, Math.max(log3, 0.0f));
                float min6 = min3 / Math.min(255.0f, Math.max(log4, 0.0f));
                fArr[0] = min / min4;
                fArr[1] = 0.0f;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = min2 / min5;
                fArr[7] = 0.0f;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[10] = 0.0f;
                fArr[11] = 0.0f;
                fArr[12] = min6;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                f = 1.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                colorMatrix2.set(fArr);
                colorMatrix.postConcat(colorMatrix2);
                z = true;
            } else {
                f = 1.0f;
            }
            float f11 = this.f6207do;
            if (f11 != f) {
                fArr[0] = f11;
                fArr[1] = 0.0f;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = f11;
                fArr[7] = 0.0f;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[10] = 0.0f;
                fArr[11] = 0.0f;
                fArr[12] = f11;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                colorMatrix2.set(fArr);
                colorMatrix.postConcat(colorMatrix2);
            } else {
                z2 = z;
            }
            if (z2) {
                imageView.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6201do = new Cif();
        this.f6205if = true;
        this.f6196do = 0.0f;
        this.f6204if = 0.0f;
        this.f6203for = Float.NaN;
        m3619if(attributeSet);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3619if(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.B);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 3) {
                    this.f6196do = obtainStyledAttributes.getFloat(index, 0.0f);
                } else {
                    Cif cif = this.f6201do;
                    if (index == 8) {
                        cif.f6213new = obtainStyledAttributes.getFloat(index, 0.0f);
                        cif.m3621do(this);
                    } else if (index == 7) {
                        cif.f6211if = obtainStyledAttributes.getFloat(index, 0.0f);
                        cif.m3621do(this);
                    } else if (index == 2) {
                        cif.f6210for = obtainStyledAttributes.getFloat(index, 0.0f);
                        cif.m3621do(this);
                    } else if (index == 5) {
                        float dimension = obtainStyledAttributes.getDimension(index, 0.0f);
                        if (Float.isNaN(dimension)) {
                            this.f6203for = dimension;
                            float f = this.f6204if;
                            this.f6204if = -1.0f;
                            m3620new(f);
                        } else {
                            boolean z = this.f6203for != dimension;
                            this.f6203for = dimension;
                            if (dimension != 0.0f) {
                                if (this.f6197do == null) {
                                    this.f6197do = new Path();
                                }
                                if (this.f6198do == null) {
                                    this.f6198do = new RectF();
                                }
                                if (this.f6200do == null) {
                                    C3527pn c3527pn = new C3527pn(this);
                                    this.f6200do = c3527pn;
                                    setOutlineProvider(c3527pn);
                                }
                                setClipToOutline(true);
                                this.f6198do.set(0.0f, 0.0f, getWidth(), getHeight());
                                this.f6197do.reset();
                                Path path = this.f6197do;
                                RectF rectF = this.f6198do;
                                float f2 = this.f6203for;
                                path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
                            } else {
                                setClipToOutline(false);
                            }
                            if (z) {
                                invalidateOutline();
                            }
                        }
                    } else if (index == 6) {
                        m3620new(obtainStyledAttributes.getFloat(index, 0.0f));
                    } else if (index == 4) {
                        this.f6205if = obtainStyledAttributes.getBoolean(index, this.f6205if);
                    }
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f6202do = drawableArr;
                drawableArr[0] = getDrawable();
                this.f6202do[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f6202do);
                this.f6199do = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f6196do * 255.0f));
                super.setImageDrawable(this.f6199do);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3620new(float f) {
        boolean z = this.f6204if != f;
        this.f6204if = f;
        if (f != 0.0f) {
            if (this.f6197do == null) {
                this.f6197do = new Path();
            }
            if (this.f6198do == null) {
                this.f6198do = new RectF();
            }
            if (this.f6200do == null) {
                Cdo cdo = new Cdo();
                this.f6200do = cdo;
                setOutlineProvider(cdo);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f6204if) / 2.0f;
            this.f6198do.set(0.0f, 0.0f, width, height);
            this.f6197do.reset();
            this.f6197do.addRoundRect(this.f6198do, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6201do = new Cif();
        this.f6205if = true;
        this.f6196do = 0.0f;
        this.f6204if = 0.0f;
        this.f6203for = Float.NaN;
        m3619if(attributeSet);
    }
}
