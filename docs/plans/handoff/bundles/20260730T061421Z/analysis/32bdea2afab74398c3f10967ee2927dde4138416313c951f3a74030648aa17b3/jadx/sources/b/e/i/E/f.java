package b.e.i.E;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public class f extends e {
    public f(g gVar) {
        super(gVar);
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo findFocus(int i) {
        d b2 = this.f756a.b(i);
        if (b2 == null) {
            return null;
        }
        return b2.f753a;
    }
}
