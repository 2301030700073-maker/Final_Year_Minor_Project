package b.i.b;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.fragment.app.FragmentManager$LaunchedFragmentInfo;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class I implements b.a.l.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f853a;

    public I(X x) {
        this.f853a = x;
    }

    @Override // b.a.l.b
    @SuppressLint({"SyntheticAccessor"})
    public void a(Object obj) {
        Map map = (Map) obj;
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
        }
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) this.f853a.B.pollFirst();
        if (fragmentManager$LaunchedFragmentInfo == null) {
            Log.w("FragmentManager", "No permissions were requested for " + this);
            return;
        }
        String str = fragmentManager$LaunchedFragmentInfo.f107a;
        int i2 = fragmentManager$LaunchedFragmentInfo.f108b;
        r e = this.f853a.f881c.e(str);
        if (e != null) {
            e.onRequestPermissionsResult(i2, strArr, iArr);
            return;
        }
        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
    }
}
