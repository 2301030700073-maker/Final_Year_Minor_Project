package androidx.work;

import android.content.Context;
import androidx.work.Cdo;
import defpackage.AbstractC0614Xq;
import defpackage.FM;
import defpackage.GM;
import defpackage.InterfaceC0260Hn;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class WorkManagerInitializer implements InterfaceC0260Hn<FM> {
    static {
        AbstractC0614Xq.m2870try("WrkMgrInitializer");
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: do */
    public final FM mo883do(Context context) {
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        GM.m729case(context, new Cdo(new Cdo.C0047do()));
        return GM.m731try(context);
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: if */
    public final List<Class<? extends InterfaceC0260Hn<?>>> mo884if() {
        return Collections.emptyList();
    }
}
