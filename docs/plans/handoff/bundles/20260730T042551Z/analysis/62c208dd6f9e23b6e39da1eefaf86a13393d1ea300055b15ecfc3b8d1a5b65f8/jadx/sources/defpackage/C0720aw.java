package defpackage;

import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import defpackage.RM;

/* renamed from: aw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0720aw extends RM {

    /* renamed from: aw$do, reason: invalid class name */
    public static final class Cdo extends RM.Cdo<Cdo, C0720aw> {
        public Cdo(Class<? extends ListenableWorker> cls) {
            super(cls);
            ((RM.Cdo) this).f3167do.f3660for = OverwritingInputMerger.class.getName();
        }
    }

    public C0720aw(Cdo cdo) {
        super(((RM.Cdo) cdo).f3169do, ((RM.Cdo) cdo).f3167do, ((RM.Cdo) cdo).f3168do);
    }
}
