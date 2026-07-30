package b.l;

import androidx.preference.PreferenceFragment;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.l.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0159u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceFragment f1069a;

    public RunnableC0159u(PreferenceFragment preferenceFragment) {
        this.f1069a = preferenceFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f1069a.f160c;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
