package androidx.lifecycle;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import androidx.lifecycle.Lifecycle;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
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
