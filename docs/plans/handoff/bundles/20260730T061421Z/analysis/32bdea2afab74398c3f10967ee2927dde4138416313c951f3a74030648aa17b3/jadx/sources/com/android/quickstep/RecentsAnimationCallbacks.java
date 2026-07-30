package com.android.quickstep;

import android.graphics.Rect;
import android.util.ArraySet;
import c.a.b.X1;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.RecentsAnimationControllerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class RecentsAnimationCallbacks implements com.android.systemui.shared.system.RecentsAnimationListener {
    public final boolean mAllowMinimizeSplitScreen;
    public boolean mCancelled;
    public RecentsAnimationController mController;
    public final Set mListeners = new ArraySet();

    public interface RecentsAnimationListener {
        default void onRecentsAnimationCanceled(ThumbnailData thumbnailData) {
        }

        default void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        }

        default void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        }

        default void onTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        }
    }

    public RecentsAnimationCallbacks(boolean z) {
        this.mAllowMinimizeSplitScreen = z;
    }

    private RecentsAnimationListener[] getListeners() {
        Set set = this.mListeners;
        return (RecentsAnimationListener[]) set.toArray(new RecentsAnimationListener[set.size()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAnimationFinished(final RecentsAnimationController recentsAnimationController) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new Runnable() { // from class: c.a.b.G0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationCallbacks.this.b(recentsAnimationController);
            }
        });
    }

    public /* synthetic */ void a(ThumbnailData thumbnailData) {
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationCanceled(thumbnailData);
        }
    }

    public void addListener(RecentsAnimationListener recentsAnimationListener) {
        this.mListeners.add(recentsAnimationListener);
    }

    public /* synthetic */ void b(RecentsAnimationController recentsAnimationController) {
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationFinished(recentsAnimationController);
        }
    }

    public /* synthetic */ void c(RecentsAnimationTargets recentsAnimationTargets) {
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationStart(this.mController, recentsAnimationTargets);
        }
    }

    public /* synthetic */ void d(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onTaskAppeared(remoteAnimationTargetCompat);
        }
    }

    public void notifyAnimationCanceled() {
        this.mCancelled = true;
        onAnimationCanceled(null);
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public final void onAnimationCanceled(final ThumbnailData thumbnailData) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new Runnable() { // from class: c.a.b.I0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationCallbacks.this.a(thumbnailData);
            }
        });
    }

    @Deprecated
    public final void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, Rect rect, Rect rect2) {
        onAnimationStart(recentsAnimationControllerCompat, remoteAnimationTargetCompatArr, new RemoteAnimationTargetCompat[0], rect, rect2);
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public void onTaskAppeared(final RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new Runnable() { // from class: c.a.b.H0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationCallbacks.this.d(remoteAnimationTargetCompat);
            }
        });
    }

    public void removeAllListeners() {
        this.mListeners.clear();
    }

    public void removeListener(RecentsAnimationListener recentsAnimationListener) {
        this.mListeners.remove(recentsAnimationListener);
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public final void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, Rect rect, Rect rect2) {
        final RecentsAnimationTargets recentsAnimationTargets = new RecentsAnimationTargets(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, rect, rect2);
        RecentsAnimationController recentsAnimationController = new RecentsAnimationController(recentsAnimationControllerCompat, this.mAllowMinimizeSplitScreen, new Consumer() { // from class: c.a.b.K0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsAnimationCallbacks.this.onAnimationFinished((RecentsAnimationController) obj);
            }
        });
        this.mController = recentsAnimationController;
        if (this.mCancelled) {
            Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new X1(recentsAnimationController));
        } else {
            Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new Runnable() { // from class: c.a.b.J0
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsAnimationCallbacks.this.c(recentsAnimationTargets);
                }
            });
        }
    }
}
