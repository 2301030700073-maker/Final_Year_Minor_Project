package com.google.protobuf;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.EnumC3386nM;

/* renamed from: com.google.protobuf.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<K, V> {

    /* renamed from: do, reason: not valid java name */
    public final Cdo<K, V> f12073do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final K f12074do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: if, reason: not valid java name */
    public final V f12075if;

    /* renamed from: com.google.protobuf.import$do, reason: invalid class name */
    public static class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f12076do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EnumC3386nM f12077do;

        /* renamed from: if, reason: not valid java name */
        public final V f12078if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final EnumC3386nM f12079if;

        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(EnumC3386nM.Cdo cdo, EnumC3386nM enumC3386nM, Object obj) {
            this.f12077do = cdo;
            this.f12079if = enumC3386nM;
            this.f12078if = obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cimport(EnumC3386nM.Cdo cdo, EnumC3386nM enumC3386nM, Object obj) {
        this.f12073do = new Cdo<>(cdo, enumC3386nM, obj);
        this.f12075if = obj;
    }

    /* renamed from: do, reason: not valid java name */
    public static <K, V> int m6266do(Cdo<K, V> cdo, K k, V v) {
        return Cgoto.m6247if(cdo.f12079if, 2, v) + Cgoto.m6247if(cdo.f12077do, 1, k);
    }
}
