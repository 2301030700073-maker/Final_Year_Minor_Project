package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class YP {
    public final int A00;
    public final String A01;
    public final List<YO> A02;
    public final byte[] A03;

    public YP(int i, String str, List<YO> list, byte[] bArr) {
        List<YO> unmodifiableList;
        this.A00 = i;
        this.A01 = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.A02 = unmodifiableList;
        this.A03 = bArr;
    }
}
