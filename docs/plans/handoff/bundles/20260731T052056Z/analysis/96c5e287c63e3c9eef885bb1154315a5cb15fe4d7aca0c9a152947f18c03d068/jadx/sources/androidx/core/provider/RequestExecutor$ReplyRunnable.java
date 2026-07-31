package androidx.core.provider;

import android.os.Handler;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityRecreator;
import androidx.core.provider.FontRequestWorker;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.HeaderBehavior;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RequestExecutor$ReplyRunnable implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public Object mCallable;
    public Object mConsumer;
    public Object mHandler;

    public RequestExecutor$ReplyRunnable(CancellableContinuationImpl cancellableContinuationImpl, RoomDatabase roomDatabase, RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) {
        this.mCallable = cancellableContinuationImpl;
        this.mConsumer = roomDatabase;
        this.mHandler = roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
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
                ((Handler) this.mHandler).post(new ActivityRecreator.AnonymousClass1(4, (FontRequestWorker.AnonymousClass2) this.mConsumer, obj));
                break;
            case 1:
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.mCallable;
                try {
                    AwaitKt.runBlocking(cancellableContinuationImpl.context.minusKey(ContinuationInterceptor$Key.$$INSTANCE), new FlowExtKt$simpleScan$1((RoomDatabase) this.mConsumer, cancellableContinuationImpl, (RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) this.mHandler, (Continuation) null, 22));
                    break;
                } catch (Throwable th) {
                    cancellableContinuationImpl.cancel(th);
                    return;
                }
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

    public RequestExecutor$ReplyRunnable(HeaderBehavior headerBehavior, CoordinatorLayout coordinatorLayout, View view) {
        this.mHandler = headerBehavior;
        this.mCallable = coordinatorLayout;
        this.mConsumer = view;
    }
}
