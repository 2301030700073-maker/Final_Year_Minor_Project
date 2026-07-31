package androidx.lifecycle;

import android.view.View;
import androidx.customview.widget.ViewDragHelper;
import androidx.lifecycle.Lifecycle;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServiceLifecycleDispatcher$DispatchRunnable implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object event;
    public final Object registry;
    public boolean wasExecuted;

    public ServiceLifecycleDispatcher$DispatchRunnable(LifecycleRegistry lifecycleRegistry, Lifecycle.Event event) {
        lifecycleRegistry.getClass();
        event.getClass();
        this.registry = lifecycleRegistry;
        this.event = event;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseTransientBottomBar.AnonymousClass3 anonymousClass3;
        int i = this.$r8$classId;
        Object obj = this.event;
        Object obj2 = this.registry;
        switch (i) {
            case 0:
                if (!this.wasExecuted) {
                    ((LifecycleRegistry) obj2).handleLifecycleEvent((Lifecycle.Event) obj);
                    this.wasExecuted = true;
                    break;
                }
                break;
            default:
                View view = (View) obj2;
                SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) obj;
                ViewDragHelper viewDragHelper = swipeDismissBehavior.viewDragHelper;
                if (viewDragHelper != null && viewDragHelper.continueSettling()) {
                    view.postOnAnimation(this);
                    break;
                } else if (this.wasExecuted && (anonymousClass3 = swipeDismissBehavior.listener) != null) {
                    anonymousClass3.onDismiss(view);
                    break;
                }
                break;
        }
    }

    public ServiceLifecycleDispatcher$DispatchRunnable(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.event = swipeDismissBehavior;
        this.registry = view;
        this.wasExecuted = z;
    }
}
