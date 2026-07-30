package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.joeykrim.rootcheck.R;

/* renamed from: aH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0682aH {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f4938do = {R.attr.colorPrimary};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f4939if = {R.attr.colorPrimaryVariant};

    /* renamed from: do, reason: not valid java name */
    public static void m3112do(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.u, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m3113for(context, f4939if, "Theme.MaterialComponents");
            }
        }
        m3113for(context, f4938do, "Theme.AppCompat");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m3113for(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                obtainStyledAttributes.recycle();
                z = true;
                break;
            } else {
                if (!obtainStyledAttributes.hasValue(i)) {
                    obtainStyledAttributes.recycle();
                    break;
                }
                i++;
            }
        }
        if (!z) {
            throw new IllegalArgumentException(Cif.m6908case("The style on this component requires your app theme to be ", str, " (or a descendant)."));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r0.getResourceId(0, -1) != (-1)) goto L18;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m3114if(android.content.Context r4, android.util.AttributeSet r5, int[] r6, int r7, int r8, int... r9) {
        /*
            int[] r0 = defpackage.O2.u
            android.content.res.TypedArray r0 = r4.obtainStyledAttributes(r5, r0, r7, r8)
            r1 = 2
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L12
            r0.recycle()
            return
        L12:
            int r1 = r9.length
            r3 = -1
            if (r1 != 0) goto L1d
            int r4 = r0.getResourceId(r2, r3)
            if (r4 == r3) goto L38
            goto L37
        L1d:
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r6, r7, r8)
            int r5 = r9.length
            r6 = 0
        L23:
            if (r6 >= r5) goto L34
            r7 = r9[r6]
            int r7 = r4.getResourceId(r7, r3)
            if (r7 != r3) goto L31
            r4.recycle()
            goto L38
        L31:
            int r6 = r6 + 1
            goto L23
        L34:
            r4.recycle()
        L37:
            r2 = 1
        L38:
            r0.recycle()
            if (r2 == 0) goto L3e
            return
        L3e:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0682aH.m3114if(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    /* renamed from: new, reason: not valid java name */
    public static TypedArray m3115new(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m3112do(context, attributeSet, i, i2);
        m3114if(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static C3970xH m3116try(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m3112do(context, attributeSet, i, i2);
        m3114if(context, attributeSet, iArr, i, i2, iArr2);
        return new C3970xH(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }
}
