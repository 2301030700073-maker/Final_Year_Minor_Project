package b.e.i.E;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f745a;

    /* renamed from: b, reason: collision with root package name */
    public final d f746b;

    /* renamed from: c, reason: collision with root package name */
    public final int f747c;

    public a(int i, d dVar, int i2) {
        this.f745a = i;
        this.f746b = dVar;
        this.f747c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f745a);
        d dVar = this.f746b;
        dVar.f753a.performAction(this.f747c, bundle);
    }
}
