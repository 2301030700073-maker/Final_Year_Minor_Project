package defpackage;

import android.widget.TextView;

/* renamed from: vl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3878vl implements InterfaceC0465Qv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TextView f16116do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ TextView f16117for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ TextView f16118if;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ TextView f16119new;

    public C3878vl(TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.f16116do = textView;
        this.f16118if = textView2;
        this.f16117for = textView3;
        this.f16119new = textView4;
    }

    @Override // defpackage.InterfaceC0465Qv
    /* renamed from: do */
    public final void mo96do(int i) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (i == 0 && (textView4 = this.f16116do) != null) {
            textView4.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3642rl(this));
            return;
        }
        if (i == 1 && (textView3 = this.f16118if) != null) {
            textView3.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3701sl(this));
            return;
        }
        if (i == 2 && (textView2 = this.f16117for) != null) {
            textView2.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3760tl(this));
        } else {
            if (i != 3 || (textView = this.f16119new) == null) {
                return;
            }
            textView.animate().scaleY(1.3f).scaleX(1.3f).setDuration(100L).withEndAction(new RunnableC3819ul(this));
        }
    }
}
