package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: com.facebook.ads.redexgen.X.5v, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09795v extends YN implements InterfaceC1398Nb {
    public final boolean A00;
    public final boolean A01;
    public final boolean A02;
    public final boolean A03;
    public final boolean A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;

    @MetaExoPlayerCustomization("D25277746")
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final SparseArray<Map<C1486Qs, QH>> A0E;
    public final SparseBooleanArray A0F;
    public static String[] A0G = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "CN7S8zFAdfJ9bVqwMW5SENbnF587rDMj", "ECtvHbgJLZyJlGB78wDP7r1UThztX0Vy", "vZtVD3U5uaTLh0U8YiXzC85k7FHIe0Qs", "kpJyRxDTLVyluzy4Ki", "I2f81on3HcFOk9u5oPzBv5nIGa89bXIT", "pIHA85qiURHoc0OmgkveP1MohnBa7K19", "P0ETTFDWchCwGrAdEF6EXZ7NnZlGXY62"};
    public static final C09795v A0J = new QL().A0u();

    @Deprecated
    public static final C09795v A0I = A0J;
    public static final String A0W = AbstractC2094gE.A0h(1000);
    public static final String A0Q = AbstractC2094gE.A0h(AdError.NO_FILL_ERROR_CODE);
    public static final String A0R = AbstractC2094gE.A0h(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
    public static final String A0T = AbstractC2094gE.A0h(1003);
    public static final String A0M = AbstractC2094gE.A0h(1004);
    public static final String A0N = AbstractC2094gE.A0h(1005);
    public static final String A0K = AbstractC2094gE.A0h(1006);
    public static final String A0V = AbstractC2094gE.A0h(1007);
    public static final String A0b = AbstractC2094gE.A0h(1008);
    public static final String A0O = AbstractC2094gE.A0h(1009);
    public static final String A0Z = AbstractC2094gE.A0h(1010);
    public static final String A0a = AbstractC2094gE.A0h(1011);
    public static final String A0Y = AbstractC2094gE.A0h(1012);
    public static final String A0X = AbstractC2094gE.A0h(1013);
    public static final String A0P = AbstractC2094gE.A0h(1014);
    public static final String A0L = AbstractC2094gE.A0h(1015);
    public static final String A0S = AbstractC2094gE.A0h(1016);
    public static final String A0U = AbstractC2094gE.A0h(1017);
    public static final InterfaceC1397Na<C09795v> A0H = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.QM
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C09795v A0u;
            A0u = new QL(bundle).A0u();
            return A0u;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A0O(Map<C1486Qs, QH> map, Map<C1486Qs, QH> map2) {
        Map.Entry<C1486Qs, QH> next;
        C1486Qs key;
        if (map2.size() != map.size()) {
            return false;
        }
        Set<Map.Entry<C1486Qs, QH>> entrySet = map.entrySet();
        if (A0G[0].length() == 20) {
            throw new RuntimeException();
        }
        A0G[6] = "31qVyA37JmHIq7wJWl6tQ8rYGcKQjTnj";
        Iterator<Map.Entry<C1486Qs, QH>> it = entrySet.iterator();
        do {
            boolean hasNext = it.hasNext();
            String[] strArr = A0G;
            if (strArr[3].charAt(29) == strArr[2].charAt(29)) {
                String[] strArr2 = A0G;
                strArr2[5] = "yEjaVA6ulEwRrX3LDmFuvRh8vmcDT6Dr";
                strArr2[7] = "pBkPhNgZ1sM3uFKmd2X4jzJEolZPtmfi";
                if (!hasNext) {
                    return true;
                }
            } else if (!hasNext) {
                return true;
            }
            next = it.next();
            key = next.getKey();
            if (!map2.containsKey(key)) {
                break;
            }
        } while (AbstractC2094gE.A1E(next.getValue(), map2.get(key)));
        return false;
    }

    public C09795v(QL ql) {
        super(ql);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        SparseArray<Map<C1486Qs, QH>> sparseArray;
        SparseBooleanArray sparseBooleanArray;
        boolean z14;
        z = ql.A0C;
        this.A0C = z;
        z2 = ql.A06;
        this.A06 = z2;
        z3 = ql.A07;
        this.A07 = z3;
        z4 = ql.A05;
        this.A05 = z4;
        z5 = ql.A09;
        this.A09 = z5;
        z6 = ql.A02;
        this.A02 = z6;
        z7 = ql.A03;
        this.A03 = z7;
        z8 = ql.A00;
        this.A00 = z8;
        z9 = ql.A01;
        this.A01 = z9;
        z10 = ql.A08;
        this.A08 = z10;
        z11 = ql.A0B;
        this.A0B = z11;
        z12 = ql.A0D;
        this.A0D = z12;
        z13 = ql.A04;
        this.A04 = z13;
        sparseArray = ql.A0E;
        this.A0E = sparseArray;
        sparseBooleanArray = ql.A0F;
        this.A0F = sparseBooleanArray;
        z14 = ql.A0A;
        this.A0A = z14;
    }

    public static C09795v A02(Context context) {
        return new QL(context).A0u();
    }

    public static /* synthetic */ String A09() {
        String str = A0U;
        String[] strArr = A0G;
        if (strArr[5].charAt(26) == strArr[7].charAt(26)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[3] = "mtf43clS1eUU5UHx5TRFOAR5zRqTy0Kh";
        strArr2[2] = "CrDKZHTScJRyP82QiFXNC9HezVyEH0fT";
        return str;
    }

    public static /* synthetic */ String A0D() {
        String str = A0W;
        if (A0G[0].length() == 20) {
            throw new RuntimeException();
        }
        A0G[0] = "6LY";
        return str;
    }

    public static boolean A0M(SparseArray<Map<C1486Qs, QH>> sparseArray, SparseArray<Map<C1486Qs, QH>> sparseArray2) {
        int size = sparseArray.size();
        int firstSize = sparseArray2.size();
        if (firstSize != size) {
            return false;
        }
        for (int indexInSecond = 0; indexInSecond < size; indexInSecond++) {
            int keyAt = sparseArray.keyAt(indexInSecond);
            String[] strArr = A0G;
            String str = strArr[5];
            String str2 = strArr[7];
            int indexInFirst = str.charAt(26);
            int firstSize2 = str2.charAt(26);
            if (indexInFirst == firstSize2) {
                throw new RuntimeException();
            }
            A0G[6] = "wixiVooXq8HdB8U083lu4f3TdrAsOKAk";
            int firstSize3 = sparseArray2.indexOfKey(keyAt);
            if (firstSize3 < 0 || !A0O(sparseArray.valueAt(indexInSecond), sparseArray2.valueAt(firstSize3))) {
                return false;
            }
        }
        return true;
    }

    public static boolean A0N(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        int size = sparseBooleanArray.size();
        int firstSize = sparseBooleanArray2.size();
        if (firstSize != size) {
            return false;
        }
        for (int indexInFirst = 0; indexInFirst < size; indexInFirst++) {
            int firstSize2 = sparseBooleanArray.keyAt(indexInFirst);
            if (sparseBooleanArray2.indexOfKey(firstSize2) < 0) {
                return false;
            }
        }
        return true;
    }

    public final QL A0P() {
        return new QL(this);
    }

    @Deprecated
    public final QH A0Q(int i, C1486Qs c1486Qs) {
        Map<C1486Qs, QH> map = this.A0E.get(i);
        if (map != null) {
            return map.get(c1486Qs);
        }
        return null;
    }

    public final boolean A0R(int i) {
        return this.A0F.get(i);
    }

    @Deprecated
    public final boolean A0S(int i, C1486Qs c1486Qs) {
        Map<C1486Qs, QH> map = this.A0E.get(i);
        return map != null && map.containsKey(c1486Qs);
    }

    @Override // com.facebook.ads.redexgen.core.YN
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            if (A0G[0].length() == 20) {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "V1cytgY1ecLGUxbfCQ4Qe5VFfNWaEeXc";
            strArr[7] = "gmZ51llyJGBZ5cGYVq8w3xbcdRfXtWAW";
            if (cls == obj.getClass()) {
                C09795v c09795v = (C09795v) obj;
                if (super.equals(c09795v) && this.A0C == c09795v.A0C && this.A06 == c09795v.A06 && this.A07 == c09795v.A07 && this.A05 == c09795v.A05 && this.A09 == c09795v.A09 && this.A02 == c09795v.A02 && this.A03 == c09795v.A03 && this.A00 == c09795v.A00 && this.A01 == c09795v.A01 && this.A08 == c09795v.A08 && this.A0B == c09795v.A0B && this.A0D == c09795v.A0D && this.A04 == c09795v.A04 && A0N(this.A0F, c09795v.A0F) && A0M(this.A0E, c09795v.A0E)) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.YN
    public final int hashCode() {
        return (((((((((((((((((((((((((((1 * 31) + super.hashCode()) * 31) + (this.A0C ? 1 : 0)) * 31) + (this.A06 ? 1 : 0)) * 31) + (this.A07 ? 1 : 0)) * 31) + (this.A05 ? 1 : 0)) * 31) + (this.A09 ? 1 : 0)) * 31) + (this.A02 ? 1 : 0)) * 31) + (this.A03 ? 1 : 0)) * 31) + (this.A00 ? 1 : 0)) * 31) + (this.A01 ? 1 : 0)) * 31) + (this.A08 ? 1 : 0)) * 31) + (this.A0B ? 1 : 0)) * 31) + (this.A0D ? 1 : 0)) * 31) + (this.A04 ? 1 : 0);
    }
}
