package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.emoji2.text.Cgoto;
import androidx.emoji2.text.Cnew;
import defpackage.AbstractC0274If;
import defpackage.C2600ct;
import defpackage.CG;

/* renamed from: androidx.emoji2.text.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase {

    /* renamed from: do, reason: not valid java name */
    public final Cgoto f6749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew.InterfaceC0037new f6750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew.Cthis f6751do;

    /* renamed from: androidx.emoji2.text.case$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f6752do = 1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cgoto.Cdo f6753do;

        /* renamed from: for, reason: not valid java name */
        public int f6754for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public Cgoto.Cdo f6755for;

        /* renamed from: if, reason: not valid java name */
        public int f6756if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Cgoto.Cdo f6757if;

        public Cdo(Cgoto.Cdo cdo) {
            this.f6753do = cdo;
            this.f6757if = cdo;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m4093do(int i) {
            SparseArray<Cgoto.Cdo> sparseArray = this.f6757if.f6773do;
            Cgoto.Cdo cdo = sparseArray == null ? null : sparseArray.get(i);
            int i2 = 2;
            if (this.f6752do != 2) {
                if (cdo == null) {
                    m4095if();
                    i2 = 1;
                } else {
                    this.f6752do = 2;
                    this.f6757if = cdo;
                    this.f6754for = 1;
                }
            } else if (cdo != null) {
                this.f6757if = cdo;
                this.f6754for++;
            } else {
                if (i == 65038) {
                    m4095if();
                } else {
                    if (!(i == 65039)) {
                        Cgoto.Cdo cdo2 = this.f6757if;
                        if (cdo2.f6772do != null) {
                            if (this.f6754for != 1) {
                                this.f6755for = cdo2;
                                m4095if();
                            } else if (m4094for()) {
                                this.f6755for = this.f6757if;
                                m4095if();
                            } else {
                                m4095if();
                            }
                            i2 = 3;
                        } else {
                            m4095if();
                        }
                    }
                }
                i2 = 1;
            }
            this.f6756if = i;
            return i2;
        }

        /* renamed from: for, reason: not valid java name */
        public final boolean m4094for() {
            C2600ct m870for = this.f6757if.f6772do.m870for();
            int m255do = m870for.m255do(6);
            if ((m255do == 0 || ((CG) m870for).f348do.get(m255do + ((CG) m870for).f347do) == 0) ? false : true) {
                return true;
            }
            return this.f6756if == 65039;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4095if() {
            this.f6752do = 1;
            this.f6757if = this.f6753do;
            this.f6754for = 0;
        }
    }

    public Ccase(Cgoto cgoto, Cnew.Cthis cthis, Cif cif) {
        this.f6751do = cthis;
        this.f6749do = cgoto;
        this.f6750do = cif;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m4091do(Editable editable, KeyEvent keyEvent, boolean z) {
        AbstractC0274If[] abstractC0274IfArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!(selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) && (abstractC0274IfArr = (AbstractC0274If[]) editable.getSpans(selectionStart, selectionEnd, AbstractC0274If.class)) != null && abstractC0274IfArr.length > 0) {
            for (AbstractC0274If abstractC0274If : abstractC0274IfArr) {
                int spanStart = editable.getSpanStart(abstractC0274If);
                int spanEnd = editable.getSpanEnd(abstractC0274If);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b5, code lost:
    
        if (r6 >= r7) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0102  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4092if(java.lang.CharSequence r10, int r11, int r12, defpackage.C0252Hf r13) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.Ccase.m4092if(java.lang.CharSequence, int, int, Hf):boolean");
    }
}
