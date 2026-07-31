package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {
    public final WindowInsetsHolder composeInsets;
    public boolean prepared;
    public boolean runningAnimation;
    public WindowInsetsCompat savedInsets;

    public InsetsListener(WindowInsetsHolder windowInsetsHolder) {
        super(!windowInsetsHolder.consumes ? 1 : 0);
        this.composeInsets = windowInsetsHolder;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.savedInsets = windowInsetsCompat;
        WindowInsetsHolder windowInsetsHolder = this.composeInsets;
        ValueInsets valueInsets = windowInsetsHolder.imeAnimationTarget;
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        valueInsets.setValue$foundation_layout(OffsetKt.toInsetsValues(impl.getInsets(8)));
        if (this.prepared) {
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
            }
        } else if (!this.runningAnimation) {
            windowInsetsHolder.imeAnimationSource.setValue$foundation_layout(OffsetKt.toInsetsValues(impl.getInsets(8)));
            WindowInsetsHolder.update$default(windowInsetsHolder, windowInsetsCompat);
        }
        return windowInsetsHolder.consumes ? WindowInsetsCompat.CONSUMED : windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.prepared = false;
        this.runningAnimation = false;
        WindowInsetsCompat windowInsetsCompat = this.savedInsets;
        if (windowInsetsAnimationCompat.mImpl.getDurationMillis() > 0 && windowInsetsCompat != null) {
            WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
            WindowInsetsHolder windowInsetsHolder = this.composeInsets;
            windowInsetsHolder.imeAnimationSource.setValue$foundation_layout(OffsetKt.toInsetsValues(impl.getInsets(8)));
            windowInsetsHolder.imeAnimationTarget.setValue$foundation_layout(OffsetKt.toInsetsValues(impl.getInsets(8)));
            WindowInsetsHolder.update$default(windowInsetsHolder, windowInsetsCompat);
        }
        this.savedInsets = null;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.prepared = true;
        this.runningAnimation = true;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        WindowInsetsHolder windowInsetsHolder = this.composeInsets;
        WindowInsetsHolder.update$default(windowInsetsHolder, windowInsetsCompat);
        return windowInsetsHolder.consumes ? WindowInsetsCompat.CONSUMED : windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WeakCache onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache) {
        this.prepared = false;
        return weakCache;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.requestApplyInsets();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.prepared) {
            this.prepared = false;
            this.runningAnimation = false;
            WindowInsetsCompat windowInsetsCompat = this.savedInsets;
            if (windowInsetsCompat != null) {
                WindowInsetsHolder windowInsetsHolder = this.composeInsets;
                windowInsetsHolder.imeAnimationSource.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsets(8)));
                WindowInsetsHolder.update$default(windowInsetsHolder, windowInsetsCompat);
                this.savedInsets = null;
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
