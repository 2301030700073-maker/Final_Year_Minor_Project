package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cclass;
import java.util.Iterator;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.protected, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cprotected extends Ctransient<Object, Object> {
    public Cprotected(int i) {
        super(i);
    }

    @Override // androidx.datastore.preferences.protobuf.Ctransient
    /* renamed from: else, reason: not valid java name */
    public final void mo3982else() {
        if (!((Ctransient) this).f6663do) {
            for (int i = 0; i < m4007new(); i++) {
                ((Cclass.Cdo) m4004for(i).getKey()).mo3828for();
            }
            Iterator<Map.Entry<Object, Object>> it = m4009try().iterator();
            while (it.hasNext()) {
                ((Cclass.Cdo) it.next().getKey()).mo3828for();
            }
        }
        super.mo3982else();
    }

    @Override // androidx.datastore.preferences.protobuf.Ctransient, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Cclass.Cdo) obj, obj2);
    }
}
