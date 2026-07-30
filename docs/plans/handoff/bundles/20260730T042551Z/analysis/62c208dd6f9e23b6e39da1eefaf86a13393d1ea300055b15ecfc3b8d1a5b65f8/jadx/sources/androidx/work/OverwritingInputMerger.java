package androidx.work;

import androidx.work.Cif;
import defpackage.AbstractC0567Vn;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class OverwritingInputMerger extends AbstractC0567Vn {
    @Override // defpackage.AbstractC0567Vn
    /* renamed from: do */
    public final Cif mo2666do(ArrayList arrayList) {
        Cif.Cdo cdo = new Cif.Cdo();
        HashMap hashMap = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hashMap.putAll(DesugarCollections.unmodifiableMap(((Cif) it.next()).f8145do));
        }
        cdo.m4724do(hashMap);
        Cif cif = new Cif(cdo.f8146do);
        Cif.m4722for(cif);
        return cif;
    }
}
