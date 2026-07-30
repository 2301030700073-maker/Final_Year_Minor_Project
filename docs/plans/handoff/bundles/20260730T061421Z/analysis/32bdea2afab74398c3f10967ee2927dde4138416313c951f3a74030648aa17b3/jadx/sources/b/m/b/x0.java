package b.m.b;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import b.e.i.C0088b;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class x0 extends C0088b {

    /* renamed from: a, reason: collision with root package name */
    public final y0 f1225a;

    /* renamed from: b, reason: collision with root package name */
    public Map f1226b = new WeakHashMap();

    public x0(y0 y0Var) {
        this.f1225a = y0Var;
    }

    @Override // b.e.i.C0088b
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        return c0088b != null ? c0088b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // b.e.i.C0088b
    public b.e.i.E.g getAccessibilityNodeProvider(View view) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        return c0088b != null ? c0088b.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            c0088b.onInitializeAccessibilityEvent(view, accessibilityEvent);
        } else {
            this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        if (this.f1225a.b() || this.f1225a.f1227a.getLayoutManager() == null) {
            this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
            return;
        }
        this.f1225a.f1227a.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, dVar);
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            c0088b.onInitializeAccessibilityNodeInfo(view, dVar);
        } else {
            this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
        }
    }

    @Override // b.e.i.C0088b
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            c0088b.onPopulateAccessibilityEvent(view, accessibilityEvent);
        } else {
            this.mOriginalDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // b.e.i.C0088b
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0088b c0088b = (C0088b) this.f1226b.get(viewGroup);
        return c0088b != null ? c0088b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // b.e.i.C0088b
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (this.f1225a.b() || this.f1225a.f1227a.getLayoutManager() == null) {
            return super.performAccessibilityAction(view, i, bundle);
        }
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            if (c0088b.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
        } else if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        AbstractC0176f0 layoutManager = this.f1225a.f1227a.getLayoutManager();
        n0 n0Var = layoutManager.mRecyclerView.mRecycler;
        return layoutManager.performAccessibilityActionForItem();
    }

    @Override // b.e.i.C0088b
    public void sendAccessibilityEvent(View view, int i) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            c0088b.sendAccessibilityEvent(view, i);
        } else {
            this.mOriginalDelegate.sendAccessibilityEvent(view, i);
        }
    }

    @Override // b.e.i.C0088b
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        C0088b c0088b = (C0088b) this.f1226b.get(view);
        if (c0088b != null) {
            c0088b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        } else {
            this.mOriginalDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }
}
