package defpackage;

import android.widget.TextView;

/* renamed from: tl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3760tl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3878vl f15763do;

    public RunnableC3760tl(C3878vl c3878vl) {
        this.f15763do = c3878vl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f15763do.f16117for;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
