package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import defpackage.C0252Hf;
import defpackage.C2600ct;
import defpackage.C2658dt;
import defpackage.CG;
import defpackage.O4;

/* renamed from: androidx.emoji2.text.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto {

    /* renamed from: do, reason: not valid java name */
    public final Typeface f6768do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6769do = new Cdo(1024);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2658dt f6770do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final char[] f6771do;

    /* renamed from: androidx.emoji2.text.goto$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public C0252Hf f6772do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SparseArray<Cdo> f6773do;

        public Cdo() {
            this(1);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4103do(C0252Hf c0252Hf, int i, int i2) {
            int m869do = c0252Hf.m869do(i);
            SparseArray<Cdo> sparseArray = this.f6773do;
            Cdo cdo = sparseArray == null ? null : sparseArray.get(m869do);
            if (cdo == null) {
                cdo = new Cdo();
                sparseArray.put(c0252Hf.m869do(i), cdo);
            }
            if (i2 > i) {
                cdo.m4103do(c0252Hf, i + 1, i2);
            } else {
                cdo.f6772do = c0252Hf;
            }
        }

        public Cdo(int i) {
            this.f6773do = new SparseArray<>(i);
        }
    }

    public Cgoto(Typeface typeface, C2658dt c2658dt) {
        int i;
        int i2;
        this.f6768do = typeface;
        this.f6770do = c2658dt;
        int m255do = c2658dt.m255do(6);
        if (m255do != 0) {
            int i3 = m255do + ((CG) c2658dt).f347do;
            i = ((CG) c2658dt).f348do.getInt(((CG) c2658dt).f348do.getInt(i3) + i3);
        } else {
            i = 0;
        }
        this.f6771do = new char[i * 2];
        int m255do2 = c2658dt.m255do(6);
        if (m255do2 != 0) {
            int i4 = m255do2 + ((CG) c2658dt).f347do;
            i2 = ((CG) c2658dt).f348do.getInt(((CG) c2658dt).f348do.getInt(i4) + i4);
        } else {
            i2 = 0;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            C0252Hf c0252Hf = new C0252Hf(this, i5);
            C2600ct m870for = c0252Hf.m870for();
            int m255do3 = m870for.m255do(4);
            Character.toChars(m255do3 != 0 ? ((CG) m870for).f348do.getInt(m255do3 + ((CG) m870for).f347do) : 0, this.f6771do, i5 * 2);
            O4.m1604else(c0252Hf.m871if() > 0, "invalid metadata codepoint length");
            this.f6769do.m4103do(c0252Hf, 0, c0252Hf.m871if() - 1);
        }
    }
}
