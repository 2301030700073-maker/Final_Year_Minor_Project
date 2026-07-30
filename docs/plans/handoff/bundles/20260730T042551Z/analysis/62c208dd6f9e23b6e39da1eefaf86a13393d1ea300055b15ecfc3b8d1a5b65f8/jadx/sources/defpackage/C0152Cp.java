package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: Cp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0152Cp extends AbstractC0130Bp {

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f428for = -1;

    /* renamed from: do, reason: not valid java name */
    public float f424do = Float.NaN;

    /* renamed from: if, reason: not valid java name */
    public float f430if = Float.NaN;

    /* renamed from: for, reason: not valid java name */
    public float f427for = Float.NaN;

    /* renamed from: new, reason: not valid java name */
    public float f431new = Float.NaN;

    /* renamed from: try, reason: not valid java name */
    public float f433try = Float.NaN;

    /* renamed from: case, reason: not valid java name */
    public float f420case = Float.NaN;

    /* renamed from: else, reason: not valid java name */
    public float f425else = Float.NaN;

    /* renamed from: goto, reason: not valid java name */
    public float f429goto = Float.NaN;

    /* renamed from: this, reason: not valid java name */
    public float f432this = Float.NaN;

    /* renamed from: break, reason: not valid java name */
    public float f419break = Float.NaN;

    /* renamed from: catch, reason: not valid java name */
    public float f421catch = Float.NaN;

    /* renamed from: class, reason: not valid java name */
    public float f422class = Float.NaN;

    /* renamed from: const, reason: not valid java name */
    public float f423const = Float.NaN;

    /* renamed from: final, reason: not valid java name */
    public float f426final = Float.NaN;

    /* renamed from: Cp$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f434do;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f434do = sparseIntArray;
            sparseIntArray.append(0, 1);
            sparseIntArray.append(11, 2);
            sparseIntArray.append(7, 4);
            sparseIntArray.append(8, 5);
            sparseIntArray.append(9, 6);
            sparseIntArray.append(1, 19);
            sparseIntArray.append(2, 20);
            sparseIntArray.append(5, 7);
            sparseIntArray.append(17, 8);
            sparseIntArray.append(16, 9);
            sparseIntArray.append(15, 10);
            sparseIntArray.append(13, 12);
            sparseIntArray.append(12, 13);
            sparseIntArray.append(6, 14);
            sparseIntArray.append(3, 15);
            sparseIntArray.append(4, 16);
            sparseIntArray.append(10, 17);
            sparseIntArray.append(14, 18);
        }
    }

    public C0152Cp() {
        ((AbstractC0130Bp) this).f286do = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x009e, code lost:
    
        if (r1.equals("scaleY") == false) goto L68;
     */
    @Override // defpackage.AbstractC0130Bp
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo222do(java.util.HashMap<java.lang.String, defpackage.OE> r6) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0152Cp.mo222do(java.util.HashMap):void");
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: for */
    public final void mo223for(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.C);
        SparseIntArray sparseIntArray = Cdo.f434do;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = Cdo.f434do;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.f424do = obtainStyledAttributes.getFloat(index, this.f424do);
                    break;
                case 2:
                    this.f430if = obtainStyledAttributes.getDimension(index, this.f430if);
                    break;
                case 3:
                case 11:
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
                case 4:
                    this.f427for = obtainStyledAttributes.getFloat(index, this.f427for);
                    break;
                case 5:
                    this.f431new = obtainStyledAttributes.getFloat(index, this.f431new);
                    break;
                case 6:
                    this.f433try = obtainStyledAttributes.getFloat(index, this.f433try);
                    break;
                case 7:
                    this.f432this = obtainStyledAttributes.getFloat(index, this.f432this);
                    break;
                case 8:
                    this.f429goto = obtainStyledAttributes.getFloat(index, this.f429goto);
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
                    this.f428for = obtainStyledAttributes.getInteger(index, this.f428for);
                    break;
                case 14:
                    this.f419break = obtainStyledAttributes.getFloat(index, this.f419break);
                    break;
                case 15:
                    this.f421catch = obtainStyledAttributes.getDimension(index, this.f421catch);
                    break;
                case 16:
                    this.f422class = obtainStyledAttributes.getDimension(index, this.f422class);
                    break;
                case 17:
                    this.f423const = obtainStyledAttributes.getDimension(index, this.f423const);
                    break;
                case 18:
                    this.f426final = obtainStyledAttributes.getFloat(index, this.f426final);
                    break;
                case 19:
                    this.f420case = obtainStyledAttributes.getDimension(index, this.f420case);
                    break;
                case 20:
                    this.f425else = obtainStyledAttributes.getDimension(index, this.f425else);
                    break;
            }
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: if */
    public final void mo224if(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f424do)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f430if)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f427for)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f431new)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f433try)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f420case)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f425else)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f421catch)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f422class)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f423const)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f429goto)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f432this)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f432this)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f426final)) {
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
        if (this.f428for == -1) {
            return;
        }
        if (!Float.isNaN(this.f424do)) {
            hashMap.put("alpha", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f430if)) {
            hashMap.put("elevation", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f427for)) {
            hashMap.put("rotation", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f431new)) {
            hashMap.put("rotationX", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f433try)) {
            hashMap.put("rotationY", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f420case)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f425else)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f421catch)) {
            hashMap.put("translationX", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f422class)) {
            hashMap.put("translationY", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f423const)) {
            hashMap.put("translationZ", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f429goto)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f432this)) {
            hashMap.put("scaleX", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f419break)) {
            hashMap.put("scaleY", Integer.valueOf(this.f428for));
        }
        if (!Float.isNaN(this.f426final)) {
            hashMap.put("progress", Integer.valueOf(this.f428for));
        }
        if (((AbstractC0130Bp) this).f286do.size() > 0) {
            Iterator<String> it = ((AbstractC0130Bp) this).f286do.keySet().iterator();
            while (it.hasNext()) {
                hashMap.put(C4122zt.m8824for("CUSTOM,", it.next()), Integer.valueOf(this.f428for));
            }
        }
    }
}
