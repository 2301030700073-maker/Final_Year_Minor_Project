package com.google.protobuf;

import com.google.protobuf.Cthis;
import java.util.Map;

/* renamed from: com.google.protobuf.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse extends Ccase<Cthis.Cnew> {
    @Override // com.google.protobuf.Ccase
    /* renamed from: case */
    public final void mo6181case(Map.Entry entry) {
        ((Cthis.Cnew) entry.getKey()).getClass();
        throw null;
    }

    @Override // com.google.protobuf.Ccase
    /* renamed from: do */
    public final void mo6182do(Map.Entry entry) {
        ((Cthis.Cnew) entry.getKey()).getClass();
    }

    @Override // com.google.protobuf.Ccase
    /* renamed from: for */
    public final Cgoto<Cthis.Cnew> mo6183for(Object obj) {
        Cthis.Cfor cfor = (Cthis.Cfor) obj;
        Cgoto<Cthis.Cnew> cgoto = cfor.extensions;
        if (cgoto.f12071do) {
            cfor.extensions = cgoto.clone();
        }
        return cfor.extensions;
    }

    @Override // com.google.protobuf.Ccase
    /* renamed from: if */
    public final Cgoto<Cthis.Cnew> mo6184if(Object obj) {
        return ((Cthis.Cfor) obj).extensions;
    }

    @Override // com.google.protobuf.Ccase
    /* renamed from: new */
    public final boolean mo6185new(Cstatic cstatic) {
        return cstatic instanceof Cthis.Cfor;
    }

    @Override // com.google.protobuf.Ccase
    /* renamed from: try */
    public final void mo6186try(Object obj) {
        ((Cthis.Cfor) obj).extensions.m6252class();
    }
}
