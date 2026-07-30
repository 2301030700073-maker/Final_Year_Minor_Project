package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import b.j.AbstractC0137g;
import b.j.j;
import b.j.l;
import b.j.m;
import b.j.v;
import b.j.w;

/* loaded from: classes.dex */
public class ReportFragment extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public v f135a;

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, Lifecycle$Event lifecycle$Event) {
        if (activity instanceof m) {
            ((m) activity).getLifecycle().c(lifecycle$Event);
        } else if (activity instanceof j) {
            AbstractC0137g lifecycle = ((j) activity).getLifecycle();
            if (lifecycle instanceof l) {
                ((l) lifecycle).c(lifecycle$Event);
            }
        }
    }

    public static void b(Activity activity) {
        w.registerIn(activity);
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f135a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
    }
}
