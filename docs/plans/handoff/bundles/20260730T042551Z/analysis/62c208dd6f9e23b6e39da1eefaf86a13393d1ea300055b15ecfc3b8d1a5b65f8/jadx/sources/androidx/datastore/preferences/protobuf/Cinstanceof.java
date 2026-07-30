package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cwhile;
import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import java.util.Arrays;

/* renamed from: androidx.datastore.preferences.protobuf.instanceof, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cinstanceof {

    /* renamed from: do, reason: not valid java name */
    public static final Cinstanceof f6599do = new Cinstanceof(0, new int[0], new Object[0], false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f6600do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6601do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f6602do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f6603do;

    /* renamed from: if, reason: not valid java name */
    public int f6604if;

    public Cinstanceof() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m3903do() {
        int m8061implements;
        int i = this.f6604if;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f6600do; i3++) {
            int i4 = this.f6602do[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                m8061implements = AbstractC3666s8.m8061implements(i5, ((Long) this.f6603do[i3]).longValue());
            } else if (i6 == 1) {
                ((Long) this.f6603do[i3]).longValue();
                m8061implements = AbstractC3666s8.m8070return(i5);
            } else if (i6 == 2) {
                m8061implements = AbstractC3666s8.m8078while(i5, (AbstractC3370n6) this.f6603do[i3]);
            } else if (i6 == 3) {
                i2 = ((Cinstanceof) this.f6603do[i3]).m3903do() + (AbstractC3666s8.m8064interface(i5) * 2) + i2;
            } else {
                if (i6 != 5) {
                    int i7 = Cwhile.f6695for;
                    throw new IllegalStateException(new Cwhile.Cdo());
                }
                ((Integer) this.f6603do[i3]).intValue();
                m8061implements = AbstractC3666s8.m8069public(i5);
            }
            i2 = m8061implements + i2;
        }
        this.f6604if = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Cinstanceof)) {
            return false;
        }
        Cinstanceof cinstanceof = (Cinstanceof) obj;
        int i = this.f6600do;
        if (i == cinstanceof.f6600do) {
            int[] iArr = this.f6602do;
            int[] iArr2 = cinstanceof.f6602do;
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
                Object[] objArr = this.f6603do;
                Object[] objArr2 = cinstanceof.f6603do;
                int i3 = this.f6600do;
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
    public final void m3904for(Celse celse) {
        if (this.f6600do == 0) {
            return;
        }
        celse.getClass();
        for (int i = 0; i < this.f6600do; i++) {
            int i2 = this.f6602do[i];
            Object obj = this.f6603do[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                celse.m3847break(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                celse.m3848case(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                celse.m3857if(i3, (AbstractC3370n6) obj);
            } else if (i4 == 3) {
                AbstractC3666s8 abstractC3666s8 = celse.f6583do;
                abstractC3666s8.r(i3, 3);
                ((Cinstanceof) obj).m3904for(celse);
                abstractC3666s8.r(i3, 4);
            } else {
                if (i4 != 5) {
                    int i5 = Cwhile.f6695for;
                    throw new RuntimeException(new Cwhile.Cdo());
                }
                celse.m3863try(i3, ((Integer) obj).intValue());
            }
        }
    }

    public final int hashCode() {
        int i = this.f6600do;
        int i2 = (527 + i) * 31;
        int[] iArr = this.f6602do;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f6603do;
        int i7 = this.f6600do;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3905if(int i, Object obj) {
        if (!this.f6601do) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.f6600do;
        int[] iArr = this.f6602do;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.f6602do = Arrays.copyOf(iArr, i3);
            this.f6603do = Arrays.copyOf(this.f6603do, i3);
        }
        int[] iArr2 = this.f6602do;
        int i4 = this.f6600do;
        iArr2[i4] = i;
        this.f6603do[i4] = obj;
        this.f6600do = i4 + 1;
    }

    public Cinstanceof(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f6604if = -1;
        this.f6600do = i;
        this.f6602do = iArr;
        this.f6603do = objArr;
        this.f6601do = z;
    }
}
