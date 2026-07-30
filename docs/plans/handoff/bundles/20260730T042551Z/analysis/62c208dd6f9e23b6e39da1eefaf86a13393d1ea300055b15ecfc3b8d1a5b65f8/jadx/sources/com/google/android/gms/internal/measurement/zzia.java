package com.google.android.gms.internal.measurement;

import com.google.common.collect.Ccase;
import defpackage.SF;
import defpackage.TF;
import defpackage.UF;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class zzia {
    public static final SF<Ccase<String, String>> zza;

    static {
        SF<Ccase<String, String>> sf = new SF() { // from class: com.google.android.gms.internal.measurement.zzhz
            @Override // defpackage.SF
            public final Object get() {
                return zzia.zza();
            }
        };
        if (!(sf instanceof UF) && !(sf instanceof TF)) {
            sf = sf instanceof Serializable ? new TF<>(sf) : new UF<>(sf);
        }
        zza = sf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if (r5.mo6038this() == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.collect.Ccase zza() {
        /*
            N8 r0 = new N8
            r0.<init>()
            java.util.Set r0 = r0.entrySet()
            r1 = r0
            java.util.AbstractCollection r1 = (java.util.AbstractCollection) r1
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L15
            Pf r0 = defpackage.C0427Pf.f2808do
            goto L70
        L15:
            com.google.common.collect.for$do r1 = new com.google.common.collect.for$do
            N8$do r0 = (defpackage.N8.Cdo) r0
            int r2 = r0.size()
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
            r2 = 0
        L25:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L67
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            java.lang.Object r3 = r3.getValue()
            java.util.Collection r3 = (java.util.Collection) r3
            int r5 = com.google.common.collect.Ctry.f11857for
            boolean r5 = r3 instanceof com.google.common.collect.Ctry
            if (r5 == 0) goto L4f
            boolean r5 = r3 instanceof java.util.SortedSet
            if (r5 != 0) goto L4f
            r5 = r3
            com.google.common.collect.try r5 = (com.google.common.collect.Ctry) r5
            boolean r6 = r5.mo6038this()
            if (r6 != 0) goto L4f
            goto L58
        L4f:
            java.lang.Object[] r3 = r3.toArray()
            int r5 = r3.length
            com.google.common.collect.try r5 = com.google.common.collect.Ctry.m6069final(r5, r3)
        L58:
            boolean r3 = r5.isEmpty()
            if (r3 != 0) goto L25
            r1.m6061if(r4, r5)
            int r3 = r5.size()
            int r2 = r2 + r3
            goto L25
        L67:
            com.google.common.collect.case r0 = new com.google.common.collect.case
            com.google.common.collect.this r1 = r1.m6060do()
            r0.<init>(r1, r2)
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzia.zza():com.google.common.collect.case");
    }
}
