package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: transient, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctransient extends ClickableSpan {

    /* renamed from: do, reason: not valid java name */
    public final C3893w f15802do;

    /* renamed from: for, reason: not valid java name */
    public final int f15803for;

    /* renamed from: new, reason: not valid java name */
    public final int f15804new;

    public Ctransient(int i, C3893w c3893w, int i2) {
        this.f15803for = i;
        this.f15802do = c3893w;
        this.f15804new = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f15803for);
        this.f15802do.f16161do.performAction(this.f15804new, bundle);
    }
}
