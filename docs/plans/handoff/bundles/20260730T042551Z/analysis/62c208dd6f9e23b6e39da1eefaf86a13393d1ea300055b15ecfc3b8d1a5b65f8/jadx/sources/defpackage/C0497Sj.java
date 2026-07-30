package defpackage;

import android.app.Activity;
import android.util.SparseIntArray;
import androidx.fragment.app.Fragment;
import java.util.HashMap;
import java.util.Map;

/* renamed from: Sj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0497Sj {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f3544do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0453Qj f3545do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f3546do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Fragment, C0475Rj> f3547do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3548do;

    public C0497Sj() {
        throw null;
    }

    public C0497Sj(Activity activity) {
        C0453Qj c0453Qj = new C0453Qj();
        HashMap hashMap = new HashMap();
        this.f3548do = false;
        this.f3546do = activity;
        this.f3545do = c0453Qj;
        this.f3547do = hashMap;
    }

    /* renamed from: do, reason: not valid java name */
    public final C2779fw<C0475Rj> m2185do() {
        boolean z = this.f3548do;
        Q0 q0 = f3544do;
        if (!z) {
            q0.m1820do();
            return new C2779fw<>();
        }
        SparseIntArray[] mo1989if = this.f3545do.f3032do.mo1989if();
        if (mo1989if == null) {
            q0.m1820do();
            return new C2779fw<>();
        }
        SparseIntArray sparseIntArray = mo1989if[0];
        if (sparseIntArray == null) {
            q0.m1820do();
            return new C2779fw<>();
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
            int keyAt = sparseIntArray.keyAt(i4);
            int valueAt = sparseIntArray.valueAt(i4);
            i += valueAt;
            if (keyAt > 700) {
                i3 += valueAt;
            }
            if (keyAt > 16) {
                i2 += valueAt;
            }
        }
        return new C2779fw<>(new C0475Rj(i, i2, i3));
    }
}
