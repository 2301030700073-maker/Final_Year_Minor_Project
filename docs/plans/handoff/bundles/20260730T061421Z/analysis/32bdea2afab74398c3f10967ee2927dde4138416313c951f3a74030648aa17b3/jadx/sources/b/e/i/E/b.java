package b.e.i.E;

import android.R;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.tracing.FrameProtoTracer;

/* loaded from: classes.dex */
public class b {

    /* renamed from: d, reason: collision with root package name */
    public static final b f748d;
    public static final b e;
    public static final b f;
    public static final b g;
    public static final b h;

    /* renamed from: a, reason: collision with root package name */
    public final Object f749a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f750b;

    /* renamed from: c, reason: collision with root package name */
    public final i f751c;

    static {
        new AccessibilityNodeInfo.AccessibilityAction(1, null);
        new AccessibilityNodeInfo.AccessibilityAction(2, null);
        new AccessibilityNodeInfo.AccessibilityAction(4, null);
        new AccessibilityNodeInfo.AccessibilityAction(8, null);
        f748d = new b(16, null);
        new AccessibilityNodeInfo.AccessibilityAction(32, null);
        new AccessibilityNodeInfo.AccessibilityAction(64, null);
        new AccessibilityNodeInfo.AccessibilityAction(128, null);
        new AccessibilityNodeInfo.AccessibilityAction(256, null);
        new AccessibilityNodeInfo.AccessibilityAction(512, null);
        new AccessibilityNodeInfo.AccessibilityAction(1024, null);
        new AccessibilityNodeInfo.AccessibilityAction(2048, null);
        e = new b(QuickStepContract.SYSUI_STATE_TRACING_ENABLED, null);
        f = new b(QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED, null);
        new AccessibilityNodeInfo.AccessibilityAction(QuickStepContract.SYSUI_STATE_BUBBLES_EXPANDED, null);
        new AccessibilityNodeInfo.AccessibilityAction(QuickStepContract.SYSUI_STATE_GLOBAL_ACTIONS_SHOWING, null);
        new AccessibilityNodeInfo.AccessibilityAction(65536, null);
        new AccessibilityNodeInfo.AccessibilityAction(131072, null);
        new AccessibilityNodeInfo.AccessibilityAction(262144, null);
        new AccessibilityNodeInfo.AccessibilityAction(524288, null);
        new AccessibilityNodeInfo.AccessibilityAction(FrameProtoTracer.BUFFER_CAPACITY, null);
        new AccessibilityNodeInfo.AccessibilityAction(2097152, null);
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionShowOnScreen, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollToPosition, null);
        }
        g = new b(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollLeft, null);
        }
        h = new b(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollRight, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageUp, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageDown, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageLeft, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageRight, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionContextClick, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionSetProgress, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionMoveWindow, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionShowTooltip, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionHideTooltip, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPressAndHold, null);
        }
        if (AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER == null) {
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionImeEnter, null);
        }
    }

    public b(int i, CharSequence charSequence) {
        this(null, i, charSequence, null, null);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        Object obj2 = this.f749a;
        return obj2 == null ? bVar.f749a == null : obj2.equals(bVar.f749a);
    }

    public int hashCode() {
        Object obj = this.f749a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public b(Object obj, int i, CharSequence charSequence, i iVar, Class cls) {
        this.f751c = null;
        if (obj == null) {
            this.f749a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
        } else {
            this.f749a = obj;
        }
        this.f750b = cls;
    }
}
