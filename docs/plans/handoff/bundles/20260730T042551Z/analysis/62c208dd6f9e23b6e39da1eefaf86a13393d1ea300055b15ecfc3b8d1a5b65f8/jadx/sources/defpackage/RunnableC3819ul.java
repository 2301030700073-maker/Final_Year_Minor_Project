package defpackage;

import android.widget.TextView;

/* renamed from: ul, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3819ul implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3878vl f15947do;

    public RunnableC3819ul(C3878vl c3878vl) {
        this.f15947do = c3878vl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f15947do.f16119new;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
