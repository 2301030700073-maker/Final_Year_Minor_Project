package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.lW, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2411lW implements InterfaceC09293u {
    private C09303v A00(InterfaceC09283t interfaceC09283t) {
        return (C09303v) interfaceC09283t.A74();
    }

    public final void A01(InterfaceC09283t interfaceC09283t) {
        if (!interfaceC09283t.A9H()) {
            interfaceC09283t.AIr(0, 0, 0, 0);
            return;
        }
        float A8I = A8I(interfaceC09283t);
        float A8h = A8h(interfaceC09283t);
        float elevation = AbstractC09323x.A00(A8I, A8h, interfaceC09283t.A8g());
        int vPadding = (int) Math.ceil(elevation);
        float elevation2 = AbstractC09323x.A01(A8I, A8h, interfaceC09283t.A8g());
        int ceil = (int) Math.ceil(elevation2);
        interfaceC09283t.AIr(vPadding, ceil, vPadding, ceil);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final ColorStateList A6r(InterfaceC09283t interfaceC09283t) {
        return A00(interfaceC09283t).A05();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final float A7l(InterfaceC09283t interfaceC09283t) {
        return interfaceC09283t.A75().getElevation();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final float A8I(InterfaceC09283t interfaceC09283t) {
        return A00(interfaceC09283t).A03();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final float A8N(InterfaceC09283t interfaceC09283t) {
        return A8h(interfaceC09283t) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final float A8O(InterfaceC09283t interfaceC09283t) {
        return A8h(interfaceC09283t) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final float A8h(InterfaceC09283t interfaceC09283t) {
        return A00(interfaceC09283t).A04();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AA4() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AA6(InterfaceC09283t interfaceC09283t, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C09303v background = new C09303v(colorStateList, f);
        interfaceC09283t.AIQ(background);
        View view = interfaceC09283t.A75();
        view.setClipToOutline(true);
        view.setElevation(f2);
        AId(interfaceC09283t, f3);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void ACf(InterfaceC09283t interfaceC09283t) {
        AId(interfaceC09283t, A8I(interfaceC09283t));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AEe(InterfaceC09283t interfaceC09283t) {
        AId(interfaceC09283t, A8I(interfaceC09283t));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AIP(InterfaceC09283t interfaceC09283t, ColorStateList colorStateList) {
        A00(interfaceC09283t).A08(colorStateList);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AIV(InterfaceC09283t interfaceC09283t, float f) {
        interfaceC09283t.A75().setElevation(f);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AId(InterfaceC09283t interfaceC09283t, float f) {
        A00(interfaceC09283t).A07(f, interfaceC09283t.A9H(), interfaceC09283t.A8g());
        A01(interfaceC09283t);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09293u
    public final void AIp(InterfaceC09283t interfaceC09283t, float f) {
        A00(interfaceC09283t).A06(f);
    }
}
