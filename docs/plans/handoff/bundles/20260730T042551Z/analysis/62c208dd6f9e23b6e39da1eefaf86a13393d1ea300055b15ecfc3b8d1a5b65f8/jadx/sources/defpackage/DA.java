package defpackage;

import android.widget.TextView;
import java.text.NumberFormat;

/* loaded from: classes3.dex */
public final class DA implements InterfaceC0509Sv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TextView f521do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ NumberFormat f522do;

    public DA(TextView textView, NumberFormat numberFormat) {
        this.f521do = textView;
        this.f522do = numberFormat;
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: do */
    public final void mo145do() {
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_how_root_liked", true);
            C3772tx.m8330do().apply();
        }
        if (!(C3772tx.m8343public() != null ? C3772tx.m8343public().getBoolean("rb_how_root_liked_submitted", false) : false)) {
            C3210kN.m7253new("HowRoot", true);
            if (C3772tx.m8330do() != null) {
                C3772tx.m8330do().putBoolean("rb_how_root_liked_submitted", true);
                C3772tx.m8330do().apply();
            }
        }
        TextView textView = this.f521do;
        if (textView != null) {
            textView.setText(this.f522do.format((C3772tx.m8325catch() ? 1 : 0) + EA.m442try()));
        }
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: if */
    public final void mo146if() {
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_how_root_liked", false);
            C3772tx.m8330do().apply();
        }
        TextView textView = this.f521do;
        if (textView != null) {
            textView.setText(this.f522do.format((C3772tx.m8325catch() ? 1 : 0) + EA.m442try()));
        }
    }
}
