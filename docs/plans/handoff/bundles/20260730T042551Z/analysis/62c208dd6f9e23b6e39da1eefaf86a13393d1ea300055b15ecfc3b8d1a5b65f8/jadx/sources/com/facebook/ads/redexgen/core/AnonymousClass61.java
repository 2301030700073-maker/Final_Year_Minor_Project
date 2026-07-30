package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;

/* renamed from: com.facebook.ads.redexgen.X.61, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass61 implements TQ {
    public int A00;
    public boolean A01;
    public final C1634Wt A02 = new C1634Wt();
    public final C10538s A03 = new C10538s();
    public final Deque<AbstractC10518q> A04 = new ArrayDeque();

    public AnonymousClass61() {
        for (int i = 0; i < 2; i++) {
            this.A04.addFirst(new AbstractC10518q() { // from class: com.facebook.ads.redexgen.X.0w
                @Override // com.facebook.ads.redexgen.core.AbstractC10518q, com.facebook.ads.redexgen.core.AbstractC1635Wu
                public final void A0B() {
                    AnonymousClass61.this.A03(this);
                }
            });
        }
        this.A00 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1531Sl
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C10538s A5h() throws TP {
        AbstractC2011es.A08(!this.A01);
        if (this.A00 != 0) {
            return null;
        }
        this.A00 = 1;
        return this.A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1531Sl
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final AbstractC10518q A5j() throws TP {
        AbstractC2011es.A08(!this.A01);
        if (this.A00 != 2 || this.A04.isEmpty()) {
            return null;
        }
        AbstractC10518q removeFirst = this.A04.removeFirst();
        if (this.A03.A05()) {
            removeFirst.A00(4);
        } else {
            removeFirst.A0C(this.A03.A01, new C1473Qe(this.A03.A01, this.A02.A02(((ByteBuffer) AbstractC2011es.A01(this.A03.A02)).array())), 0L);
        }
        this.A03.A0A();
        this.A00 = 0;
        return removeFirst;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1531Sl
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void AGR(C10538s c10538s) throws TP {
        AbstractC2011es.A08(!this.A01);
        AbstractC2011es.A08(this.A00 == 1);
        AbstractC2011es.A07(this.A03 == c10538s);
        this.A00 = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(AbstractC10518q abstractC10518q) {
        AbstractC2011es.A08(this.A04.size() < 2);
        AbstractC2011es.A07(!this.A04.contains(abstractC10518q));
        abstractC10518q.A0A();
        this.A04.addFirst(abstractC10518q);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1531Sl
    public final void AGj() {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.core.TQ
    public final void AIn(long j) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1531Sl
    public final void flush() {
        AbstractC2011es.A08(!this.A01);
        this.A03.A0A();
        this.A00 = 0;
    }
}
