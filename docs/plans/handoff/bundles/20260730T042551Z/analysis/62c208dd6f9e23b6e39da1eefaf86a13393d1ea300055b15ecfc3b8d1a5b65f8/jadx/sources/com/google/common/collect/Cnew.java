package com.google.common.collect;

import com.google.common.collect.Cclass;
import defpackage.R4;
import java.io.Serializable;

/* renamed from: com.google.common.collect.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew<K, V> extends R4<K, V> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public final transient Cfor<K, ? extends com.google.common.collect.Cdo<V>> f11840do;

    /* renamed from: com.google.common.collect.new$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Cclass.Cdo<Cnew> f11841do = Cclass.m6048do(Cnew.class, "map");

        /* renamed from: if, reason: not valid java name */
        public static final Cclass.Cdo<Cnew> f11842if = Cclass.m6048do(Cnew.class, "size");
    }

    public Cnew(Cthis cthis) {
        this.f11840do = cthis;
    }

    @Override // defpackage.InterfaceC0353Lt
    /* renamed from: do */
    public final Cfor mo1357do() {
        return this.f11840do;
    }
}
