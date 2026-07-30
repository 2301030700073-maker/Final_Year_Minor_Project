package defpackage;

import defpackage.PC;
import j$.util.Objects;
import java.io.IOException;

/* renamed from: Eb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0182Eb implements PC {

    /* renamed from: do, reason: not valid java name */
    public final C0160Db f863do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0271Ic f864do;

    public C0182Eb(C0271Ic c0271Ic, C0495Sh c0495Sh) {
        this.f864do = c0271Ic;
        this.f863do = new C0160Db(c0495Sh);
    }

    @Override // defpackage.PC
    /* renamed from: do, reason: not valid java name */
    public final boolean mo485do() {
        return this.f864do.m958do();
    }

    @Override // defpackage.PC
    /* renamed from: for, reason: not valid java name */
    public final void mo486for(PC.Cif cif) {
        Objects.toString(cif);
        C0160Db c0160Db = this.f863do;
        String str = cif.f2746do;
        synchronized (c0160Db) {
            if (!Objects.equals(c0160Db.f631if, str)) {
                C0495Sh c0495Sh = c0160Db.f629do;
                String str2 = c0160Db.f630do;
                if (str2 != null && str != null) {
                    try {
                        c0495Sh.m2184if(str2, "aqs.".concat(str)).createNewFile();
                    } catch (IOException unused) {
                    }
                }
                c0160Db.f631if = str;
            }
        }
    }

    @Override // defpackage.PC
    /* renamed from: if, reason: not valid java name */
    public final void mo487if() {
    }

    /* renamed from: new, reason: not valid java name */
    public final void m488new(String str) {
        C0160Db c0160Db = this.f863do;
        synchronized (c0160Db) {
            if (!Objects.equals(c0160Db.f630do, str)) {
                C0495Sh c0495Sh = c0160Db.f629do;
                String str2 = c0160Db.f631if;
                if (str != null && str2 != null) {
                    try {
                        c0495Sh.m2184if(str, "aqs.".concat(str2)).createNewFile();
                    } catch (IOException unused) {
                    }
                }
                c0160Db.f630do = str;
            }
        }
    }
}
