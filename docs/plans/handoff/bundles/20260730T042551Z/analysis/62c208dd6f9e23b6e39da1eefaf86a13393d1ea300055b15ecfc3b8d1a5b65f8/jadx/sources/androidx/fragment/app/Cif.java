package androidx.fragment.app;

import androidx.fragment.app.Cstatic;
import java.util.ArrayList;
import java.util.List;

/* renamed from: androidx.fragment.app.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cbreak f6967do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cstatic.Cnew f6968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List f6969do;

    public Cif(Cbreak cbreak, ArrayList arrayList, Cstatic.Cnew cnew) {
        this.f6967do = cbreak;
        this.f6969do = arrayList;
        this.f6968do = cnew;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list = this.f6969do;
        Cstatic.Cnew cnew = this.f6968do;
        if (list.contains(cnew)) {
            list.remove(cnew);
            this.f6967do.getClass();
            cnew.f7020do.m4202do(cnew.f7019do.mView);
        }
    }
}
