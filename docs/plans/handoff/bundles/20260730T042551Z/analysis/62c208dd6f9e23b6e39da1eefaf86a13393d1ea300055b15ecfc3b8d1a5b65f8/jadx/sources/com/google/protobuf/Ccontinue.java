package com.google.protobuf;

import com.google.protobuf.Cclass;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import java.util.Arrays;

/* renamed from: com.google.protobuf.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue {

    /* renamed from: do, reason: not valid java name */
    public static final Ccontinue f12050do = new Ccontinue(0, new int[0], new Object[0], false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f12051do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12052do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f12053do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f12054do;

    /* renamed from: if, reason: not valid java name */
    public int f12055if;

    public Ccontinue() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6191do(int i) {
        int[] iArr = this.f12053do;
        if (i > iArr.length) {
            int i2 = this.f12051do;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f12053do = Arrays.copyOf(iArr, i);
            this.f12054do = Arrays.copyOf(this.f12054do, i);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Ccontinue)) {
            return false;
        }
        Ccontinue ccontinue = (Ccontinue) obj;
        int i = this.f12051do;
        if (i == ccontinue.f12051do) {
            int[] iArr = this.f12053do;
            int[] iArr2 = ccontinue.f12053do;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                }
                if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                Object[] objArr = this.f12054do;
                Object[] objArr2 = ccontinue.f12054do;
                int i3 = this.f12051do;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    }
                    i4++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6192for(Ctry ctry) {
        if (this.f12051do == 0) {
            return;
        }
        ctry.getClass();
        for (int i = 0; i < this.f12051do; i++) {
            int i2 = this.f12053do[i];
            Object obj = this.f12054do[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                ctry.m6329break(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                ctry.m6330case(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                ctry.m6339if(i3, (AbstractC3429o6) obj);
            } else if (i4 == 3) {
                AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
                abstractC3725t8.q(i3, 3);
                ((Ccontinue) obj).m6192for(ctry);
                abstractC3725t8.q(i3, 4);
            } else {
                if (i4 != 5) {
                    int i5 = Cclass.f12047for;
                    throw new RuntimeException(new Cclass.Cdo());
                }
                ctry.m6345try(i3, ((Integer) obj).intValue());
            }
        }
    }

    public final int hashCode() {
        int i = this.f12051do;
        int i2 = (527 + i) * 31;
        int[] iArr = this.f12053do;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f12054do;
        int i7 = this.f12051do;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m6193if() {
        int m8202implements;
        int i = this.f12055if;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f12051do; i3++) {
            int i4 = this.f12053do[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                m8202implements = AbstractC3725t8.m8202implements(i5, ((Long) this.f12054do[i3]).longValue());
            } else if (i6 == 1) {
                ((Long) this.f12054do[i3]).longValue();
                m8202implements = AbstractC3725t8.m8211return(i5);
            } else if (i6 == 2) {
                m8202implements = AbstractC3725t8.m8219while(i5, (AbstractC3429o6) this.f12054do[i3]);
            } else if (i6 == 3) {
                i2 = ((Ccontinue) this.f12054do[i3]).m6193if() + (AbstractC3725t8.m8205interface(i5) * 2) + i2;
            } else {
                if (i6 != 5) {
                    int i7 = Cclass.f12047for;
                    throw new IllegalStateException(new Cclass.Cdo());
                }
                ((Integer) this.f12054do[i3]).intValue();
                m8202implements = AbstractC3725t8.m8210public(i5);
            }
            i2 = m8202implements + i2;
        }
        this.f12055if = i2;
        return i2;
    }

    public Ccontinue(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f12055if = -1;
        this.f12051do = i;
        this.f12053do = iArr;
        this.f12054do = objArr;
        this.f12052do = z;
    }
}
