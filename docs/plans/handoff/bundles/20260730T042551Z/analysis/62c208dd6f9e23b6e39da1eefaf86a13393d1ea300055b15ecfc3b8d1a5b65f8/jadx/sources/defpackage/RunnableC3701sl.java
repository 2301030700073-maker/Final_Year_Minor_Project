package defpackage;

import android.widget.TextView;

/* renamed from: sl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3701sl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3878vl f15512do;

    public RunnableC3701sl(C3878vl c3878vl) {
        this.f15512do = c3878vl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f15512do.f16118if;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
