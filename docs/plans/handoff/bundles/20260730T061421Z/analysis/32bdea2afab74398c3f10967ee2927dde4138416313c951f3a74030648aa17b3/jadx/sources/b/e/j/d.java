package b.e.j;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;
import b.e.i.C0088b;

/* loaded from: classes.dex */
public class d extends C0088b {
    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.r() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setMaxScrollY(nestedScrollView.r());
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        int r;
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        dVar.f753a.setClassName(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (r = nestedScrollView.r()) <= 0) {
            return;
        }
        dVar.f753a.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0) {
            dVar.a(b.e.i.E.b.f);
            dVar.a(b.e.i.E.b.g);
        }
        if (nestedScrollView.getScrollY() < r) {
            dVar.a(b.e.i.E.b.e);
            dVar.a(b.e.i.E.b.h);
        }
    }

    @Override // b.e.i.C0088b
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        if (!nestedScrollView.isEnabled()) {
            return false;
        }
        if (i != 4096) {
            if (i == 8192 || i == 16908344) {
                int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                if (max == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.C(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), 250, true);
                return true;
            }
            if (i != 16908346) {
                return false;
            }
        }
        int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.r());
        if (min == nestedScrollView.getScrollY()) {
            return false;
        }
        nestedScrollView.C(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), 250, true);
        return true;
    }
}
