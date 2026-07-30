package com.facebook.ads.redexgen.core;

import com.google.android.gms.common.api.Api;
import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.iK, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2219iK {
    public final int A00;
    public final AbstractC1437Os A01;
    public final InterfaceC2218iJ A02;
    public final boolean A03;

    public C2219iK(InterfaceC2218iJ strategy) {
        this(strategy, false, AbstractC1437Os.A03(), Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public C2219iK(InterfaceC2218iJ strategy, boolean omitEmptyStrings, AbstractC1437Os trimmer, int limit) {
        this.A02 = strategy;
        this.A03 = omitEmptyStrings;
        this.A01 = trimmer;
        this.A00 = limit;
    }

    public static C2219iK A02(char separator) {
        return A03(AbstractC1437Os.A02(separator));
    }

    public static C2219iK A03(final AbstractC1437Os separatorMatcher) {
        AbstractC2212iD.A04(separatorMatcher);
        return new C2219iK(new C1434Op(separatorMatcher));
    }

    private Iterator<String> A04(CharSequence sequence) {
        return this.A02.AAa(this, sequence);
    }

    public final List<String> A06(CharSequence sequence) {
        AbstractC2212iD.A04(sequence);
        Iterator<String> A04 = A04(sequence);
        List<String> result = new ArrayList<>();
        while (A04.hasNext()) {
            result.add(A04.next());
        }
        return Collections.unmodifiableList(result);
    }
}
