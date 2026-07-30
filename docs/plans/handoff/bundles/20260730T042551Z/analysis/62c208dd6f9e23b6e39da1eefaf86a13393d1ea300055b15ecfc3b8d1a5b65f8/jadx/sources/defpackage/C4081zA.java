package defpackage;

import android.widget.TextView;
import java.text.NumberFormat;

/* renamed from: zA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4081zA implements InterfaceC0509Sv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TextView f16873do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ NumberFormat f16874do;

    public C4081zA(TextView textView, NumberFormat numberFormat) {
        this.f16873do = textView;
        this.f16874do = numberFormat;
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: do */
    public final void mo145do() {
        EA.m438case();
        C3772tx.m8326class();
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_what_is_root_liked", true);
            C3772tx.m8330do().apply();
        }
        if (!(C3772tx.m8343public() != null ? C3772tx.m8343public().getBoolean("rb_what_is_root_liked_submitted", false) : false)) {
            C3210kN.m7253new("WhatIsRoot", true);
            if (C3772tx.m8330do() != null) {
                C3772tx.m8330do().putBoolean("rb_what_is_root_liked_submitted", true);
                C3772tx.m8330do().apply();
            }
        }
        EA.m438case();
        C3772tx.m8326class();
        TextView textView = this.f16873do;
        if (textView != null) {
            textView.setText(this.f16874do.format((C3772tx.m8326class() ? 1 : 0) + EA.m438case()));
        }
    }

    @Override // defpackage.InterfaceC0509Sv
    /* renamed from: if */
    public final void mo146if() {
        if (C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("rb_what_is_root_liked", false);
            C3772tx.m8330do().apply();
        }
        TextView textView = this.f16873do;
        if (textView != null) {
            textView.setText(this.f16874do.format((C3772tx.m8326class() ? 1 : 0) + EA.m438case()));
        }
    }
}
