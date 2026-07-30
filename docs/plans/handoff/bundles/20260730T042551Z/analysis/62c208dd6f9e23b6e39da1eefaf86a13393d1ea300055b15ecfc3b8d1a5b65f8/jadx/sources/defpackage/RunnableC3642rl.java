package defpackage;

import android.widget.TextView;

/* renamed from: rl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3642rl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3878vl f15310do;

    public RunnableC3642rl(C3878vl c3878vl) {
        this.f15310do = c3878vl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f15310do.f16116do;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
