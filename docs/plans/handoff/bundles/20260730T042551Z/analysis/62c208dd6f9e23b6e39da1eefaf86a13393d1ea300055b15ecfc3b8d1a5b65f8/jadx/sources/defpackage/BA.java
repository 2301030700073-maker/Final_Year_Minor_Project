package defpackage;

import android.widget.TextView;
import java.text.NumberFormat;

/* loaded from: classes3.dex */
public final class BA implements InterfaceC0509Sv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TextView f212do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ NumberFormat f213do;

    public BA(TextView textView, NumberFormat numberFormat) {
        this.f212do = textView;
        this.f213do = numberFormat;
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: do, reason: not valid java name */
    public final void mo145do() {
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_why_root_liked", true);
            C3772tx.m8330do().apply();
        }
        if (!(C3772tx.m8343public() != null ? C3772tx.m8343public().getBoolean("rb_why_root_liked_submitted", false) : false)) {
            C3210kN.m7253new("WhyRoot", true);
            if (C3772tx.m8330do() != null) {
                C3772tx.m8330do().putBoolean("rb_why_root_liked_submitted", true);
                C3772tx.m8330do().apply();
            }
        }
        TextView textView = this.f212do;
        if (textView != null) {
            textView.setText(this.f213do.format((C3772tx.m8327const() ? 1 : 0) + EA.m439else()));
        }
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: if, reason: not valid java name */
    public final void mo146if() {
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_why_root_liked", false);
            C3772tx.m8330do().apply();
        }
        TextView textView = this.f212do;
        if (textView != null) {
            textView.setText(this.f213do.format((C3772tx.m8327const() ? 1 : 0) + EA.m439else()));
        }
    }
}
