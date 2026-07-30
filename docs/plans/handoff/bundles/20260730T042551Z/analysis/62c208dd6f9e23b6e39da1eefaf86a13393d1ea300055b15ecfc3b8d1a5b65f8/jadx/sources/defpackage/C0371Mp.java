package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

/* renamed from: Mp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0371Mp extends AbstractC0130Bp {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Method f2246do;

    /* renamed from: for, reason: not valid java name */
    public float f2248for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Method f2251for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Method f2256if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f2255if = null;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f2249for = -1;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public String f2250for = null;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public String f2259new = null;

    /* renamed from: new, reason: not valid java name */
    public int f2258new = -1;

    /* renamed from: try, reason: not valid java name */
    public int f2261try = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f2245do = null;

    /* renamed from: do, reason: not valid java name */
    public float f2243do = 0.1f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2247do = true;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2257if = true;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f2252for = true;

    /* renamed from: if, reason: not valid java name */
    public float f2253if = Float.NaN;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f2260new = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f2244do = new RectF();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f2254if = new RectF();

    /* renamed from: Mp$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f2262do;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2262do = sparseIntArray;
            sparseIntArray.append(0, 8);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 1);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(7, 6);
            sparseIntArray.append(9, 5);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(2, 10);
            sparseIntArray.append(8, 11);
        }
    }

    public C0371Mp() {
        ((AbstractC0130Bp) this).f286do = new HashMap<>();
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1462try(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: do */
    public final void mo222do(HashMap<String, OE> hashMap) {
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: for */
    public final void mo223for(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.G);
        SparseIntArray sparseIntArray = Cdo.f2262do;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = Cdo.f2262do;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.f2250for = obtainStyledAttributes.getString(index);
                    continue;
                case 2:
                    this.f2259new = obtainStyledAttributes.getString(index);
                    continue;
                case 4:
                    this.f2255if = obtainStyledAttributes.getString(index);
                    continue;
                case 5:
                    this.f2243do = obtainStyledAttributes.getFloat(index, this.f2243do);
                    continue;
                case 6:
                    this.f2258new = obtainStyledAttributes.getResourceId(index, this.f2258new);
                    continue;
                case 7:
                    if (MotionLayout.f6057catch) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, ((AbstractC0130Bp) this).f287if);
                        ((AbstractC0130Bp) this).f287if = resourceId;
                        if (resourceId == -1) {
                            ((AbstractC0130Bp) this).f285do = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            continue;
                        }
                    } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                        ((AbstractC0130Bp) this).f285do = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        ((AbstractC0130Bp) this).f287if = obtainStyledAttributes.getResourceId(index, ((AbstractC0130Bp) this).f287if);
                        break;
                    }
                case 8:
                    int integer = obtainStyledAttributes.getInteger(index, ((AbstractC0130Bp) this).f284do);
                    ((AbstractC0130Bp) this).f284do = integer;
                    this.f2253if = (integer + 0.5f) / 100.0f;
                    continue;
                case 9:
                    this.f2261try = obtainStyledAttributes.getResourceId(index, this.f2261try);
                    continue;
                case 10:
                    this.f2260new = obtainStyledAttributes.getBoolean(index, this.f2260new);
                    continue;
                case 11:
                    this.f2249for = obtainStyledAttributes.getResourceId(index, this.f2249for);
                    break;
            }
            Integer.toHexString(index);
            sparseIntArray2.get(index);
        }
    }

    @Override // defpackage.AbstractC0130Bp
    /* renamed from: if */
    public final void mo224if(HashSet<String> hashSet) {
    }
}
