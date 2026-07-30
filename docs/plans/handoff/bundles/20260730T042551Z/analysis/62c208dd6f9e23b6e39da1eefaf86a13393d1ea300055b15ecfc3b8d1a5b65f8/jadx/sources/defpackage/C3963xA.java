package defpackage;

import androidx.work.impl.WorkDatabase_Impl;
import defpackage.InterfaceC0741bG;

/* renamed from: xA, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3963xA extends InterfaceC0741bG.Cdo {

    /* renamed from: do, reason: not valid java name */
    public C0556Vc f16522do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16523do;

    /* renamed from: xA$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f16524do = 12;

        /* renamed from: do */
        public abstract void mo4734do(C0519Tj c0519Tj);

        /* renamed from: if */
        public abstract Cif mo4735if(C0519Tj c0519Tj);
    }

    /* renamed from: xA$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f16525do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f16526do;

        public Cif(String str, boolean z) {
            this.f16526do = z;
            this.f16525do = str;
        }
    }

    public C3963xA(C0556Vc c0556Vc, WorkDatabase_Impl.Cdo cdo) {
        super(((Cdo) cdo).f16524do);
        this.f16522do = c0556Vc;
        this.f16523do = cdo;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8620for(C0519Tj c0519Tj) {
        c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        c0519Tj.m2282for("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0171 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0076 A[EDGE_INSN: B:90:0x0076->B:79:0x0076 BREAK  A[LOOP:4: B:58:0x0020->B:80:?], SYNTHETIC] */
    @Override // defpackage.InterfaceC0741bG.Cdo
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4821if(defpackage.C0519Tj r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3963xA.mo4821if(Tj, int, int):void");
    }
}
