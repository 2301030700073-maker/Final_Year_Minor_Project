package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* renamed from: rL, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC3620rL implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f15267do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f15268do = false;

    public /* synthetic */ RunnableC3620rL(View view) {
        this.f15267do = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3209kM m1846break;
        View view = this.f15267do;
        if (!this.f15268do || (m1846break = QK.m1846break(view)) == null) {
            ((InputMethodManager) C0466Ra.getSystemService(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
        } else {
            m1846break.f13971do.mo7238for();
        }
    }
}
