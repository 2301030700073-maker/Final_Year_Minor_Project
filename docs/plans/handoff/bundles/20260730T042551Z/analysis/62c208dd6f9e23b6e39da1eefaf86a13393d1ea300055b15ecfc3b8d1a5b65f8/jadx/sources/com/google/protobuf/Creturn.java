package com.google.protobuf;

import com.google.protobuf.Cimport;
import defpackage.AbstractC3725t8;
import java.util.Map;

/* renamed from: com.google.protobuf.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn implements Cpublic {
    @Override // com.google.protobuf.Cpublic
    /* renamed from: do */
    public final Object mo6281do(Object obj) {
        ((Cnative) obj).f12081do = false;
        return obj;
    }

    @Override // com.google.protobuf.Cpublic
    /* renamed from: for */
    public final Cnative mo6282for(Object obj) {
        return (Cnative) obj;
    }

    @Override // com.google.protobuf.Cpublic
    /* renamed from: if */
    public final int mo6283if(int i, Object obj, Object obj2) {
        Cnative cnative = (Cnative) obj;
        Cimport cimport = (Cimport) obj2;
        int i2 = 0;
        if (!cnative.isEmpty()) {
            for (Map.Entry entry : cnative.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                cimport.getClass();
                int m8205interface = AbstractC3725t8.m8205interface(i);
                int m6266do = Cimport.m6266do(cimport.f12073do, key, value);
                i2 += AbstractC3725t8.m8217transient(m6266do) + m6266do + m8205interface;
            }
        }
        return i2;
    }

    @Override // com.google.protobuf.Cpublic
    /* renamed from: new */
    public final Cimport.Cdo<?, ?> mo6284new(Object obj) {
        return ((Cimport) obj).f12073do;
    }

    @Override // com.google.protobuf.Cpublic
    /* renamed from: try */
    public final Cnative mo6285try(Object obj, Object obj2) {
        Cnative cnative = (Cnative) obj;
        Cnative cnative2 = (Cnative) obj2;
        if (!cnative2.isEmpty()) {
            if (!cnative.f12081do) {
                cnative = cnative.m6268for();
            }
            cnative.m6269if();
            if (!cnative2.isEmpty()) {
                cnative.putAll(cnative2);
            }
        }
        return cnative;
    }
}
