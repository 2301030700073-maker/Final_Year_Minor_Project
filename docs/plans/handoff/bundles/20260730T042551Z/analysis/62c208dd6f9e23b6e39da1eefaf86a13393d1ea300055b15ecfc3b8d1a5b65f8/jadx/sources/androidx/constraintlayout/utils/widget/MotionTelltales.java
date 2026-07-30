package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import defpackage.AbstractC0240Gp;
import defpackage.AbstractInterpolatorC4063yt;
import defpackage.C0112At;
import defpackage.C2922iK;
import defpackage.C3660s2;
import defpackage.C4004xt;
import defpackage.O2;
import defpackage.OE;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MotionTelltales extends MockView {

    /* renamed from: do, reason: not valid java name */
    public float f6225do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Matrix f6226do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MotionLayout f6227do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f6228do;

    /* renamed from: else, reason: not valid java name */
    public int f6229else;

    /* renamed from: goto, reason: not valid java name */
    public int f6230goto;

    /* renamed from: new, reason: not valid java name */
    public final Paint f6231new;

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6231new = new Paint();
        this.f6228do = new float[2];
        this.f6226do = new Matrix();
        this.f6229else = 0;
        this.f6230goto = -65281;
        this.f6225do = 0.25f;
        m3623do(context, attributeSet);
    }

    /* renamed from: do, reason: not valid java name */
    private void m3623do(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.N);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f6230goto = obtainStyledAttributes.getColor(index, this.f6230goto);
                } else if (index == 2) {
                    this.f6229else = obtainStyledAttributes.getInt(index, this.f6229else);
                } else if (index == 1) {
                    this.f6225do = obtainStyledAttributes.getFloat(index, this.f6225do);
                }
            }
        }
        int i2 = this.f6230goto;
        Paint paint = this.f6231new;
        paint.setColor(i2);
        paint.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public final void onDraw(Canvas canvas) {
        float[] fArr;
        int i;
        Matrix matrix;
        int i2;
        float f;
        int i3;
        int i4;
        float[] fArr2;
        float f2;
        int i5;
        OE oe;
        int i6;
        OE oe2;
        OE oe3;
        OE oe4;
        OE oe5;
        int i7;
        C4004xt c4004xt;
        AbstractC0240Gp abstractC0240Gp;
        double[] dArr;
        float[] fArr3;
        int i8;
        C2922iK c2922iK;
        super.onDraw(canvas);
        Matrix matrix2 = getMatrix();
        Matrix matrix3 = this.f6226do;
        matrix2.invert(matrix3);
        if (this.f6227do == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f6227do = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i9 = 5;
        float[] fArr4 = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        MotionTelltales motionTelltales = this;
        int i10 = 0;
        while (i10 < i9) {
            float f3 = fArr4[i10];
            int i11 = 0;
            while (i11 < i9) {
                float f4 = fArr4[i11];
                MotionLayout motionLayout = motionTelltales.f6227do;
                float[] fArr5 = motionTelltales.f6228do;
                int i12 = motionTelltales.f6229else;
                float f5 = motionLayout.f6068do;
                float f6 = motionLayout.f6097new;
                if (motionLayout.f6073do != null) {
                    float signum = Math.signum(motionLayout.f6110try - f6);
                    float interpolation = motionLayout.f6073do.getInterpolation(motionLayout.f6097new + 1.0E-5f);
                    fArr = fArr4;
                    float interpolation2 = motionLayout.f6073do.getInterpolation(motionLayout.f6097new);
                    f5 = (((interpolation - interpolation2) / 1.0E-5f) * signum) / motionLayout.f6090if;
                    f6 = interpolation2;
                } else {
                    fArr = fArr4;
                }
                Interpolator interpolator = motionLayout.f6073do;
                if (interpolator instanceof AbstractInterpolatorC4063yt) {
                    f5 = ((AbstractInterpolatorC4063yt) interpolator).mo3598do();
                }
                float f7 = f5;
                C4004xt c4004xt2 = motionLayout.f6093if.get(motionTelltales);
                if ((i12 & 1) == 0) {
                    int width2 = getWidth();
                    int height2 = getHeight();
                    float[] fArr6 = c4004xt2.f16649if;
                    float m8673do = c4004xt2.m8673do(fArr6, f6);
                    HashMap<String, OE> hashMap = c4004xt2.f16646if;
                    if (hashMap == null) {
                        i6 = i11;
                        oe = null;
                    } else {
                        oe = hashMap.get("translationX");
                        i6 = i11;
                    }
                    HashMap<String, OE> hashMap2 = c4004xt2.f16646if;
                    i3 = i10;
                    if (hashMap2 == null) {
                        i2 = height;
                        oe2 = null;
                    } else {
                        oe2 = hashMap2.get("translationY");
                        i2 = height;
                    }
                    HashMap<String, OE> hashMap3 = c4004xt2.f16646if;
                    i = width;
                    if (hashMap3 == null) {
                        matrix = matrix3;
                        oe3 = null;
                    } else {
                        oe3 = hashMap3.get("rotation");
                        matrix = matrix3;
                    }
                    HashMap<String, OE> hashMap4 = c4004xt2.f16646if;
                    if (hashMap4 == null) {
                        f = f7;
                        oe4 = null;
                    } else {
                        oe4 = hashMap4.get("scaleX");
                        f = f7;
                    }
                    HashMap<String, OE> hashMap5 = c4004xt2.f16646if;
                    if (hashMap5 == null) {
                        i7 = width2;
                        oe5 = null;
                    } else {
                        oe5 = hashMap5.get("scaleY");
                        i7 = width2;
                    }
                    HashMap<String, AbstractC0240Gp> hashMap6 = c4004xt2.f16641for;
                    AbstractC0240Gp abstractC0240Gp2 = hashMap6 == null ? null : hashMap6.get("translationX");
                    HashMap<String, AbstractC0240Gp> hashMap7 = c4004xt2.f16641for;
                    AbstractC0240Gp abstractC0240Gp3 = hashMap7 == null ? null : hashMap7.get("translationY");
                    HashMap<String, AbstractC0240Gp> hashMap8 = c4004xt2.f16641for;
                    AbstractC0240Gp abstractC0240Gp4 = hashMap8 == null ? null : hashMap8.get("rotation");
                    HashMap<String, AbstractC0240Gp> hashMap9 = c4004xt2.f16641for;
                    AbstractC0240Gp abstractC0240Gp5 = hashMap9 == null ? null : hashMap9.get("scaleX");
                    HashMap<String, AbstractC0240Gp> hashMap10 = c4004xt2.f16641for;
                    AbstractC0240Gp abstractC0240Gp6 = hashMap10 != null ? hashMap10.get("scaleY") : null;
                    C2922iK c2922iK2 = new C2922iK();
                    c2922iK2.f13463try = 0.0f;
                    c2922iK2.f13462new = 0.0f;
                    c2922iK2.f13460for = 0.0f;
                    c2922iK2.f13461if = 0.0f;
                    c2922iK2.f13459do = 0.0f;
                    if (oe3 != null) {
                        c4004xt = c4004xt2;
                        abstractC0240Gp = abstractC0240Gp3;
                        c2922iK2.f13463try = (float) oe3.f2604do.mo7287try(m8673do);
                        c2922iK2.f13458case = oe3.m1648do(m8673do);
                    } else {
                        c4004xt = c4004xt2;
                        abstractC0240Gp = abstractC0240Gp3;
                    }
                    if (oe != null) {
                        f2 = f4;
                        c2922iK2.f13460for = (float) oe.f2604do.mo7287try(m8673do);
                    } else {
                        f2 = f4;
                    }
                    if (oe2 != null) {
                        c2922iK2.f13462new = (float) oe2.f2604do.mo7287try(m8673do);
                    }
                    if (oe4 != null) {
                        c2922iK2.f13459do = (float) oe4.f2604do.mo7287try(m8673do);
                    }
                    if (oe5 != null) {
                        c2922iK2.f13461if = (float) oe5.f2604do.mo7287try(m8673do);
                    }
                    if (abstractC0240Gp4 != null) {
                        c2922iK2.f13463try = abstractC0240Gp4.m763if(m8673do);
                    }
                    if (abstractC0240Gp2 != null) {
                        c2922iK2.f13460for = abstractC0240Gp2.m763if(m8673do);
                    }
                    AbstractC0240Gp abstractC0240Gp7 = abstractC0240Gp;
                    if (abstractC0240Gp != null) {
                        c2922iK2.f13462new = abstractC0240Gp7.m763if(m8673do);
                    }
                    if (abstractC0240Gp5 != null || abstractC0240Gp6 != null) {
                        if (abstractC0240Gp5 == null) {
                            c2922iK2.f13459do = abstractC0240Gp5.m763if(m8673do);
                        }
                        if (abstractC0240Gp6 == null) {
                            c2922iK2.f13461if = abstractC0240Gp6.m763if(m8673do);
                        }
                    }
                    C4004xt c4004xt3 = c4004xt;
                    C3660s2 c3660s2 = c4004xt3.f16631do;
                    C0112At c0112At = c4004xt3.f16627do;
                    if (c3660s2 != null) {
                        double[] dArr2 = c4004xt3.f16633do;
                        if (dArr2.length > 0) {
                            double d = m8673do;
                            c3660s2.mo7284for(d, dArr2);
                            c4004xt3.f16631do.mo7282case(d, c4004xt3.f16648if);
                            int[] iArr = c4004xt3.f16635do;
                            double[] dArr3 = c4004xt3.f16648if;
                            double[] dArr4 = c4004xt3.f16633do;
                            c0112At.getClass();
                            i8 = i12;
                            c2922iK = c2922iK2;
                            fArr3 = fArr5;
                            i5 = i6;
                            C0112At.m105this(f2, f3, fArr5, iArr, dArr3, dArr4);
                        } else {
                            fArr3 = fArr5;
                            i8 = i12;
                            i5 = i6;
                            c2922iK = c2922iK2;
                        }
                        c2922iK.m6892do(f2, f3, i7, height2, fArr3);
                        i4 = i8;
                        fArr2 = fArr3;
                    } else {
                        i4 = i12;
                        i5 = i6;
                        if (c4004xt3.f16638do != null) {
                            double m8673do2 = c4004xt3.m8673do(fArr6, m8673do);
                            c4004xt3.f16638do[0].mo7282case(m8673do2, c4004xt3.f16648if);
                            c4004xt3.f16638do[0].mo7284for(m8673do2, c4004xt3.f16633do);
                            float f8 = fArr6[0];
                            int i13 = 0;
                            while (true) {
                                dArr = c4004xt3.f16648if;
                                if (i13 >= dArr.length) {
                                    break;
                                }
                                dArr[i13] = dArr[i13] * f8;
                                i13++;
                            }
                            int[] iArr2 = c4004xt3.f16635do;
                            double[] dArr5 = c4004xt3.f16633do;
                            c0112At.getClass();
                            fArr2 = fArr5;
                            C0112At.m105this(f2, f3, fArr5, iArr2, dArr, dArr5);
                            c2922iK2.m6892do(f2, f3, i7, height2, fArr2);
                        } else {
                            C0112At c0112At2 = c4004xt3.f16644if;
                            AbstractC0240Gp abstractC0240Gp8 = abstractC0240Gp5;
                            float f9 = c0112At2.f151for - c0112At.f151for;
                            float f10 = c0112At2.f155new - c0112At.f155new;
                            AbstractC0240Gp abstractC0240Gp9 = abstractC0240Gp2;
                            float f11 = c0112At2.f157try - c0112At.f157try;
                            float f12 = (c0112At2.f145case - c0112At.f145case) + f10;
                            fArr5[0] = ((f11 + f9) * f2) + ((1.0f - f2) * f9);
                            fArr5[1] = (f12 * f3) + ((1.0f - f3) * f10);
                            c2922iK2.f13463try = 0.0f;
                            c2922iK2.f13462new = 0.0f;
                            c2922iK2.f13460for = 0.0f;
                            c2922iK2.f13461if = 0.0f;
                            c2922iK2.f13459do = 0.0f;
                            if (oe3 != null) {
                                c2922iK2.f13463try = (float) oe3.f2604do.mo7287try(m8673do);
                                c2922iK2.f13458case = oe3.m1648do(m8673do);
                            }
                            if (oe != null) {
                                c2922iK2.f13460for = (float) oe.f2604do.mo7287try(m8673do);
                            }
                            if (oe2 != null) {
                                c2922iK2.f13462new = (float) oe2.f2604do.mo7287try(m8673do);
                            }
                            if (oe4 != null) {
                                c2922iK2.f13459do = (float) oe4.f2604do.mo7287try(m8673do);
                            }
                            if (oe5 != null) {
                                c2922iK2.f13461if = (float) oe5.f2604do.mo7287try(m8673do);
                            }
                            if (abstractC0240Gp4 != null) {
                                c2922iK2.f13463try = abstractC0240Gp4.m763if(m8673do);
                            }
                            if (abstractC0240Gp9 != null) {
                                c2922iK2.f13460for = abstractC0240Gp9.m763if(m8673do);
                            }
                            if (abstractC0240Gp7 != null) {
                                c2922iK2.f13462new = abstractC0240Gp7.m763if(m8673do);
                            }
                            if (abstractC0240Gp8 != null || abstractC0240Gp6 != null) {
                                if (abstractC0240Gp8 == null) {
                                    c2922iK2.f13459do = abstractC0240Gp8.m763if(m8673do);
                                }
                                if (abstractC0240Gp6 == null) {
                                    c2922iK2.f13461if = abstractC0240Gp6.m763if(m8673do);
                                }
                            }
                            fArr2 = fArr5;
                            c2922iK2.m6892do(f2, f3, i7, height2, fArr2);
                        }
                    }
                } else {
                    i = width;
                    matrix = matrix3;
                    i2 = height;
                    f = f7;
                    i3 = i10;
                    i4 = i12;
                    fArr2 = fArr5;
                    f2 = f4;
                    i5 = i11;
                    c4004xt2.m8675if(f6, f2, f3, fArr2);
                }
                if (i4 < 2) {
                    fArr2[0] = fArr2[0] * f;
                    fArr2[1] = fArr2[1] * f;
                }
                float[] fArr7 = this.f6228do;
                matrix3 = matrix;
                matrix3.mapVectors(fArr7);
                int i14 = i;
                float f13 = i14 * f2;
                int i15 = i2;
                float f14 = i15 * f3;
                float f15 = fArr7[0];
                float f16 = this.f6225do;
                float f17 = f14 - (fArr7[1] * f16);
                matrix3.mapVectors(fArr7);
                canvas.drawLine(f13, f14, f13 - (f15 * f16), f17, this.f6231new);
                i11 = i5 + 1;
                motionTelltales = this;
                width = i14;
                height = i15;
                fArr4 = fArr;
                i10 = i3;
                i9 = 5;
            }
            i10++;
            height = height;
            fArr4 = fArr4;
            i9 = 5;
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6231new = new Paint();
        this.f6228do = new float[2];
        this.f6226do = new Matrix();
        this.f6229else = 0;
        this.f6230goto = -65281;
        this.f6225do = 0.25f;
        m3623do(context, attributeSet);
    }
}
