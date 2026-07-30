package b.e.i.E;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class e extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final g f756a;

    public e(g gVar) {
        this.f756a = gVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        d a2 = this.f756a.a(i);
        if (a2 == null) {
            return null;
        }
        return a2.f753a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public List findAccessibilityNodeInfosByText(String str, int i) {
        Objects.requireNonNull(this.f756a);
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public boolean performAction(int i, int i2, Bundle bundle) {
        return this.f756a.c(i, i2, bundle);
    }
}
