package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.util.HashMap;

/* renamed from: Jp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0306Jp extends AbstractC0328Kp {

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f1695if = null;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f1697new = -1;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f1699try = 0;

    /* renamed from: do, reason: not valid java name */
    public float f1692do = Float.NaN;

    /* renamed from: if, reason: not valid java name */
    public float f1694if = Float.NaN;

    /* renamed from: for, reason: not valid java name */
    public float f1693for = Float.NaN;

    /* renamed from: new, reason: not valid java name */
    public float f1696new = Float.NaN;

    /* renamed from: try, reason: not valid java name */
    public final float f1698try = Float.NaN;

    /* renamed from: case, reason: not valid java name */
    public final float f1690case = Float.NaN;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f1691case = 0;

    /* renamed from: Jp$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f1700do;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1700do = sparseIntArray;
            sparseIntArray.append(4, 1);
            sparseIntArray.append(2, 2);
            sparseIntArray.append(11, 3);
            sparseIntArray.append(0, 4);
            sparseIntArray.append(1, 5);
            sparseIntArray.append(8, 6);
            sparseIntArray.append(9, 7);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(10, 8);
            sparseIntArray.append(7, 11);
            sparseIntArray.append(6, 12);
            sparseIntArray.append(5, 10);
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: do */
    public final void mo222do(HashMap<String, OE> hashMap) {
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: for */
    public final void mo223for(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.E);
        SparseIntArray sparseIntArray = Cdo.f1700do;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = Cdo.f1700do;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    if (MotionLayout.f6057catch) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, ((AbstractC0130Bp) this).f287if);
                        ((AbstractC0130Bp) this).f287if = resourceId;
                        if (resourceId == -1) {
                            ((AbstractC0130Bp) this).f285do = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                        ((AbstractC0130Bp) this).f285do = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        ((AbstractC0130Bp) this).f287if = obtainStyledAttributes.getResourceId(index, ((AbstractC0130Bp) this).f287if);
                        break;
                    }
                case 2:
                    ((AbstractC0130Bp) this).f284do = obtainStyledAttributes.getInt(index, ((AbstractC0130Bp) this).f284do);
                    break;
                case 3:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        this.f1695if = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f1695if = C3754tf.f15732do[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    super.f1883for = obtainStyledAttributes.getInteger(index, super.f1883for);
                    break;
                case 5:
                    this.f1699try = obtainStyledAttributes.getInt(index, this.f1699try);
                    break;
                case 6:
                    this.f1693for = obtainStyledAttributes.getFloat(index, this.f1693for);
                    break;
                case 7:
                    this.f1696new = obtainStyledAttributes.getFloat(index, this.f1696new);
                    break;
                case 8:
                    float f = obtainStyledAttributes.getFloat(index, this.f1694if);
                    this.f1692do = f;
                    this.f1694if = f;
                    break;
                case 9:
                    this.f1691case = obtainStyledAttributes.getInt(index, this.f1691case);
                    break;
                case 10:
                    this.f1697new = obtainStyledAttributes.getInt(index, this.f1697new);
                    break;
                case 11:
                    this.f1692do = obtainStyledAttributes.getFloat(index, this.f1692do);
                    break;
                case 12:
                    this.f1694if = obtainStyledAttributes.getFloat(index, this.f1694if);
                    break;
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
            }
        }
    }
}
