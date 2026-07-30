package b.i.b;

import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentManager$LaunchedFragmentInfo;

/* loaded from: classes.dex */
public class Q implements b.a.l.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f871a;

    public Q(X x) {
        this.f871a = x;
    }

    @Override // b.a.l.b
    public void a(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) this.f871a.B.pollFirst();
        if (fragmentManager$LaunchedFragmentInfo == null) {
            Log.w("FragmentManager", "No Activities were started for result for " + this);
            return;
        }
        String str = fragmentManager$LaunchedFragmentInfo.f107a;
        int i = fragmentManager$LaunchedFragmentInfo.f108b;
        r e = this.f871a.f881c.e(str);
        if (e != null) {
            e.onActivityResult(i, activityResult.f14a, activityResult.f15b);
            return;
        }
        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
    }
}
