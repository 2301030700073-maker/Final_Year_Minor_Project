package defpackage;

import android.view.View;

/* renamed from: gE, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC2798gE implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2857hE f13080do;

    public ViewOnClickListenerC2798gE(C2857hE c2857hE) {
        this.f13080do = c2857hE;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2857hE c2857hE = this.f13080do;
        if (c2857hE.f13268do.getActivity() != null) {
            K.m1092do(c2857hE.f13268do.getActivity(), c2857hE.f13271do, c2857hE.f13277try);
        }
    }
}
