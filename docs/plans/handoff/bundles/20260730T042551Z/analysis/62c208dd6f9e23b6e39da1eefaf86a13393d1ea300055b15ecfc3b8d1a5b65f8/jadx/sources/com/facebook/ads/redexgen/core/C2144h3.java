package com.facebook.ads.redexgen.core;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.h3, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2144h3 extends AbstractC09745q<C1905d9> {
    public int A00;
    public int A01;
    public int A02;
    public DR A03;
    public JL A04;
    public String A05;
    public List<C1252Hc> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC2478md A08;
    public final C10297t A09;
    public final C2322k1 A0A;
    public final A7 A0B;
    public final C2238ie A0C;
    public final C1141Cv A0D;
    public final C1357Ld A0E;
    public final C1777b5 A0F;

    public C2144h3(C2322k1 c2322k1, List<C1252Hc> list, AbstractC2478md abstractC2478md, A7 a7, C2238ie c2238ie, DR dr, String str, C1357Ld c1357Ld, C1777b5 c1777b5) {
        this.A0A = c2322k1;
        this.A0B = a7;
        this.A0C = c2238ie;
        this.A09 = c2238ie.A11();
        this.A04 = c2238ie.A1B();
        this.A0D = c2238ie.A1A();
        this.A03 = dr;
        this.A08 = abstractC2478md;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c1357Ld;
        this.A0F = c1777b5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1905d9 A0D(ViewGroup viewGroup, int i) {
        return new C1905d9(FR.A00(new C1220Fw(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0O(this.A0F).A0K(this.A0C).A0Q(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A1c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1905d9 c1905d9, int i) {
        C1252Hc c1252Hc = this.A06.get(i);
        c1905d9.A0k(this.A04);
        c1905d9.A0j(c1252Hc, this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final int A0C() {
        return this.A06.size();
    }

    public final void A0G(int i, int i2, int i3) {
        boolean needsUpdate = i != this.A00;
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        if (needsUpdate) {
            A06();
        }
    }

    public final void A0H(JL jl) {
        this.A04 = jl;
    }
}
