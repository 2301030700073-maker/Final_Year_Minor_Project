package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import defpackage.C3468on;
import defpackage.O2;

/* loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: do, reason: not valid java name */
    public float f6185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Path f6186do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RectF f6187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayerDrawable f6188do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewOutlineProvider f6189do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageFilterView.Cif f6190do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable[] f6191do;

    /* renamed from: for, reason: not valid java name */
    public float f6192for;

    /* renamed from: if, reason: not valid java name */
    public float f6193if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6194if;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterButton$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {
        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            ImageFilterButton imageFilterButton = ImageFilterButton.this;
            outline.setRoundRect(0, 0, imageFilterButton.getWidth(), imageFilterButton.getHeight(), (Math.min(r3, r4) * imageFilterButton.f6193if) / 2.0f);
        }
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6190do = new ImageFilterView.Cif();
        this.f6185do = 0.0f;
        this.f6193if = 0.0f;
        this.f6192for = Float.NaN;
        this.f6194if = true;
        m3617do(attributeSet);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3617do(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.B);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 3) {
                    this.f6185do = obtainStyledAttributes.getFloat(index, 0.0f);
                } else {
                    ImageFilterView.Cif cif = this.f6190do;
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
                            this.f6192for = dimension;
                            float f = this.f6193if;
                            this.f6193if = -1.0f;
                            m3618if(f);
                        } else {
                            boolean z = this.f6192for != dimension;
                            this.f6192for = dimension;
                            if (dimension != 0.0f) {
                                if (this.f6186do == null) {
                                    this.f6186do = new Path();
                                }
                                if (this.f6187do == null) {
                                    this.f6187do = new RectF();
                                }
                                if (this.f6189do == null) {
                                    C3468on c3468on = new C3468on(this);
                                    this.f6189do = c3468on;
                                    setOutlineProvider(c3468on);
                                }
                                setClipToOutline(true);
                                this.f6187do.set(0.0f, 0.0f, getWidth(), getHeight());
                                this.f6186do.reset();
                                Path path = this.f6186do;
                                RectF rectF = this.f6187do;
                                float f2 = this.f6192for;
                                path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
                            } else {
                                setClipToOutline(false);
                            }
                            if (z) {
                                invalidateOutline();
                            }
                        }
                    } else if (index == 6) {
                        m3618if(obtainStyledAttributes.getFloat(index, 0.0f));
                    } else if (index == 4) {
                        this.f6194if = obtainStyledAttributes.getBoolean(index, this.f6194if);
                    }
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f6191do = drawableArr;
                drawableArr[0] = getDrawable();
                this.f6191do[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f6191do);
                this.f6188do = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f6185do * 255.0f));
                super.setImageDrawable(this.f6188do);
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3618if(float f) {
        boolean z = this.f6193if != f;
        this.f6193if = f;
        if (f != 0.0f) {
            if (this.f6186do == null) {
                this.f6186do = new Path();
            }
            if (this.f6187do == null) {
                this.f6187do = new RectF();
            }
            if (this.f6189do == null) {
                Cdo cdo = new Cdo();
                this.f6189do = cdo;
                setOutlineProvider(cdo);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f6193if) / 2.0f;
            this.f6187do.set(0.0f, 0.0f, width, height);
            this.f6186do.reset();
            this.f6186do.addRoundRect(this.f6187do, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6190do = new ImageFilterView.Cif();
        this.f6185do = 0.0f;
        this.f6193if = 0.0f;
        this.f6192for = Float.NaN;
        this.f6194if = true;
        m3617do(attributeSet);
    }
}
