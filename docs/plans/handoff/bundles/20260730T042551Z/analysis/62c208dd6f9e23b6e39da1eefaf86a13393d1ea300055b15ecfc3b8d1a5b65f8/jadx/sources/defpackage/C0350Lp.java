package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: Lp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0350Lp extends AbstractC0130Bp {

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f2026for = -1;

    /* renamed from: do, reason: not valid java name */
    public float f2022do = Float.NaN;

    /* renamed from: if, reason: not valid java name */
    public float f2028if = Float.NaN;

    /* renamed from: for, reason: not valid java name */
    public float f2025for = Float.NaN;

    /* renamed from: new, reason: not valid java name */
    public float f2029new = Float.NaN;

    /* renamed from: try, reason: not valid java name */
    public float f2032try = Float.NaN;

    /* renamed from: case, reason: not valid java name */
    public float f2018case = Float.NaN;

    /* renamed from: else, reason: not valid java name */
    public float f2023else = Float.NaN;

    /* renamed from: goto, reason: not valid java name */
    public float f2027goto = Float.NaN;

    /* renamed from: this, reason: not valid java name */
    public float f2031this = Float.NaN;

    /* renamed from: break, reason: not valid java name */
    public float f2017break = Float.NaN;

    /* renamed from: catch, reason: not valid java name */
    public float f2019catch = Float.NaN;

    /* renamed from: class, reason: not valid java name */
    public float f2020class = Float.NaN;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f2030new = 0;

    /* renamed from: const, reason: not valid java name */
    public float f2021const = Float.NaN;

    /* renamed from: final, reason: not valid java name */
    public float f2024final = 0.0f;

    /* renamed from: Lp$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f2033do;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2033do = sparseIntArray;
            sparseIntArray.append(0, 1);
            sparseIntArray.append(9, 2);
            sparseIntArray.append(5, 4);
            sparseIntArray.append(6, 5);
            sparseIntArray.append(7, 6);
            sparseIntArray.append(3, 7);
            sparseIntArray.append(15, 8);
            sparseIntArray.append(14, 9);
            sparseIntArray.append(13, 10);
            sparseIntArray.append(11, 12);
            sparseIntArray.append(10, 13);
            sparseIntArray.append(4, 14);
            sparseIntArray.append(1, 15);
            sparseIntArray.append(2, 16);
            sparseIntArray.append(8, 17);
            sparseIntArray.append(12, 18);
            sparseIntArray.append(18, 20);
            sparseIntArray.append(17, 21);
            sparseIntArray.append(19, 19);
        }
    }

    public C0350Lp() {
        ((AbstractC0130Bp) this).f286do = new HashMap<>();
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: do */
    public final void mo222do(HashMap<String, OE> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: for */
    public final void mo223for(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.F);
        SparseIntArray sparseIntArray = Cdo.f2033do;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = Cdo.f2033do;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.f2022do = obtainStyledAttributes.getFloat(index, this.f2022do);
                    break;
                case 2:
                    this.f2028if = obtainStyledAttributes.getDimension(index, this.f2028if);
                    break;
                case 3:
                case 11:
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
                case 4:
                    this.f2025for = obtainStyledAttributes.getFloat(index, this.f2025for);
                    break;
                case 5:
                    this.f2029new = obtainStyledAttributes.getFloat(index, this.f2029new);
                    break;
                case 6:
                    this.f2032try = obtainStyledAttributes.getFloat(index, this.f2032try);
                    break;
                case 7:
                    this.f2023else = obtainStyledAttributes.getFloat(index, this.f2023else);
                    break;
                case 8:
                    this.f2018case = obtainStyledAttributes.getFloat(index, this.f2018case);
                    break;
                case 9:
                    obtainStyledAttributes.getString(index);
                    break;
                case 10:
                    if (MotionLayout.f6057catch) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, super.f287if);
                        super.f287if = resourceId;
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
                        super.f287if = obtainStyledAttributes.getResourceId(index, super.f287if);
                        break;
                    }
                case 12:
                    ((AbstractC0130Bp) this).f284do = obtainStyledAttributes.getInt(index, ((AbstractC0130Bp) this).f284do);
                    break;
                case 13:
                    this.f2026for = obtainStyledAttributes.getInteger(index, this.f2026for);
                    break;
                case 14:
                    this.f2027goto = obtainStyledAttributes.getFloat(index, this.f2027goto);
                    break;
                case 15:
                    this.f2031this = obtainStyledAttributes.getDimension(index, this.f2031this);
                    break;
                case 16:
                    this.f2017break = obtainStyledAttributes.getDimension(index, this.f2017break);
                    break;
                case 17:
                    this.f2019catch = obtainStyledAttributes.getDimension(index, this.f2019catch);
                    break;
                case 18:
                    this.f2020class = obtainStyledAttributes.getFloat(index, this.f2020class);
                    break;
                case 19:
                    this.f2030new = obtainStyledAttributes.getInt(index, this.f2030new);
                    break;
                case 20:
                    this.f2021const = obtainStyledAttributes.getFloat(index, this.f2021const);
                    break;
                case 21:
                    if (obtainStyledAttributes.peekValue(index).type == 5) {
                        this.f2024final = obtainStyledAttributes.getDimension(index, this.f2024final);
                        break;
                    } else {
                        this.f2024final = obtainStyledAttributes.getFloat(index, this.f2024final);
                        break;
                    }
            }
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: if */
    public final void mo224if(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2022do)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2028if)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2025for)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f2029new)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2032try)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2031this)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2017break)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2019catch)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f2018case)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2023else)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2027goto)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2020class)) {
            hashSet.add("progress");
        }
        if (((AbstractC0130Bp) this).f286do.size() > 0) {
            Iterator<String> it = ((AbstractC0130Bp) this).f286do.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: new */
    public final void mo225new(HashMap<String, Integer> hashMap) {
        if (this.f2026for == -1) {
            return;
        }
        if (!Float.isNaN(this.f2022do)) {
            hashMap.put("alpha", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2028if)) {
            hashMap.put("elevation", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2025for)) {
            hashMap.put("rotation", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2029new)) {
            hashMap.put("rotationX", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2032try)) {
            hashMap.put("rotationY", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2031this)) {
            hashMap.put("translationX", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2017break)) {
            hashMap.put("translationY", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2019catch)) {
            hashMap.put("translationZ", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2018case)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2023else)) {
            hashMap.put("scaleX", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2023else)) {
            hashMap.put("scaleY", Integer.valueOf(this.f2026for));
        }
        if (!Float.isNaN(this.f2020class)) {
            hashMap.put("progress", Integer.valueOf(this.f2026for));
        }
        if (((AbstractC0130Bp) this).f286do.size() > 0) {
            Iterator<String> it = ((AbstractC0130Bp) this).f286do.keySet().iterator();
            while (it.hasNext()) {
                hashMap.put(C4122zt.m8824for("CUSTOM,", it.next()), Integer.valueOf(this.f2026for));
            }
        }
    }
}
