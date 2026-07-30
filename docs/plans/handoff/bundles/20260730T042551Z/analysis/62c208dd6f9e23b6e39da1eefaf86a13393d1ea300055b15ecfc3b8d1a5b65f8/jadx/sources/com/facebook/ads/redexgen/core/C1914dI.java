package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: com.facebook.ads.redexgen.X.dI, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1914dI extends AnonymousClass67 {
    public static byte[] A0H;
    public static String[] A0I = {"oHxG", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "w7XeyG7wcXlBDThCLG4YobF5JePdGcu8", "IQ8LgqWvoXOpUTXgnww89j6rU6uuZ1nj", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "WKMwHhIum9", "0nm7H4VWCUBWNiJwCQAonSVvBZFyt", "hLsDwSpuFLAE"};
    public GU A02;
    public JL A04;
    public List<C1252Hc> A05;
    public boolean A09;
    public final int A0A;
    public final Context A0B;
    public final C2394lC A0C;
    public final C6F A0D;
    public final Set<Integer> A0G = new HashSet();
    public boolean A08 = true;
    public boolean A06 = true;
    public boolean A07 = true;
    public int A01 = -1;
    public float A00 = 0.0f;
    public final GY A0F = new C1920dO(this);
    public GW A03 = new C1919dN(this);
    public final GX A0E = new C1915dJ(this);

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 7);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        String[] strArr = A0I;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[7] = "Cbp585p0FHy9";
        strArr2[6] = "QC7w158vCCR5KGktiGCBodiqPhNZq";
        A0H = new byte[]{-122, -102, -103, -108, -92, -107, -111, -122, -98, -92, -118, -109, -122, -121, -111, -118, -119, -92, -107, -122, -105, -122, -110, 81, 91, 103, 78, 81, 90, 91, 92, 103, 94, 81, 76, 77, 87, 103, 88, 73, 90, 73, 85, -51, -58, -61, -52, -60, -68, -42, -61, -68, -51, -68, -61, -42, -57, -72, -55, -72, -60};
    }

    static {
        A08();
    }

    public C1914dI(C08641h c08641h, int i, List<C1252Hc> list, JL jl, Bundle bundle) {
        this.A0C = c08641h.getLayoutManager();
        this.A0A = i;
        this.A05 = list;
        this.A04 = jl;
        this.A0D = new C2393lB(c08641h.getContext());
        this.A0B = c08641h.getContext();
        c08641h.A1h(this);
        A0D(bundle);
    }

    private AbstractC2068fo A03(int i, int i2) {
        return A04(i, i2, true);
    }

    private AbstractC2068fo A04(int i, int i2, boolean z) {
        AbstractC2068fo abstractC2068fo = null;
        while (i <= i2) {
            AbstractC2068fo abstractC2068fo2 = (AbstractC2068fo) this.A0C.A1m(i);
            if (abstractC2068fo2 == null || abstractC2068fo2.A1E()) {
                return null;
            }
            boolean A0a = A0a(abstractC2068fo2);
            if (abstractC2068fo == null && abstractC2068fo2.A1F() && A0a && !this.A0G.contains(Integer.valueOf(i)) && (!z || A0I(abstractC2068fo2, this.A0A))) {
                abstractC2068fo = abstractC2068fo2;
            }
            if (abstractC2068fo2.A1F() && !A0a) {
                A0C(i, false);
            }
            i++;
        }
        return abstractC2068fo;
    }

    private void A06() {
        if (!this.A07) {
            return;
        }
        int lastVisibleItem = this.A0C.A24();
        int firstVisibleItem = this.A0C.A25();
        AbstractC2068fo A03 = A03(lastVisibleItem, firstVisibleItem);
        if (A03 != null) {
            A03.A1C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        int A23 = this.A0C.A23();
        if (A23 != -1) {
            int curPos = this.A05.size();
            if (A23 < curPos - 1) {
                int curPos2 = A23 + 1;
                A0U(curPos2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09(int i) {
        AbstractC2068fo A04 = A04(i + 1, this.A0C.A25(), false);
        if (A04 != null) {
            A04.A1C();
            A0U(((Integer) A04.getTag(-1593835536)).intValue());
        }
    }

    private void A0A(int i, int i2) {
        while (i <= i2) {
            A0T(i);
            i++;
        }
    }

    private final void A0B(int i, int i2) {
        A0S(i);
        A0S(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(int i, boolean z) {
        if (z) {
            this.A0G.add(Integer.valueOf(i));
        } else {
            this.A0G.remove(Integer.valueOf(i));
        }
    }

    private void A0D(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.A00 = bundle.getFloat(A05(43, 18, 112), 0.0f);
        this.A07 = bundle.getBoolean(A05(0, 23, 62), true);
        this.A08 = bundle.getBoolean(A05(23, 20, 1), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0H() {
        return this.A0A == 1;
    }

    public static boolean A0I(AbstractC1217Ft abstractC1217Ft, int i) {
        int allowedAreaMaxX;
        int furthestX;
        if (i == 2) {
            allowedAreaMaxX = CP.A04.widthPixels - 1;
        } else {
            int width = abstractC1217Ft.getWidth();
            int allowedAreaMinX = CP.A04.widthPixels;
            allowedAreaMaxX = (int) (((width + allowedAreaMinX) * 1.3f) / 2.0f);
        }
        if (i == 2) {
            furthestX = 1;
        } else {
            int i2 = CP.A04.widthPixels;
            int allowedAreaMinX2 = abstractC1217Ft.getWidth();
            furthestX = (int) (((i2 - allowedAreaMinX2) * 0.7f) / 2.0f);
        }
        float x = abstractC1217Ft.getX();
        int allowedAreaMinX3 = abstractC1217Ft.getWidth();
        return ((int) (x + ((float) allowedAreaMinX3))) <= allowedAreaMaxX && abstractC1217Ft.getX() >= ((float) furthestX);
    }

    private boolean A0J(AbstractC2068fo abstractC2068fo) {
        if (!this.A08 || !abstractC2068fo.A1F()) {
            return false;
        }
        this.A08 = false;
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass67
    public void A0L(MG mg, int i) {
        super.A0L(mg, i);
        if (i == 0) {
            this.A09 = true;
            A06();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass67
    public void A0M(MG mg, int i, int i2) {
        super.A0M(mg, i, i2);
        this.A09 = false;
        if (this.A06) {
            this.A09 = true;
            A06();
            this.A06 = false;
        }
        int lastVisibleItem = this.A0C.A24();
        int firstVisibleItem = this.A0C.A25();
        A0B(lastVisibleItem, firstVisibleItem);
        A0A(lastVisibleItem, firstVisibleItem);
        A0V(lastVisibleItem, firstVisibleItem, i);
    }

    public final GW A0N() {
        return this.A03;
    }

    public final GX A0O() {
        return this.A0E;
    }

    public final GY A0P() {
        return this.A0F;
    }

    public final void A0Q() {
        this.A01 = -1;
        int A25 = this.A0C.A25();
        for (int A24 = this.A0C.A24(); A24 <= A25 && A24 >= 0; A24++) {
            AbstractC2068fo card = (AbstractC2068fo) this.A0C.A1m(A24);
            String[] strArr = A0I;
            String str = strArr[1];
            String str2 = strArr[4];
            int lastPos = str.length();
            int firstPos = str2.length();
            if (lastPos != firstPos) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[0] = "4n0r";
            strArr2[5] = "UAml839wpr";
            if (card != null && card.A1E()) {
                this.A01 = A24;
                card.A1B();
                return;
            }
        }
    }

    public final void A0R() {
        AbstractC2068fo abstractC2068fo = (AbstractC2068fo) this.A0C.A1m(this.A01);
        if (abstractC2068fo != null && this.A01 >= 0) {
            abstractC2068fo.A1C();
        }
    }

    public final void A0S(int i) {
        AbstractC2068fo abstractC2068fo = (AbstractC2068fo) this.A0C.A1m(i);
        if (abstractC2068fo != null && !A0a(abstractC2068fo)) {
            A0Z(abstractC2068fo, false);
        }
    }

    public final void A0T(int i) {
        AbstractC2068fo abstractC2068fo = (AbstractC2068fo) this.A0C.A1m(i);
        if (abstractC2068fo == null) {
            return;
        }
        if (A0a(abstractC2068fo)) {
            A0Z(abstractC2068fo, true);
        }
        if (A0J(abstractC2068fo) && this.A05 != null) {
            this.A0F.setVolume(this.A05.get(((Integer) abstractC2068fo.getTag(-1593835536)).intValue()).A03().A0F().A0A() ? 0.0f : 1.0f);
        }
    }

    public final void A0U(int i) {
        this.A0D.A0A(i);
        this.A0C.A1L(this.A0D);
    }

    public final void A0V(int i, int i2, int i3) {
        if (!A0H() || this.A02 == null) {
            return;
        }
        int recomputeFrom = this.A0C.A23();
        if (recomputeFrom == -1) {
            recomputeFrom = i3 < 0 ? i : i2;
        }
        this.A02.AJf(recomputeFrom);
    }

    public final void A0W(Bundle bundle) {
        bundle.putFloat(A05(43, 18, 112), this.A00);
        bundle.putBoolean(A05(0, 23, 62), this.A07);
        bundle.putBoolean(A05(23, 20, 1), this.A08);
    }

    public void A0X(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.5f);
    }

    public final void A0Y(GU gu) {
        this.A02 = gu;
    }

    public void A0Z(AbstractC2068fo abstractC2068fo, boolean z) {
        if (A0H()) {
            A0X(abstractC2068fo, z);
        }
        if (!z && abstractC2068fo.A1E()) {
            abstractC2068fo.A1B();
        }
    }

    public boolean A0a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.15f;
    }
}
