package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.Choreographer;
import androidx.cardview.widget.CardView;
import androidx.collection.SimpleArrayMap;
import androidx.paging.HintHandler;
import androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimationHandler {
    public static final ThreadLocal sAnimatorHandler = new ThreadLocal();
    public DurationScaleChangeListener33 mDurationScaleChangeListener;
    public final CardView.AnonymousClass1 mScheduler;
    public final SimpleArrayMap mDelayedCallbackStartTime = new SimpleArrayMap(0);
    public final ArrayList mAnimationCallbacks = new ArrayList();
    public final HintHandler mCallbackDispatcher = new HintHandler(20, this);
    public final Task$$ExternalSyntheticLambda0 mRunnable = new Task$$ExternalSyntheticLambda0(13, this);
    public boolean mListDirty = false;
    public float mDurationScale = 1.0f;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public AnimationHandler(CardView.AnonymousClass1 anonymousClass1) {
        this.mScheduler = anonymousClass1;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [android.animation.ValueAnimator$DurationScaleChangeListener, androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0] */
    public final void addAnimationFrameCallback(SpringAnimation springAnimation) {
        ArrayList arrayList = this.mAnimationCallbacks;
        if (arrayList.size() == 0) {
            ((Choreographer) this.mScheduler.mCardBackground).postFrameCallback(new ProfileInstallerInitializer$$ExternalSyntheticLambda0(this.mRunnable, 2));
            if (Build.VERSION.SDK_INT >= 33) {
                this.mDurationScale = ValueAnimator.getDurationScale();
                final DurationScaleChangeListener33 durationScaleChangeListener33 = this.mDurationScaleChangeListener;
                if (durationScaleChangeListener33 == null) {
                    durationScaleChangeListener33 = new DurationScaleChangeListener33();
                    this.mDurationScaleChangeListener = durationScaleChangeListener33;
                }
                if (durationScaleChangeListener33.mListener == null) {
                    ?? r5 = new ValueAnimator.DurationScaleChangeListener() { // from class: androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f) {
                            AnimationHandler.this.mDurationScale = f;
                        }
                    };
                    durationScaleChangeListener33.mListener = r5;
                    ValueAnimator.registerDurationScaleChangeListener(r5);
                }
            }
        }
        if (arrayList.contains(springAnimation)) {
            return;
        }
        arrayList.add(springAnimation);
    }
}
