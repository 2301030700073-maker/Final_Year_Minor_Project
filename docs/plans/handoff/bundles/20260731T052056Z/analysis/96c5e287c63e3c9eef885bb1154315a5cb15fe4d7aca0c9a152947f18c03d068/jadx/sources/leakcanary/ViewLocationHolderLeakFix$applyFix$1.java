package leakcanary;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.lifecycle.LiveData$1;
import curtains.OnRootViewRemovedListener;
import kotlin.SynchronizedLazyImpl;
import leakcanary.internal.HandlersKt;
import org.jsoup.select.NodeTraversor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewLocationHolderLeakFix$applyFix$1 implements OnRootViewRemovedListener {
    public final /* synthetic */ Application $application;

    public ViewLocationHolderLeakFix$applyFix$1(Application application) {
        this.$application = application;
    }

    @Override // curtains.OnRootViewRemovedListener
    public final void onRootViewsChanged(View view, boolean z) {
        if (z) {
            return;
        }
        SynchronizedLazyImpl synchronizedLazyImpl = HandlersKt.mainHandler$delegate;
        Looper mainLooper = Looper.getMainLooper();
        mainLooper.getClass();
        if (mainLooper.getThread() == Thread.currentThread()) {
            NodeTraversor.uncheckedClearStaticPool(this.$application);
        } else {
            ((Handler) HandlersKt.mainHandler$delegate.getValue()).post(new LiveData$1(24, this));
        }
    }
}
