package defpackage;

import defpackage.C0831co;
import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public final class NG {
    /* renamed from: do, reason: not valid java name */
    public static final Object m1509do(FG fg, C0831co.Cdo.C0051do c0051do) {
        if (!fg.mo602super()) {
            U6 u6 = new U6(1, C3645ro.m8008package(c0051do));
            u6.m2359static();
            fg.mo597for(ExecutorC3812ue.f15942do, new MG(u6));
            return u6.m2358return();
        }
        Exception mo591catch = fg.mo591catch();
        if (mo591catch != null) {
            throw mo591catch;
        }
        if (!fg.mo596final()) {
            return fg.mo592class();
        }
        throw new CancellationException("Task " + fg + " was cancelled normally.");
    }
}
