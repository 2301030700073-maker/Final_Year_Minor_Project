package defpackage;

import android.view.View;
import defpackage.C3180ju;
import defpackage.C3893w;

/* renamed from: ku, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3239ku extends Cimplements {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14058do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3180ju.Cfor f14059do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f14060do;

    public C3239ku(C3180ju.Cfor cfor, int i, boolean z) {
        this.f14059do = cfor;
        this.f14058do = i;
        this.f14060do = z;
    }

    @Override // defpackage.Cimplements
    /* renamed from: new */
    public final void mo1356new(View view, C3893w c3893w) {
        ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
        int i = this.f14058do;
        int i2 = 0;
        int i3 = i;
        while (true) {
            C3180ju.Cfor cfor = this.f14059do;
            if (i2 >= i) {
                cfor.getClass();
                c3893w.m8497catch(C3893w.Ccase.m8509do(i3, 1, 1, this.f14060do, view.isSelected(), 1));
                return;
            } else {
                C3180ju c3180ju = C3180ju.this;
                if (c3180ju.f13828do.mo1028try(i2) == 2 || c3180ju.f13828do.mo1028try(i2) == 3) {
                    i3--;
                }
                i2++;
            }
        }
    }
}
