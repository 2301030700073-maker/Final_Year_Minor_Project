package defpackage;

import android.widget.TextView;

/* renamed from: Al, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0104Al implements InterfaceC0465Qv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TextView f135do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ TextView f136for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ TextView f137if;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ TextView f138new;

    public C0104Al(TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.f135do = textView;
        this.f137if = textView2;
        this.f136for = textView3;
        this.f138new = textView4;
    }

    @Override // defpackage.InterfaceC0465Qv
    /* renamed from: do, reason: not valid java name */
    public final void mo96do(int i) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (i == 0 && (textView4 = this.f135do) != null) {
            textView4.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3937wl(this));
            return;
        }
        if (i == 1 && (textView3 = this.f137if) != null) {
            textView3.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3996xl(this));
            return;
        }
        if (i == 2 && (textView2 = this.f136for) != null) {
            textView2.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC4055yl(this));
        } else {
            if (i != 3 || (textView = this.f138new) == null) {
                return;
            }
            textView.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC4114zl(this));
        }
    }
}
