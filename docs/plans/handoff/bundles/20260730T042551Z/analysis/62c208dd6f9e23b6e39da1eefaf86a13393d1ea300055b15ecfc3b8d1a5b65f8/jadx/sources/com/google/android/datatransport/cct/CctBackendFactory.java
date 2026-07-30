package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import defpackage.AbstractC3221kc;
import defpackage.C2909i7;
import defpackage.C4;
import defpackage.InterfaceC3735tI;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements C4 {
    @Override // defpackage.C4
    public InterfaceC3735tI create(AbstractC3221kc abstractC3221kc) {
        return new C2909i7(abstractC3221kc.mo2318do(), abstractC3221kc.mo2321new(), abstractC3221kc.mo2319for());
    }
}
