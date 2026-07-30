package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import c.a.a.E0.b;
import com.android.launcher3.Utilities;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class AnimatorPlaybackController implements ValueAnimator.AnimatorUpdateListener {
    public final AnimatorSet mAnim;
    public final ValueAnimator mAnimationPlayer;
    public final Holder[] mChildAnimations;
    public float mCurrentFraction;
    public final long mDuration;
    public Runnable mEndAction;
    public Runnable mOnCancelRunnable;
    public boolean mTargetCancelled = false;

    public class Holder {
        public final ValueAnimator anim;
        public final float globalEndProgress;
        public final TimeInterpolator interpolator;
        public ProgressMapper mapper;
        public final SpringProperty springProperty;

        public Holder(Animator animator, float f, SpringProperty springProperty) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            this.anim = valueAnimator;
            this.springProperty = springProperty;
            this.interpolator = valueAnimator.getInterpolator();
            this.globalEndProgress = animator.getDuration() / f;
            ProgressMapper progressMapper = ProgressMapper.DEFAULT;
            this.mapper = b.f1269a;
        }
    }

    public class OnAnimationEndDispatcher extends AnimationSuccessListener {
        public boolean mDispatched = false;

        public OnAnimationEndDispatcher(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.mCancelled = false;
            this.mDispatched = false;
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public void onAnimationSuccess(Animator animator) {
            if (this.mDispatched) {
                return;
            }
            AnimatorPlaybackController.callListenerCommandRecursively(AnimatorPlaybackController.this.mAnim, new BiConsumer() { // from class: c.a.a.E0.m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((Animator.AnimatorListener) obj).onAnimationEnd((Animator) obj2);
                }
            });
            Runnable runnable = AnimatorPlaybackController.this.mEndAction;
            if (runnable != null) {
                runnable.run();
            }
            this.mDispatched = true;
        }
    }

    public interface ProgressMapper {
        public static final ProgressMapper DEFAULT = b.f1269a;

        float getProgress(float f, float f2);
    }

    public AnimatorPlaybackController(AnimatorSet animatorSet, long j, ArrayList arrayList) {
        this.mAnim = animatorSet;
        this.mDuration = j;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        this.mAnimationPlayer = ofFloat;
        ofFloat.setInterpolator(Interpolators.LINEAR);
        this.mAnimationPlayer.addListener(new OnAnimationEndDispatcher(null));
        this.mAnimationPlayer.addUpdateListener(this);
        this.mAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.AnimatorPlaybackController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                AnimatorPlaybackController animatorPlaybackController = AnimatorPlaybackController.this;
                animatorPlaybackController.mTargetCancelled = true;
                Runnable runnable = animatorPlaybackController.mOnCancelRunnable;
                if (runnable != null) {
                    runnable.run();
                    AnimatorPlaybackController.this.mOnCancelRunnable = null;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorPlaybackController animatorPlaybackController = AnimatorPlaybackController.this;
                animatorPlaybackController.mTargetCancelled = false;
                animatorPlaybackController.mOnCancelRunnable = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                AnimatorPlaybackController.this.mTargetCancelled = false;
            }
        });
        this.mChildAnimations = (Holder[]) arrayList.toArray(new Holder[arrayList.size()]);
    }

    public static void addAnimationHoldersRecur(Animator animator, long j, SpringProperty springProperty, ArrayList arrayList) {
        long duration = animator.getDuration();
        TimeInterpolator interpolator = animator.getInterpolator();
        if (animator instanceof ValueAnimator) {
            arrayList.add(new Holder(animator, j, springProperty));
            return;
        }
        if (!(animator instanceof AnimatorSet)) {
            throw new RuntimeException("Unknown animation type " + animator);
        }
        Iterator<Animator> it = ((AnimatorSet) animator).getChildAnimations().iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (duration > 0) {
                next.setDuration(duration);
            }
            if (interpolator != null) {
                next.setInterpolator(interpolator);
            }
            addAnimationHoldersRecur(next, j, springProperty, arrayList);
        }
    }

    public static void callAnimatorCommandRecursively(Animator animator, Consumer consumer) {
        consumer.accept(animator);
        if (animator instanceof AnimatorSet) {
            List childAnimations = ((AnimatorSet) animator).getChildAnimations();
            if (childAnimations == null) {
                childAnimations = Collections.emptyList();
            }
            Iterator it = childAnimations.iterator();
            while (it.hasNext()) {
                callAnimatorCommandRecursively((Animator) it.next(), consumer);
            }
        }
    }

    public static void callListenerCommandRecursively(Animator animator, final BiConsumer biConsumer) {
        callAnimatorCommandRecursively(animator, new Consumer() { // from class: c.a.a.E0.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BiConsumer biConsumer2 = biConsumer;
                Animator animator2 = (Animator) obj;
                List listeners = animator2.getListeners();
                if (listeners == null) {
                    listeners = Collections.emptyList();
                }
                Iterator it = listeners.iterator();
                while (it.hasNext()) {
                    biConsumer2.accept((Animator.AnimatorListener) it.next(), animator2);
                }
            }
        });
    }

    public static AnimatorPlaybackController wrap(AnimatorSet animatorSet, long j) {
        ArrayList arrayList = new ArrayList();
        addAnimationHoldersRecur(animatorSet, j, SpringProperty.DEFAULT, arrayList);
        return new AnimatorPlaybackController(animatorSet, j, arrayList);
    }

    public void dispatchOnCancel() {
        callListenerCommandRecursively(this.mAnim, new BiConsumer() { // from class: c.a.a.E0.f
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Animator.AnimatorListener) obj).onAnimationCancel((Animator) obj2);
            }
        });
    }

    public void dispatchOnStart() {
        callListenerCommandRecursively(this.mAnim, new BiConsumer() { // from class: c.a.a.E0.g
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Animator.AnimatorListener) obj).onAnimationStart((Animator) obj2);
            }
        });
    }

    public float getInterpolatedProgress() {
        return (this.mAnim.getInterpolator() != null ? this.mAnim.getInterpolator() : Interpolators.LINEAR).getInterpolation(this.mCurrentFraction);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        setPlayFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void pause() {
        for (Holder holder : this.mChildAnimations) {
            holder.anim.setInterpolator(holder.interpolator);
            ProgressMapper progressMapper = ProgressMapper.DEFAULT;
            holder.mapper = b.f1269a;
        }
        this.mAnimationPlayer.cancel();
    }

    public void setPlayFraction(float f) {
        this.mCurrentFraction = f;
        if (this.mTargetCancelled) {
            return;
        }
        float boundToRange = Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f);
        for (Holder holder : this.mChildAnimations) {
            holder.anim.setCurrentFraction(holder.mapper.getProgress(boundToRange, holder.globalEndProgress));
        }
    }

    public void start() {
        this.mAnimationPlayer.setFloatValues(this.mCurrentFraction, 1.0f);
        ValueAnimator valueAnimator = this.mAnimationPlayer;
        float f = 1.0f - this.mCurrentFraction;
        long j = this.mDuration;
        float f2 = j * f;
        valueAnimator.setDuration(f2 <= RecentsState.NO_OFFSET ? 0L : Math.min((long) f2, j));
        this.mAnimationPlayer.start();
    }
}
