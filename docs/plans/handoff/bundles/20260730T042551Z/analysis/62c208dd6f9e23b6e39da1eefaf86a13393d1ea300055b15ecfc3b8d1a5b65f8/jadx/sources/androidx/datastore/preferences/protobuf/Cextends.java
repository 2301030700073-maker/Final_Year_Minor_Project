package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cswitch;
import defpackage.AbstractC3666s8;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.extends, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cextends implements Cdefault {
    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: case */
    public final Cthrows mo3835case() {
        return Cthrows.f6657do.m4000for();
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: do */
    public final Object mo3836do(Object obj) {
        ((Cthrows) obj).f6658do = false;
        return obj;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: else */
    public final Cthrows mo3837else(Object obj, Object obj2) {
        Cthrows cthrows = (Cthrows) obj;
        Cthrows cthrows2 = (Cthrows) obj2;
        if (!cthrows2.isEmpty()) {
            if (!cthrows.f6658do) {
                cthrows = cthrows.m4000for();
            }
            cthrows.m4001if();
            if (!cthrows2.isEmpty()) {
                cthrows.putAll(cthrows2);
            }
        }
        return cthrows;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: for */
    public final Cthrows mo3838for(Object obj) {
        return (Cthrows) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: goto */
    public final Cswitch.Cdo<?, ?> mo3839goto(Object obj) {
        return ((Cswitch) obj).f6643do;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: if */
    public final int mo3840if(int i, Object obj, Object obj2) {
        Cthrows cthrows = (Cthrows) obj;
        Cswitch cswitch = (Cswitch) obj2;
        int i2 = 0;
        if (!cthrows.isEmpty()) {
            for (Map.Entry entry : cthrows.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                cswitch.getClass();
                int m8064interface = AbstractC3666s8.m8064interface(i);
                int m3992do = Cswitch.m3992do(cswitch.f6643do, key, value);
                i2 += AbstractC3666s8.m8076transient(m3992do) + m3992do + m8064interface;
            }
        }
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: new */
    public final Cthrows mo3841new(Object obj) {
        return (Cthrows) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdefault
    /* renamed from: try */
    public final boolean mo3842try(Object obj) {
        return !((Cthrows) obj).f6658do;
    }
}
