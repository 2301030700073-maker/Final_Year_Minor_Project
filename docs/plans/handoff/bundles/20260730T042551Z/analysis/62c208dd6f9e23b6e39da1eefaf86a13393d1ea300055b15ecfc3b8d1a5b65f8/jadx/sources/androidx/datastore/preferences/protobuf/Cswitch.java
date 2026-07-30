package androidx.datastore.preferences.protobuf;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC3666s8;
import defpackage.C4126zx;
import defpackage.EnumC3327mM;

/* renamed from: androidx.datastore.preferences.protobuf.switch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cswitch<K, V> {

    /* renamed from: do, reason: not valid java name */
    public final Cdo<K, V> f6643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final K f6644do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: if, reason: not valid java name */
    public final V f6645if;

    /* renamed from: androidx.datastore.preferences.protobuf.switch$do, reason: invalid class name */
    public static class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f6646do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EnumC3327mM f6647do;

        /* renamed from: if, reason: not valid java name */
        public final V f6648if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final EnumC3327mM f6649if;

        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(EnumC3327mM.Cdo cdo, EnumC3327mM.Cfor cfor, C4126zx c4126zx) {
            this.f6647do = cdo;
            this.f6649if = cfor;
            this.f6648if = c4126zx;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cswitch(EnumC3327mM.Cdo cdo, EnumC3327mM.Cfor cfor, C4126zx c4126zx) {
        this.f6643do = new Cdo<>(cdo, cfor, c4126zx);
        this.f6645if = c4126zx;
    }

    /* renamed from: do, reason: not valid java name */
    public static <K, V> int m3992do(Cdo<K, V> cdo, K k, V v) {
        return Cclass.m3815if(cdo.f6649if, 2, v) + Cclass.m3815if(cdo.f6647do, 1, k);
    }

    /* renamed from: if, reason: not valid java name */
    public static <K, V> void m3993if(AbstractC3666s8 abstractC3666s8, Cdo<K, V> cdo, K k, V v) {
        Cclass.m3817super(abstractC3666s8, cdo.f6647do, 1, k);
        Cclass.m3817super(abstractC3666s8, cdo.f6649if, 2, v);
    }
}
