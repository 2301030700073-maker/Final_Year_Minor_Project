package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Xw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1663Xw implements Comparable<C1663Xw> {
    public final int A00;
    public final C1654Xn A01;

    public C1663Xw(int i, C1654Xn c1654Xn) {
        this.A00 = i;
        this.A01 = c1654Xn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1663Xw c1663Xw) {
        return Integer.compare(this.A00, c1663Xw.A00);
    }
}
