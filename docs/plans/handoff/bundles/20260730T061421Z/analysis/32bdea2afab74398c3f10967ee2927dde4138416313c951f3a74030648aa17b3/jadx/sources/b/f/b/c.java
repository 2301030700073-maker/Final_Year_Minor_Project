package b.f.b;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import b.e.i.E.g;
import b.e.i.q;
import com.android.systemui.shared.system.QuickStepContract;

/* loaded from: classes.dex */
public class c extends g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f799b;

    public c(d dVar) {
        this.f799b = dVar;
    }

    @Override // b.e.i.E.g
    public b.e.i.E.d a(int i) {
        return new b.e.i.E.d(AccessibilityNodeInfo.obtain(this.f799b.obtainAccessibilityNodeInfo(i).f753a));
    }

    @Override // b.e.i.E.g
    public b.e.i.E.d b(int i) {
        int i2 = i == 2 ? this.f799b.mAccessibilityFocusedVirtualViewId : this.f799b.mKeyboardFocusedVirtualViewId;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return new b.e.i.E.d(AccessibilityNodeInfo.obtain(this.f799b.obtainAccessibilityNodeInfo(i2).f753a));
    }

    @Override // b.e.i.E.g
    public boolean c(int i, int i2, Bundle bundle) {
        int i3;
        d dVar = this.f799b;
        if (i == -1) {
            return q.x(dVar.mHost, i2, bundle);
        }
        boolean z = true;
        if (i2 == 1) {
            return dVar.requestKeyboardFocusForVirtualView(i);
        }
        if (i2 == 2) {
            return dVar.clearKeyboardFocusForVirtualView(i);
        }
        if (i2 != 64) {
            return i2 != 128 ? dVar.onPerformActionForVirtualView(i, i2, bundle) : dVar.clearAccessibilityFocus(i);
        }
        if (dVar.mManager.isEnabled() && dVar.mManager.isTouchExplorationEnabled() && (i3 = dVar.mAccessibilityFocusedVirtualViewId) != i) {
            if (i3 != Integer.MIN_VALUE) {
                dVar.clearAccessibilityFocus(i3);
            }
            dVar.mAccessibilityFocusedVirtualViewId = i;
            dVar.mHost.invalidate();
            dVar.sendEventForVirtualView(i, QuickStepContract.SYSUI_STATE_GLOBAL_ACTIONS_SHOWING);
        } else {
            z = false;
        }
        return z;
    }
}
