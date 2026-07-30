package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: Ep, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0196Ep extends AbstractC0130Bp {

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f905for = 0;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f909new = -1;

    /* renamed from: do, reason: not valid java name */
    public float f901do = Float.NaN;

    /* renamed from: if, reason: not valid java name */
    public float f907if = 0.0f;

    /* renamed from: for, reason: not valid java name */
    public float f904for = Float.NaN;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f912try = -1;

    /* renamed from: new, reason: not valid java name */
    public float f908new = Float.NaN;

    /* renamed from: try, reason: not valid java name */
    public float f911try = Float.NaN;

    /* renamed from: case, reason: not valid java name */
    public float f897case = Float.NaN;

    /* renamed from: else, reason: not valid java name */
    public float f902else = Float.NaN;

    /* renamed from: goto, reason: not valid java name */
    public float f906goto = Float.NaN;

    /* renamed from: this, reason: not valid java name */
    public float f910this = Float.NaN;

    /* renamed from: break, reason: not valid java name */
    public float f896break = Float.NaN;

    /* renamed from: catch, reason: not valid java name */
    public float f898catch = Float.NaN;

    /* renamed from: class, reason: not valid java name */
    public float f899class = Float.NaN;

    /* renamed from: const, reason: not valid java name */
    public float f900const = Float.NaN;

    /* renamed from: final, reason: not valid java name */
    public float f903final = Float.NaN;

    /* renamed from: Ep$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f913do;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f913do = sparseIntArray;
            sparseIntArray.append(13, 1);
            sparseIntArray.append(11, 2);
            sparseIntArray.append(14, 3);
            sparseIntArray.append(10, 4);
            sparseIntArray.append(18, 5);
            sparseIntArray.append(17, 6);
            sparseIntArray.append(16, 7);
            sparseIntArray.append(19, 8);
            sparseIntArray.append(0, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(5, 11);
            sparseIntArray.append(6, 12);
            sparseIntArray.append(7, 13);
            sparseIntArray.append(15, 14);
            sparseIntArray.append(3, 15);
            sparseIntArray.append(4, 16);
            sparseIntArray.append(1, 17);
            sparseIntArray.append(2, 18);
            sparseIntArray.append(8, 19);
            sparseIntArray.append(12, 20);
        }
    }

    public C0196Ep() {
        ((AbstractC0130Bp) this).f286do = new HashMap<>();
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: do */
    public final void mo222do(HashMap<String, OE> hashMap) {
        OE oe;
        hashMap.size();
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(2, stackTrace.length - 1);
        String str = " ";
        for (int i = 1; i <= min; i++) {
            stackTrace[i].getFileName();
            stackTrace[i].getLineNumber();
            stackTrace[i].getMethodName();
            str = str + " ";
        }
        for (String str2 : hashMap.keySet()) {
            oe = hashMap.get(str2);
            str2.getClass();
            switch (str2) {
                case "rotationX":
                    oe.mo1650if(this.f906goto, ((AbstractC0130Bp) this).f284do);
                    break;
                case "rotationY":
                    oe.mo1650if(this.f910this, ((AbstractC0130Bp) this).f284do);
                    break;
                case "translationX":
                    oe.mo1650if(this.f899class, ((AbstractC0130Bp) this).f284do);
                    break;
                case "translationY":
                    oe.mo1650if(this.f900const, ((AbstractC0130Bp) this).f284do);
                    break;
                case "translationZ":
                    oe.mo1650if(this.f903final, ((AbstractC0130Bp) this).f284do);
                    break;
                case "progress":
                    oe.mo1650if(this.f904for, ((AbstractC0130Bp) this).f284do);
                    break;
                case "scaleX":
                    oe.mo1650if(this.f896break, ((AbstractC0130Bp) this).f284do);
                    break;
                case "scaleY":
                    oe.mo1650if(this.f898catch, ((AbstractC0130Bp) this).f284do);
                    break;
                case "rotation":
                    oe.mo1650if(this.f897case, ((AbstractC0130Bp) this).f284do);
                    break;
                case "elevation":
                    oe.mo1650if(this.f911try, ((AbstractC0130Bp) this).f284do);
                    break;
                case "transitionPathRotate":
                    oe.mo1650if(this.f902else, ((AbstractC0130Bp) this).f284do);
                    break;
                case "alpha":
                    oe.mo1650if(this.f908new, ((AbstractC0130Bp) this).f284do);
                    break;
                case "waveOffset":
                    oe.mo1650if(this.f907if, ((AbstractC0130Bp) this).f284do);
                    break;
            }
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: for */
    public final void mo223for(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.D);
        SparseIntArray sparseIntArray = Cdo.f913do;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = Cdo.f913do;
            switch (sparseIntArray2.get(index)) {
                case 1:
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
                case 2:
                    ((AbstractC0130Bp) this).f284do = obtainStyledAttributes.getInt(index, ((AbstractC0130Bp) this).f284do);
                    break;
                case 3:
                    obtainStyledAttributes.getString(index);
                    break;
                case 4:
                    this.f905for = obtainStyledAttributes.getInteger(index, this.f905for);
                    break;
                case 5:
                    this.f909new = obtainStyledAttributes.getInt(index, this.f909new);
                    break;
                case 6:
                    this.f901do = obtainStyledAttributes.getFloat(index, this.f901do);
                    break;
                case 7:
                    if (obtainStyledAttributes.peekValue(index).type == 5) {
                        this.f907if = obtainStyledAttributes.getDimension(index, this.f907if);
                        break;
                    } else {
                        this.f907if = obtainStyledAttributes.getFloat(index, this.f907if);
                        break;
                    }
                case 8:
                    this.f912try = obtainStyledAttributes.getInt(index, this.f912try);
                    break;
                case 9:
                    this.f908new = obtainStyledAttributes.getFloat(index, this.f908new);
                    break;
                case 10:
                    this.f911try = obtainStyledAttributes.getDimension(index, this.f911try);
                    break;
                case 11:
                    this.f897case = obtainStyledAttributes.getFloat(index, this.f897case);
                    break;
                case 12:
                    this.f906goto = obtainStyledAttributes.getFloat(index, this.f906goto);
                    break;
                case 13:
                    this.f910this = obtainStyledAttributes.getFloat(index, this.f910this);
                    break;
                case 14:
                    this.f902else = obtainStyledAttributes.getFloat(index, this.f902else);
                    break;
                case 15:
                    this.f896break = obtainStyledAttributes.getFloat(index, this.f896break);
                    break;
                case 16:
                    this.f898catch = obtainStyledAttributes.getFloat(index, this.f898catch);
                    break;
                case 17:
                    this.f899class = obtainStyledAttributes.getDimension(index, this.f899class);
                    break;
                case 18:
                    this.f900const = obtainStyledAttributes.getDimension(index, this.f900const);
                    break;
                case 19:
                    this.f903final = obtainStyledAttributes.getDimension(index, this.f903final);
                    break;
                case 20:
                    this.f904for = obtainStyledAttributes.getFloat(index, this.f904for);
                    break;
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
            }
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: if */
    public final void mo224if(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f908new)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f911try)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f897case)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f906goto)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f910this)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f896break)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f898catch)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f902else)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f899class)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f900const)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f903final)) {
            hashSet.add("translationZ");
        }
        if (((AbstractC0130Bp) this).f286do.size() > 0) {
            Iterator<String> it = ((AbstractC0130Bp) this).f286do.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }
}
