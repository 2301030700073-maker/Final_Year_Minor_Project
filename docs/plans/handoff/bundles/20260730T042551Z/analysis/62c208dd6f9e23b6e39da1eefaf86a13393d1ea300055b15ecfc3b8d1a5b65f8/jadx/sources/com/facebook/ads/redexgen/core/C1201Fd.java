package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Fd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1201Fd extends FrameLayout {
    public static String[] A08 = {"Q8PK8a4jCXFMgXydViX", "2t", "0mtDJDWqZSrfiocTEOLDLA", "JwyFxt7bdt7eCUIm0ln", "fPboxvDBMmOISakSS", "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO", "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O", "3APcS373YHqcuLzV9G"};
    public DQ A00;
    public C1160Do A01;
    public final AbstractC2478md A02;
    public final C2322k1 A03;
    public final DR A04;
    public final InterfaceC1200Fc A05;
    public final C1855cL A06;
    public final List<View> A07;

    public C1201Fd(C1221Fx c1221Fx, AbstractC2478md abstractC2478md, C1855cL c1855cL, DR dr, InterfaceC1200Fc interfaceC1200Fc, View... viewArr) {
        this(c1221Fx.A05(), c1221Fx.A0B(), abstractC2478md, c1855cL, dr, interfaceC1200Fc, viewArr);
    }

    public C1201Fd(C1221Fx c1221Fx, AbstractC2478md abstractC2478md, C1855cL c1855cL, C1777b5 c1777b5, FH fh, DR dr, InterfaceC1200Fc interfaceC1200Fc) {
        this(c1221Fx, abstractC2478md, c1855cL, dr, interfaceC1200Fc, c1777b5, fh);
    }

    public C1201Fd(C2322k1 c2322k1, DQ dq, AbstractC2478md abstractC2478md, C1855cL c1855cL, DR dr, InterfaceC1200Fc interfaceC1200Fc, View... viewArr) {
        super(c2322k1);
        this.A07 = new ArrayList();
        this.A03 = c2322k1;
        this.A00 = dq;
        this.A02 = abstractC2478md;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = dr;
        this.A06 = c1855cL;
        this.A05 = interfaceC1200Fc;
        A04();
    }

    private void A04() {
        String A06;
        RewardData A0c = this.A02.A0c();
        if (A0c == null) {
            A06 = this.A02.A1d().A05();
        } else {
            A06 = this.A02.A1d().A06(A0c.getCurrency(), A0c.getQuantity());
        }
        this.A01 = new C1160Do(this.A03, -1, -16777216, A06, null, this.A02.A1d().A04(), this.A02.A1d().A03(), DC.A01(DB.REWARD_ICON));
        this.A01.A02.setOnClickListener(new ViewOnClickListenerC1198Fa(this));
        this.A01.A01.setOnClickListener(new ViewOnClickListenerC1199Fb(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A01, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A06 != null) {
            this.A06.A0f(II.A07);
        }
        this.A05.ACB();
        if (!this.A02.A1b().A0R()) {
            this.A02.A1j(this.A04);
        }
    }

    public final void A07(ViewGroup viewGroup) {
        if (this.A06 != null && !this.A06.A0q()) {
            C1855cL c1855cL = this.A06;
            String[] strArr = A08;
            if (strArr[0].length() == strArr[3].length()) {
                String[] strArr2 = A08;
                strArr2[4] = "1Ran1dt8ESvXQPCOL";
                strArr2[1] = "wn";
                c1855cL.A0l(false, false, 11);
                D3.A0L(this.A06, 4);
            }
            throw new RuntimeException();
        }
        if (this.A00 != null) {
            D3.A0F(this.A00);
        }
        Iterator<View> it = this.A07.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr3 = A08;
            if (strArr3[5].charAt(31) != strArr3[6].charAt(31)) {
                break;
            }
            String[] strArr4 = A08;
            strArr4[0] = "6LHnkwVNW3v3BurcJpp";
            strArr4[3] = "pBsoAnuzgJgS4JAM4BB";
            if (hasNext) {
                View next = it.next();
                next.clearAnimation();
                D3.A0L(next, 4);
            } else {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                viewGroup.addView(this, layoutParams);
                this.A05.AE2();
                return;
            }
        }
        throw new RuntimeException();
    }
}
