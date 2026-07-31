package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.Choreographer;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.platform.WeakCache;
import androidx.fragment.app.Fragment;
import androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda0;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimationHandler {
    public static final ThreadLocal sAnimatorHandler = new ThreadLocal();
    public DurationScaleChangeListener33 mDurationScaleChangeListener;
    public final WeakCache mScheduler;
    public final SimpleArrayMap mDelayedCallbackStartTime = new SimpleArrayMap(0);
    public final ArrayList mAnimationCallbacks = new ArrayList();
    public final Fragment.AnonymousClass7 mCallbackDispatcher = new Fragment.AnonymousClass7(this);
    public final Preview$$ExternalSyntheticLambda0 mRunnable = new Preview$$ExternalSyntheticLambda0(28, this);
    public boolean mListDirty = false;
    public float mDurationScale = 1.0f;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DurationScaleChangeListener33 {
        public AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0 mListener;

        public DurationScaleChangeListener33() {
        }

        public final boolean unregister() {
            boolean unregisterDurationScaleChangeListener = ValueAnimator.unregisterDurationScaleChangeListener(this.mListener);
            this.mListener = null;
            return unregisterDurationScaleChangeListener;
        }
    }

    public AnimationHandler(WeakCache weakCache) {
        this.mScheduler = weakCache;
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [android.animation.ValueAnimator$DurationScaleChangeListener, androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0] */
    public final void addAnimationFrameCallback(SpringAnimation springAnimation) {
        ArrayList arrayList = this.mAnimationCallbacks;
        if (arrayList.size() == 0) {
            ((Choreographer) this.mScheduler.values).postFrameCallback(new ProfileInstallerInitializer$$ExternalSyntheticLambda0(2, this.mRunnable));
            if (Build.VERSION.SDK_INT >= 33) {
                this.mDurationScale = ValueAnimator.getDurationScale();
                if (this.mDurationScaleChangeListener == null) {
                    this.mDurationScaleChangeListener = new DurationScaleChangeListener33();
                }
                final DurationScaleChangeListener33 durationScaleChangeListener33 = this.mDurationScaleChangeListener;
                if (durationScaleChangeListener33.mListener == null) {
                    ?? r1 = new ValueAnimator.DurationScaleChangeListener() { // from class: androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f) {
                            AnimationHandler.this.mDurationScale = f;
                        }
                    };
                    durationScaleChangeListener33.mListener = r1;
                    ValueAnimator.registerDurationScaleChangeListener(r1);
                }
            }
        }
        if (arrayList.contains(springAnimation)) {
            return;
        }
        arrayList.add(springAnimation);
    }
}
