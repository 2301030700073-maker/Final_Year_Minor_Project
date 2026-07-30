package b.m.b;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import b.e.i.C0088b;
import com.android.systemui.shared.system.QuickStepContract;

/* loaded from: classes.dex */
public class y0 extends C0088b {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f1227a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f1228b;

    public y0(RecyclerView recyclerView) {
        this.f1227a = recyclerView;
        C0088b a2 = a();
        if (a2 == null || !(a2 instanceof x0)) {
            this.f1228b = new x0(this);
        } else {
            this.f1228b = (x0) a2;
        }
    }

    public C0088b a() {
        return this.f1228b;
    }

    public boolean b() {
        return this.f1227a.hasPendingAdapterUpdates();
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
        if (b() || this.f1227a.getLayoutManager() == null) {
            return;
        }
        AbstractC0176f0 layoutManager = this.f1227a.getLayoutManager();
        RecyclerView recyclerView = layoutManager.mRecyclerView;
        n0 n0Var = recyclerView.mRecycler;
        t0 t0Var = recyclerView.mState;
        if (recyclerView.canScrollVertically(-1) || layoutManager.mRecyclerView.canScrollHorizontally(-1)) {
            dVar.f753a.addAction(QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
            dVar.f753a.setScrollable(true);
        }
        if (layoutManager.mRecyclerView.canScrollVertically(1) || layoutManager.mRecyclerView.canScrollHorizontally(1)) {
            dVar.f753a.addAction(QuickStepContract.SYSUI_STATE_TRACING_ENABLED);
            dVar.f753a.setScrollable(true);
        }
        dVar.f753a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.getRowCountForAccessibility(n0Var, t0Var), layoutManager.getColumnCountForAccessibility(n0Var, t0Var), layoutManager.isLayoutHierarchical(), layoutManager.getSelectionModeForAccessibility()));
    }

    @Override // b.e.i.C0088b
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (b() || this.f1227a.getLayoutManager() == null) {
            return false;
        }
        AbstractC0176f0 layoutManager = this.f1227a.getLayoutManager();
        n0 n0Var = layoutManager.mRecyclerView.mRecycler;
        return layoutManager.performAccessibilityAction(i);
    }
}
