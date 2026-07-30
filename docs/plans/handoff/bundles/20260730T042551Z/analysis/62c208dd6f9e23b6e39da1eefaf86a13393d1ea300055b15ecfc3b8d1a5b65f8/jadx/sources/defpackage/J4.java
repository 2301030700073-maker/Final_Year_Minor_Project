package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class J4 extends AbstractC3665s7 {
    public J4() {
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1006for(I4 i4) {
        ((AbstractC3665s7) this).f15397do.add(i4);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1007new(int i) {
        Iterator<AbstractC3606r7> it = ((AbstractC3665s7) this).f15397do.iterator();
        while (it.hasNext()) {
            AbstractC3606r7 next = it.next();
            next.f15216do = true;
            next.f15214do = i;
        }
    }

    public J4(String[] strArr, float[] fArr) {
        if (strArr == null || fArr == null) {
            throw new IllegalArgumentException("Labels or/and values can't be null.");
        }
        if (strArr.length != fArr.length) {
            throw new IllegalArgumentException("Arrays size doesn't match.");
        }
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            m1006for(new I4(strArr[i], fArr[i]));
        }
    }
}
