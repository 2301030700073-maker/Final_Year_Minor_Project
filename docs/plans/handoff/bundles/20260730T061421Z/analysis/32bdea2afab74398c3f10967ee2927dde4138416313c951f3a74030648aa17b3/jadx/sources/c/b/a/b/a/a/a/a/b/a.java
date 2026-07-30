package c.b.a.b.a.a.a.a.b;

import android.os.Bundle;
import android.support.annotation.Nullable;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.p;
import c.b.a.b.a.a.a.a.a.a.r;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f2368a;

    public a(int i) {
        this.f2368a = i;
    }

    public Bundle a(String str, String str2, int i, long j, @Nullable Bundle bundle, @Nullable p pVar, C0357b c0357b) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("PackageName", str);
        bundle2.putString("ActivityName", str2);
        bundle2.putInt("TaskId", i);
        bundle2.putLong("CaptureTimestampMs", j);
        bundle2.putBundle("AssistBundle", bundle);
        if (c0357b == null) {
            bundle2.putBundle("Contents", null);
        } else {
            bundle2.putBundle("Contents", c0357b.a());
        }
        if (pVar == null) {
            bundle2.putBundle("InteractionContext", null);
        } else {
            bundle2.putBundle("InteractionContext", pVar.a());
        }
        bundle2.putInt("Version", 4);
        bundle2.putInt("BundleTypedVersion", 3);
        return bundle2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0322  */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [android.os.Bundle, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [android.os.Bundle, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.os.Bundle, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.os.Bundle] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle b(@android.support.annotation.Nullable c.b.a.b.a.a.a.a.a.a.j r27) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.a.a.a.a.b.a.b(c.b.a.b.a.a.a.a.a.a.j):android.os.Bundle");
    }

    public Bundle c(String str, String str2, int i, long j, @Nullable p pVar, @Nullable Bundle bundle, @Nullable r rVar) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("PackageName", str);
        bundle2.putString("ActivityName", str2);
        bundle2.putInt("TaskId", i);
        bundle2.putLong("CaptureTimestampMs", j);
        bundle2.putBundle("InteractionContext", pVar.a());
        bundle2.putBundle("AssistBundle", bundle);
        if (rVar == null) {
            bundle2.putBundle("ParsedViewHierarchy", null);
        } else {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("acquisitionStartTime", 0L);
            bundle3.putLong("acquisitionEndTime", 0L);
            bundle3.putBoolean("isHomeActivity", false);
            bundle3.putParcelableArrayList("windows", null);
            bundle3.putBoolean("hasKnownIssues", false);
            bundle3.putString("packageName", null);
            bundle3.putString("activityClassName", null);
            bundle3.putBundle("insetsRect", null);
            bundle2.putBundle("ParsedViewHierarchy", bundle3);
        }
        bundle2.putInt("Version", 4);
        bundle2.putInt("BundleTypedVersion", 3);
        return bundle2;
    }

    public C0357b d(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("Contents");
        return bundle2 == null ? new C0357b() : new C0357b(bundle2);
    }
}
