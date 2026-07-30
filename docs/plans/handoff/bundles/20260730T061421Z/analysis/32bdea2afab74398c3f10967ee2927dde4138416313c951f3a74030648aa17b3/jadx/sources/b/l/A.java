package b.l;

import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class A implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceFragmentCompat f1018a;

    public A(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.f1018a = preferenceFragmentCompat;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f1018a.mList;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
