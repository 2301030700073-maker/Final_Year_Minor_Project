package com.facebook.ads.redexgen.core;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.d7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1903d7 extends AbstractC09745q<C1878ci> {
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public DQ A04;
    public DR A05;
    public String A06;
    public List<C1252Hc> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC2478md A0A;
    public final C10297t A0B;
    public final C2322k1 A0C;
    public final A7 A0D;
    public final C1141Cv A0E;
    public final C1914dI A0F;
    public final JL A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public C1903d7(C2322k1 c2322k1, List<C1252Hc> list, AbstractC2478md abstractC2478md, A7 a7, C10297t c10297t, JL jl, C1141Cv c1141Cv, DR dr, String str, int i, int i2, int i3, int i4, C1914dI c1914dI, DQ dq) {
        this.A0C = c2322k1;
        this.A0D = a7;
        this.A0B = c10297t;
        this.A0G = jl;
        this.A0E = c1141Cv;
        this.A05 = dr;
        this.A0A = abstractC2478md;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = c1914dI;
        this.A04 = dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1878ci A0D(ViewGroup viewGroup, int i) {
        return new C1878ci(AbstractC1227Gd.A00(new C1220Fw(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0N(this.A04).A0Q(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A1c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1878ci c1878ci, int i) {
        c1878ci.A0k(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i == 0) {
            c1878ci.AIL();
            this.A08 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final int A0C() {
        return this.A07.size();
    }
}
