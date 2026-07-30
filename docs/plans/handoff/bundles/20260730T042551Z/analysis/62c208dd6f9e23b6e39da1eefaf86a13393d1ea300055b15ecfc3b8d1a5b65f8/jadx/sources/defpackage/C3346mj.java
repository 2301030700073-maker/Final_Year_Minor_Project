package defpackage;

import defpackage.C3405nj;
import java.util.ArrayList;

/* renamed from: mj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3346mj implements InterfaceC0291Ja<C3405nj.Cdo> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f14381do;

    public C3346mj(String str) {
        this.f14381do = str;
    }

    @Override // defpackage.InterfaceC0291Ja
    public final void accept(C3405nj.Cdo cdo) {
        C3405nj.Cdo cdo2 = cdo;
        synchronized (C3405nj.f14552do) {
            C2680eE<String, ArrayList<InterfaceC0291Ja<C3405nj.Cdo>>> c2680eE = C3405nj.f14551do;
            ArrayList<InterfaceC0291Ja<C3405nj.Cdo>> orDefault = c2680eE.getOrDefault(this.f14381do, null);
            if (orDefault == null) {
                return;
            }
            c2680eE.remove(this.f14381do);
            for (int i = 0; i < orDefault.size(); i++) {
                orDefault.get(i).accept(cdo2);
            }
        }
    }
}
