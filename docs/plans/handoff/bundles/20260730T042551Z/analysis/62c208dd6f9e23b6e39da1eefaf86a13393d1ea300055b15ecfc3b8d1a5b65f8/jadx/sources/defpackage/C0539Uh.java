package defpackage;

import defpackage.C0517Th;
import defpackage.C0517Th.Cif;
import java.io.File;

/* renamed from: Uh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0539Uh extends C3645ro {
    public static final void d(File file) {
        C0517Th.Cif cif = new C0517Th(file).new Cif();
        while (true) {
            boolean z = true;
            while (cif.hasNext()) {
                File next = cif.next();
                if (next.delete() || !next.exists()) {
                    if (z) {
                        break;
                    }
                }
                z = false;
            }
            return;
        }
    }
}
