package b.i.b;

import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentManager$LaunchedFragmentInfo;

/* loaded from: classes.dex */
public class H implements b.a.l.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f852a;

    public H(X x) {
        this.f852a = x;
    }

    @Override // b.a.l.b
    public void a(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) this.f852a.B.pollFirst();
        if (fragmentManager$LaunchedFragmentInfo == null) {
            Log.w("FragmentManager", "No IntentSenders were started for " + this);
            return;
        }
        String str = fragmentManager$LaunchedFragmentInfo.f107a;
        int i = fragmentManager$LaunchedFragmentInfo.f108b;
        r e = this.f852a.f881c.e(str);
        if (e != null) {
            e.onActivityResult(i, activityResult.f14a, activityResult.f15b);
            return;
        }
        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
    }
}
