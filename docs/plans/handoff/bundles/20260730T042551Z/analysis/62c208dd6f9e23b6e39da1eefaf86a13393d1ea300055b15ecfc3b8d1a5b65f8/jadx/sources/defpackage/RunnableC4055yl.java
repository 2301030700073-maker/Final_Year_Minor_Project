package defpackage;

import android.widget.TextView;

/* renamed from: yl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC4055yl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0104Al f16823do;

    public RunnableC4055yl(C0104Al c0104Al) {
        this.f16823do = c0104Al;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f16823do.f136for;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
