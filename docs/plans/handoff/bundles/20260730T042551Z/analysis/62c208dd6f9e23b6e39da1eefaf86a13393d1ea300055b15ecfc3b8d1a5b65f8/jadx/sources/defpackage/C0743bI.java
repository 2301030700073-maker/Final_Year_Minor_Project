package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* renamed from: bI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0743bI {

    /* renamed from: do, reason: not valid java name */
    public static final float[][] f8362do = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: if, reason: not valid java name */
    public static final float[][] f8363if = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: break, reason: not valid java name */
    public float f8364break;

    /* renamed from: case, reason: not valid java name */
    public float f8365case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f8366case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f8367do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f8368do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MotionLayout f8369do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8370do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f8371do = new float[2];

    /* renamed from: else, reason: not valid java name */
    public float f8372else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public int f8373else;

    /* renamed from: for, reason: not valid java name */
    public float f8374for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f8375for;

    /* renamed from: goto, reason: not valid java name */
    public float f8376goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f8377if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f8378if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f8379if;

    /* renamed from: new, reason: not valid java name */
    public float f8380new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f8381new;

    /* renamed from: this, reason: not valid java name */
    public float f8382this;

    /* renamed from: try, reason: not valid java name */
    public float f8383try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f8384try;

    public C0743bI(Context context, MotionLayout motionLayout, XmlResourceParser xmlResourceParser) {
        this.f8368do = 0;
        this.f8378if = 0;
        this.f8375for = 0;
        this.f8381new = -1;
        this.f8384try = -1;
        this.f8366case = -1;
        this.f8367do = 0.5f;
        this.f8377if = 0.5f;
        this.f8374for = 0.0f;
        this.f8380new = 1.0f;
        this.f8372else = 4.0f;
        this.f8376goto = 1.2f;
        this.f8379if = true;
        this.f8382this = 1.0f;
        this.f8373else = 0;
        this.f8364break = 10.0f;
        this.f8369do = motionLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.P);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 9) {
                this.f8381new = obtainStyledAttributes.getResourceId(index, this.f8381new);
            } else if (index == 10) {
                int i2 = obtainStyledAttributes.getInt(index, this.f8368do);
                this.f8368do = i2;
                float[] fArr = f8362do[i2];
                this.f8377if = fArr[0];
                this.f8367do = fArr[1];
            } else if (index == 0) {
                int i3 = obtainStyledAttributes.getInt(index, this.f8378if);
                this.f8378if = i3;
                float[] fArr2 = f8363if[i3];
                this.f8374for = fArr2[0];
                this.f8380new = fArr2[1];
            } else if (index == 5) {
                this.f8372else = obtainStyledAttributes.getFloat(index, this.f8372else);
            } else if (index == 4) {
                this.f8376goto = obtainStyledAttributes.getFloat(index, this.f8376goto);
            } else if (index == 6) {
                this.f8379if = obtainStyledAttributes.getBoolean(index, this.f8379if);
            } else if (index == 1) {
                this.f8382this = obtainStyledAttributes.getFloat(index, this.f8382this);
            } else if (index == 2) {
                this.f8364break = obtainStyledAttributes.getFloat(index, this.f8364break);
            } else if (index == 11) {
                this.f8384try = obtainStyledAttributes.getResourceId(index, this.f8384try);
            } else if (index == 8) {
                this.f8375for = obtainStyledAttributes.getInt(index, this.f8375for);
            } else if (index == 7) {
                this.f8373else = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == 3) {
                this.f8366case = obtainStyledAttributes.getResourceId(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: do, reason: not valid java name */
    public final RectF m4826do(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f8384try;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4827if(boolean z) {
        float[][] fArr = f8362do;
        float[][] fArr2 = f8363if;
        if (z) {
            fArr2[4] = fArr2[3];
            fArr2[5] = fArr2[2];
            fArr[5] = fArr[2];
            fArr[6] = fArr[1];
        } else {
            fArr2[4] = fArr2[2];
            fArr2[5] = fArr2[3];
            fArr[5] = fArr[1];
            fArr[6] = fArr[2];
        }
        float[] fArr3 = fArr[this.f8368do];
        this.f8377if = fArr3[0];
        this.f8367do = fArr3[1];
        float[] fArr4 = fArr2[this.f8378if];
        this.f8374for = fArr4[0];
        this.f8380new = fArr4[1];
    }

    public final String toString() {
        return this.f8374for + " , " + this.f8380new;
    }
}
