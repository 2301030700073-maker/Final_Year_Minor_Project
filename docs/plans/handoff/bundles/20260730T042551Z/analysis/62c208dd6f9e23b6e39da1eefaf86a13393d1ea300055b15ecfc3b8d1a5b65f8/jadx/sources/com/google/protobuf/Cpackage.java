package com.google.protobuf;

import com.google.protobuf.Cgoto;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.protobuf.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage extends Cprivate<Object, Object> {
    public Cpackage(int i) {
        super(i);
    }

    @Override // com.google.protobuf.Cprivate
    /* renamed from: else, reason: not valid java name */
    public final void mo6271else() {
        if (!((Cprivate) this).f12091do) {
            for (int i = 0; i < m6277new(); i++) {
                ((Cgoto.Cdo) m6274for(i).getKey()).mo6262for();
            }
            Iterator<Map.Entry<Object, Object>> it = m6279try().iterator();
            while (it.hasNext()) {
                ((Cgoto.Cdo) it.next().getKey()).mo6262for();
            }
        }
        super.mo6271else();
    }

    @Override // com.google.protobuf.Cprivate, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Comparable) obj, obj2);
    }
}
