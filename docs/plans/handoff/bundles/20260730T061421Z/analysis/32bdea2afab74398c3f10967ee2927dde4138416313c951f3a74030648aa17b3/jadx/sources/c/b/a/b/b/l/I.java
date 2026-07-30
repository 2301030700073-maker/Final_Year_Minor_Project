package c.b.a.b.b.l;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class I extends View.AccessibilityDelegate {
    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        ActivityContext lookupContext = ActivityContext.lookupContext(view.getContext());
        if (lookupContext instanceof Launcher) {
            if (((Launcher) lookupContext).mWorkspace.mLauncherOverlay != null) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.title_show_google_app, view.getContext().getText(R.string.title_show_google_app)));
            }
            if ((view instanceof H) && ((H) view).l()) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.action_show_doodle, view.getResources().getString(R.string.action_show_doodle)));
            }
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (i == R.string.title_show_google_app) {
            ActivityContext lookupContext = ActivityContext.lookupContext(view.getContext());
            if (lookupContext instanceof Launcher) {
                ((Launcher) lookupContext).mOverlayManager.openOverlay();
                return true;
            }
        }
        if (i != R.string.action_show_doodle || !(view instanceof H)) {
            return super.performAccessibilityAction(view, i, bundle);
        }
        ((H) view).q("", 1);
        return true;
    }
}
