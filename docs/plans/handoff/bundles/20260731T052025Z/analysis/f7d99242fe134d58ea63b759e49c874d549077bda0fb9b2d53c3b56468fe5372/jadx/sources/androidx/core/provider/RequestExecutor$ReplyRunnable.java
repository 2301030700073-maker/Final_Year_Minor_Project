package androidx.core.provider;

import android.os.Handler;
import android.view.View;
import android.widget.OverScroller;
import androidx.camera.core.processing.Edge;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityRecreator;
import androidx.core.provider.FontRequestWorker;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.HeaderBehavior;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestExecutor$ReplyRunnable implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public Object mCallable;
    public Object mConsumer;
    public Object mHandler;

    public RequestExecutor$ReplyRunnable(HeaderBehavior headerBehavior, CoordinatorLayout coordinatorLayout, View view) {
        this.mHandler = headerBehavior;
        this.mCallable = coordinatorLayout;
        this.mConsumer = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OverScroller overScroller;
        switch (this.$r8$classId) {
            case 0:
                try {
                    obj = ((FontRequestWorker.AnonymousClass1) this.mCallable).call();
                } catch (Exception unused) {
                    obj = null;
                }
                ((Handler) this.mHandler).post(new ActivityRecreator.AnonymousClass1(7, (Edge) this.mConsumer, obj));
                break;
            default:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.mCallable;
                HeaderBehavior headerBehavior = (HeaderBehavior) this.mHandler;
                View view = (View) this.mConsumer;
                if (view != null && (overScroller = headerBehavior.scroller) != null) {
                    if (!overScroller.computeScrollOffset()) {
                        AppBarLayout appBarLayout = (AppBarLayout) view;
                        ((AppBarLayout.BaseBehavior) headerBehavior).snapToChildIfNeeded(coordinatorLayout, appBarLayout);
                        if (appBarLayout.liftOnScroll) {
                            appBarLayout.setLiftedState(appBarLayout.shouldLift(AppBarLayout.BaseBehavior.findFirstScrollingChild(coordinatorLayout)));
                            break;
                        }
                    } else {
                        headerBehavior.setHeaderTopBottomOffset(coordinatorLayout, view, headerBehavior.scroller.getCurrY());
                        view.postOnAnimation(this);
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ RequestExecutor$ReplyRunnable() {
    }
}
