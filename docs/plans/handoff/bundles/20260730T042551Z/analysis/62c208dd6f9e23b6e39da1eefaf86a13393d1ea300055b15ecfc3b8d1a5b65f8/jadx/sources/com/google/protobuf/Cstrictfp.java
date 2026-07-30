package com.google.protobuf;

import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import java.util.Arrays;

/* renamed from: com.google.protobuf.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp extends Cabstract<Ccontinue, Ccontinue> {
    @Override // com.google.protobuf.Cabstract
    /* renamed from: case */
    public final void mo6169case(Object obj, Ccontinue ccontinue) {
        ((Cthis) obj).unknownFields = ccontinue;
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: do */
    public final Ccontinue mo6170do(Object obj) {
        return ((Cthis) obj).unknownFields;
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: else */
    public final void mo6171else(Object obj, Ctry ctry) {
        Ccontinue ccontinue = (Ccontinue) obj;
        ccontinue.getClass();
        ctry.getClass();
        for (int i = 0; i < ccontinue.f12051do; i++) {
            ctry.m6332class(ccontinue.f12053do[i] >>> 3, ccontinue.f12054do[i]);
        }
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: for */
    public final int mo6172for(Ccontinue ccontinue) {
        Ccontinue ccontinue2 = ccontinue;
        int i = ccontinue2.f12055if;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < ccontinue2.f12051do; i3++) {
            int i4 = ccontinue2.f12053do[i3] >>> 3;
            AbstractC3429o6 abstractC3429o6 = (AbstractC3429o6) ccontinue2.f12054do[i3];
            i2 += AbstractC3725t8.m8219while(3, abstractC3429o6) + AbstractC3725t8.m8209protected(2, i4) + (AbstractC3725t8.m8205interface(1) * 2);
        }
        ccontinue2.f12055if = i2;
        return i2;
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: goto */
    public final void mo6173goto(Object obj, Ctry ctry) {
        ((Ccontinue) obj).m6192for(ctry);
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: if */
    public final int mo6174if(Ccontinue ccontinue) {
        return ccontinue.m6193if();
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: new */
    public final void mo6175new(Object obj) {
        Ccontinue ccontinue = ((Cthis) obj).unknownFields;
        if (ccontinue.f12052do) {
            ccontinue.f12052do = false;
        }
    }

    @Override // com.google.protobuf.Cabstract
    /* renamed from: try */
    public final Ccontinue mo6176try(Object obj, Object obj2) {
        Ccontinue ccontinue = (Ccontinue) obj;
        Ccontinue ccontinue2 = (Ccontinue) obj2;
        Ccontinue ccontinue3 = Ccontinue.f12050do;
        if (ccontinue3.equals(ccontinue2)) {
            return ccontinue;
        }
        if (ccontinue3.equals(ccontinue)) {
            int i = ccontinue.f12051do + ccontinue2.f12051do;
            int[] copyOf = Arrays.copyOf(ccontinue.f12053do, i);
            System.arraycopy(ccontinue2.f12053do, 0, copyOf, ccontinue.f12051do, ccontinue2.f12051do);
            Object[] copyOf2 = Arrays.copyOf(ccontinue.f12054do, i);
            System.arraycopy(ccontinue2.f12054do, 0, copyOf2, ccontinue.f12051do, ccontinue2.f12051do);
            return new Ccontinue(i, copyOf, copyOf2, true);
        }
        ccontinue.getClass();
        if (ccontinue2.equals(ccontinue3)) {
            return ccontinue;
        }
        if (!ccontinue.f12052do) {
            throw new UnsupportedOperationException();
        }
        int i2 = ccontinue.f12051do + ccontinue2.f12051do;
        ccontinue.m6191do(i2);
        System.arraycopy(ccontinue2.f12053do, 0, ccontinue.f12053do, ccontinue.f12051do, ccontinue2.f12051do);
        System.arraycopy(ccontinue2.f12054do, 0, ccontinue.f12054do, ccontinue.f12051do, ccontinue2.f12051do);
        ccontinue.f12051do = i2;
        return ccontinue;
    }
}
