package defpackage;

import android.view.View;

/* renamed from: Tr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0527Tr implements InterfaceC0136Bv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f3750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ View f3751do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ int f3752if;

    public C0527Tr(int i, View view, int i2) {
        this.f3750do = i;
        this.f3751do = view;
        this.f3752if = i2;
    }

    @Override // defpackage.InterfaceC0136Bv
    /* renamed from: for */
    public final C3150jM mo137for(View view, C3150jM c3150jM) {
        int i = c3150jM.m7057do(7).f4760if;
        View view2 = this.f3751do;
        int i2 = this.f3750do;
        if (i2 >= 0) {
            view2.getLayoutParams().height = i2 + i;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f3752if + i, view2.getPaddingRight(), view2.getPaddingBottom());
        return c3150jM;
    }
}
