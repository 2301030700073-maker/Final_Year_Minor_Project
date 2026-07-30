package b.e.i;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.List;

/* renamed from: b.e.i.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0087a extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final C0088b f759a;

    public C0087a(C0088b c0088b) {
        this.f759a = c0088b;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f759a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        b.e.i.E.g accessibilityNodeProvider = this.f759a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return (AccessibilityNodeProvider) accessibilityNodeProvider.f757a;
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f759a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        b.e.i.E.d dVar = new b.e.i.E.d(accessibilityNodeInfo);
        dVar.f753a.setScreenReaderFocusable(q.u(view));
        Boolean bool = (Boolean) new o(R.id.tag_accessibility_heading, Boolean.class, 28).b(view);
        dVar.f753a.setHeading(bool == null ? false : bool.booleanValue());
        dVar.f753a.setPaneTitle((CharSequence) new m(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).b(view));
        dVar.f753a.setStateDescription((CharSequence) new n(R.id.tag_state_description, CharSequence.class, 64, 30).b(view));
        this.f759a.onInitializeAccessibilityNodeInfo(view, dVar);
        accessibilityNodeInfo.getText();
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.emptyList();
        }
        for (int i = 0; i < list.size(); i++) {
            dVar.a((b.e.i.E.b) list.get(i));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f759a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f759a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.f759a.performAccessibilityAction(view, i, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i) {
        this.f759a.sendAccessibilityEvent(view, i);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f759a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
