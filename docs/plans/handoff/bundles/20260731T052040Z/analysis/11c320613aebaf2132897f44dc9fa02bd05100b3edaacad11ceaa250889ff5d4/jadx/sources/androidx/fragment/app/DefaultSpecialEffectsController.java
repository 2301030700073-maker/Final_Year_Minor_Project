package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.transition.Transition;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.activity.BackEventCompat;
import androidx.collection.ArrayMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.FragmentTransitionImpl;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController {
    public final ViewGroup container;
    public boolean isContainerPostponed;
    public boolean operationDirectionIsPop;
    public final ArrayList pendingOperations;
    public boolean runningNonSeekableTransition;
    public final ArrayList runningOperations;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnimationEffect extends SpecialEffectsController$Effect {
        public final AnimationInfo animationInfo;

        public AnimationEffect(AnimationInfo animationInfo) {
            this.animationInfo = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCancel(ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.animationInfo.operation;
            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            view.clearAnimation();
            viewGroup.endViewTransition(view);
            specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animation from operation " + specialEffectsController$FragmentStateManagerOperation + " has been cancelled.");
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCommit(final ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimationInfo animationInfo = this.animationInfo;
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = animationInfo.operation;
            if (animationInfo.isVisibilityUnchanged()) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            Context context = viewGroup.getContext();
            final View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            context.getClass();
            FragmentAnim$AnimationOrAnimator animation = animationInfo.getAnimation(context);
            if (animation == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Required value was null.");
                return;
            }
            Animation animation2 = (Animation) animation.animation;
            if (animation2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Required value was null.");
                return;
            }
            if (specialEffectsController$FragmentStateManagerOperation.finalState != 1) {
                view.startAnimation(animation2);
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            viewGroup.startViewTransition(view);
            FragmentAnim$EndViewTransitionAnimation fragmentAnim$EndViewTransitionAnimation = new FragmentAnim$EndViewTransitionAnimation(animation2, viewGroup, view);
            fragmentAnim$EndViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$AnimationEffect$onCommit$1
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation3) {
                    animation3.getClass();
                    ViewGroup viewGroup2 = viewGroup;
                    viewGroup2.post(new WorkerKt$$ExternalSyntheticLambda2(2, viewGroup2, view, this));
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Animation from operation " + SpecialEffectsController$FragmentStateManagerOperation.this + " has ended.");
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation3) {
                    animation3.getClass();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation3) {
                    animation3.getClass();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Animation from operation " + SpecialEffectsController$FragmentStateManagerOperation.this + " has reached onAnimationStart.");
                    }
                }
            });
            view.startAnimation(fragmentAnim$EndViewTransitionAnimation);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animation from operation " + specialEffectsController$FragmentStateManagerOperation + " has started.");
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnimationInfo extends SpecialEffectsInfo {
        public FragmentAnim$AnimationOrAnimator animation;
        public boolean isAnimLoaded;
        public final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, boolean z) {
            super(specialEffectsController$FragmentStateManagerOperation);
            specialEffectsController$FragmentStateManagerOperation.getClass();
            this.isPop = z;
        }

        public final FragmentAnim$AnimationOrAnimator getAnimation(Context context) {
            Animation loadAnimation;
            FragmentAnim$AnimationOrAnimator fragmentAnim$AnimationOrAnimator;
            if (this.isAnimLoaded) {
                return this.animation;
            }
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.operation;
            Fragment fragment = specialEffectsController$FragmentStateManagerOperation.fragment;
            boolean z = specialEffectsController$FragmentStateManagerOperation.finalState == 2;
            int nextTransition = fragment.getNextTransition();
            int popEnterAnim = this.isPop ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
            fragment.setAnimations(0, 0, 0, 0);
            ViewGroup viewGroup = fragment.mContainer;
            FragmentAnim$AnimationOrAnimator fragmentAnim$AnimationOrAnimator2 = null;
            if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
                fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
            }
            ViewGroup viewGroup2 = fragment.mContainer;
            if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
                Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
                if (onCreateAnimation != null) {
                    fragmentAnim$AnimationOrAnimator2 = new FragmentAnim$AnimationOrAnimator(onCreateAnimation);
                } else {
                    Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
                    if (onCreateAnimator != null) {
                        fragmentAnim$AnimationOrAnimator2 = new FragmentAnim$AnimationOrAnimator(onCreateAnimator);
                    } else {
                        if (popEnterAnim == 0 && nextTransition != 0) {
                            popEnterAnim = nextTransition != 4097 ? nextTransition != 8194 ? nextTransition != 8197 ? nextTransition != 4099 ? nextTransition != 4100 ? -1 : z ? Options.Companion.toActivityTransitResId(context, android.R.attr.activityOpenEnterAnimation) : Options.Companion.toActivityTransitResId(context, android.R.attr.activityOpenExitAnimation) : z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit : z ? Options.Companion.toActivityTransitResId(context, android.R.attr.activityCloseEnterAnimation) : Options.Companion.toActivityTransitResId(context, android.R.attr.activityCloseExitAnimation) : z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit : z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                        }
                        if (popEnterAnim != 0) {
                            boolean equals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
                            try {
                                if (equals) {
                                    try {
                                        loadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                                    } catch (Resources.NotFoundException e) {
                                        throw e;
                                    } catch (RuntimeException unused) {
                                    }
                                    if (loadAnimation != null) {
                                        fragmentAnim$AnimationOrAnimator = new FragmentAnim$AnimationOrAnimator(loadAnimation);
                                        fragmentAnim$AnimationOrAnimator2 = fragmentAnim$AnimationOrAnimator;
                                    }
                                }
                                Animator loadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                                if (loadAnimator != null) {
                                    fragmentAnim$AnimationOrAnimator = new FragmentAnim$AnimationOrAnimator(loadAnimator);
                                    fragmentAnim$AnimationOrAnimator2 = fragmentAnim$AnimationOrAnimator;
                                }
                            } catch (RuntimeException e2) {
                                if (equals) {
                                    throw e2;
                                }
                                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                                if (loadAnimation2 != null) {
                                    fragmentAnim$AnimationOrAnimator2 = new FragmentAnim$AnimationOrAnimator(loadAnimation2);
                                }
                            }
                        }
                    }
                }
            }
            this.animation = fragmentAnim$AnimationOrAnimator2;
            this.isAnimLoaded = true;
            return fragmentAnim$AnimationOrAnimator2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnimatorEffect extends SpecialEffectsController$Effect {
        public AnimatorSet animator;
        public final AnimationInfo animatorInfo;

        public AnimatorEffect(AnimationInfo animationInfo) {
            this.animatorInfo = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCancel(ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimatorSet animatorSet = this.animator;
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.animatorInfo.operation;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            if (!specialEffectsController$FragmentStateManagerOperation.isSeeking) {
                animatorSet.end();
            } else if (Build.VERSION.SDK_INT >= 26) {
                Api26Impl.INSTANCE.reverse(animatorSet);
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                StringBuilder sb = new StringBuilder("Animator from operation ");
                sb.append(specialEffectsController$FragmentStateManagerOperation);
                sb.append(" has been canceled");
                sb.append(specialEffectsController$FragmentStateManagerOperation.isSeeking ? " with seeking." : ".");
                sb.append(' ');
                Log.v("FragmentManager", sb.toString());
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCommit(ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.animatorInfo.operation;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            animatorSet.start();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animator from operation " + specialEffectsController$FragmentStateManagerOperation + " has started.");
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onProgress(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.animatorInfo.operation;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            if (Build.VERSION.SDK_INT < 34 || !specialEffectsController$FragmentStateManagerOperation.fragment.mTransitioning) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Adding BackProgressCallbacks for Animators to operation " + specialEffectsController$FragmentStateManagerOperation);
            }
            long j = Api24Impl.INSTANCE.totalDuration(animatorSet);
            long j2 = (long) (backEventCompat.progress * j);
            if (j2 == 0) {
                j2 = 1;
            }
            if (j2 == j) {
                j2 = j - 1;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Setting currentPlayTime to " + j2 + " for Animator " + animatorSet + " on operation " + specialEffectsController$FragmentStateManagerOperation);
            }
            Api26Impl.INSTANCE.setCurrentPlayTime(animatorSet, j2);
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onStart(final ViewGroup viewGroup) {
            final AnimatorEffect animatorEffect;
            viewGroup.getClass();
            AnimationInfo animationInfo = this.animatorInfo;
            if (animationInfo.isVisibilityUnchanged()) {
                return;
            }
            Context context = viewGroup.getContext();
            context.getClass();
            FragmentAnim$AnimationOrAnimator animation = animationInfo.getAnimation(context);
            this.animator = animation != null ? (AnimatorSet) animation.animator : null;
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = animationInfo.operation;
            Fragment fragment = specialEffectsController$FragmentStateManagerOperation.fragment;
            final boolean z = specialEffectsController$FragmentStateManagerOperation.finalState == 3;
            final View view = fragment.mView;
            viewGroup.startViewTransition(view);
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null) {
                animatorEffect = this;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$AnimatorEffect$onStart$1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animator.getClass();
                        ViewGroup viewGroup2 = viewGroup;
                        View view2 = view;
                        viewGroup2.endViewTransition(view2);
                        boolean z2 = z;
                        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = specialEffectsController$FragmentStateManagerOperation;
                        if (z2 || specialEffectsController$FragmentStateManagerOperation2.finalState == 3) {
                            int i = specialEffectsController$FragmentStateManagerOperation2.finalState;
                            view2.getClass();
                            Owner.CC._applyState(i, view2, viewGroup2);
                        }
                        DefaultSpecialEffectsController.AnimatorEffect animatorEffect2 = animatorEffect;
                        animatorEffect2.animatorInfo.operation.completeEffect(animatorEffect2);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Animator from operation " + specialEffectsController$FragmentStateManagerOperation2 + " has ended.");
                        }
                    }
                });
            } else {
                animatorEffect = this;
            }
            AnimatorSet animatorSet2 = animatorEffect.animator;
            if (animatorSet2 != null) {
                animatorSet2.setTarget(view);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        public final long totalDuration(AnimatorSet animatorSet) {
            animatorSet.getClass();
            return animatorSet.getTotalDuration();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Api26Impl {
        public static final Api26Impl INSTANCE = new Api26Impl();

        public final void reverse(AnimatorSet animatorSet) {
            animatorSet.getClass();
            animatorSet.reverse();
        }

        public final void setCurrentPlayTime(AnimatorSet animatorSet, long j) {
            animatorSet.getClass();
            animatorSet.setCurrentPlayTime(j);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SpecialEffectsInfo {
        public final SpecialEffectsController$FragmentStateManagerOperation operation;

        public SpecialEffectsInfo(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
            specialEffectsController$FragmentStateManagerOperation.getClass();
            this.operation = specialEffectsController$FragmentStateManagerOperation;
        }

        public final boolean isVisibilityUnchanged() {
            int i;
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.operation;
            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            if (view != null) {
                i = 4;
                if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                    int visibility = view.getVisibility();
                    if (visibility == 0) {
                        i = 2;
                    } else if (visibility != 4) {
                        if (visibility != 8) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(visibility, "Unknown visibility "));
                            return false;
                        }
                        i = 3;
                    }
                }
            } else {
                i = 0;
            }
            int i2 = specialEffectsController$FragmentStateManagerOperation.finalState;
            if (i != i2) {
                return (i == 2 || i2 == 2) ? false : true;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TransitionEffect extends SpecialEffectsController$Effect {
        public Object controller;
        public final ArrayList enteringNames;
        public final ArrayList exitingNames;
        public final SpecialEffectsController$FragmentStateManagerOperation firstOut;
        public final ArrayMap firstOutViews;
        public final boolean isPop;
        public final SpecialEffectsController$FragmentStateManagerOperation lastIn;
        public final ArrayMap lastInViews;
        public boolean noControllerReturned;
        public final ArrayList sharedElementFirstOutViews;
        public final ArrayList sharedElementLastInViews;
        public final ArrayMap sharedElementNameMapping;
        public final Object sharedElementTransition;
        public final FragmentTransitionImpl transitionImpl;
        public final ArrayList transitionInfos;
        public final CancellationSignal transitionSignal = new CancellationSignal();

        public TransitionEffect(ArrayList arrayList, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2, FragmentTransitionImpl fragmentTransitionImpl, Object obj, ArrayList arrayList2, ArrayList arrayList3, ArrayMap arrayMap, ArrayList arrayList4, ArrayList arrayList5, ArrayMap arrayMap2, ArrayMap arrayMap3, boolean z) {
            this.transitionInfos = arrayList;
            this.firstOut = specialEffectsController$FragmentStateManagerOperation;
            this.lastIn = specialEffectsController$FragmentStateManagerOperation2;
            this.transitionImpl = fragmentTransitionImpl;
            this.sharedElementTransition = obj;
            this.sharedElementFirstOutViews = arrayList2;
            this.sharedElementLastInViews = arrayList3;
            this.sharedElementNameMapping = arrayMap;
            this.enteringNames = arrayList4;
            this.exitingNames = arrayList5;
            this.firstOutViews = arrayMap2;
            this.lastInViews = arrayMap3;
            this.isPop = z;
        }

        public static void captureTransitioningViews(View view, ArrayList arrayList) {
            if (!(view instanceof ViewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int i = ViewGroupCompat.$r8$clinit;
            if (viewGroup.isTransitionGroup()) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    captureTransitioningViews(childAt, arrayList);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x0175  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0215 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0203 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01bc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlin.Pair createMergedTransition(android.view.ViewGroup r30, androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation r31, androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation r32) {
            /*
                Method dump skipped, instructions count: 604
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.TransitionEffect.createMergedTransition(android.view.ViewGroup, androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation, androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation):kotlin.Pair");
        }

        public final boolean getTransitioning() {
            ArrayList arrayList = this.transitionInfos;
            if (arrayList.isEmpty()) {
                return true;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (!((TransitionInfo) it.next()).operation.fragment.mTransitioning) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final boolean isSeekingSupported() {
            Object obj;
            FragmentTransitionImpl fragmentTransitionImpl = this.transitionImpl;
            if (!fragmentTransitionImpl.isSeekingSupported()) {
                return false;
            }
            ArrayList arrayList = this.transitionInfos;
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    TransitionInfo transitionInfo = (TransitionInfo) it.next();
                    if (Build.VERSION.SDK_INT < 34 || (obj = transitionInfo.transition) == null || !fragmentTransitionImpl.isSeekingSupported(obj)) {
                        return false;
                    }
                }
            }
            Object obj2 = this.sharedElementTransition;
            return obj2 == null || fragmentTransitionImpl.isSeekingSupported(obj2);
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCancel(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.transitionSignal.cancel();
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCommit(final ViewGroup viewGroup) {
            viewGroup.getClass();
            boolean isLaidOut = viewGroup.isLaidOut();
            ArrayList arrayList = this.transitionInfos;
            if (!isLaidOut || this.noControllerReturned) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    TransitionInfo transitionInfo = (TransitionInfo) it.next();
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = transitionInfo.operation;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        if (this.noControllerReturned) {
                            Log.v("FragmentManager", "SpecialEffectsController: TransitionSeekController was not created. Completing operation " + specialEffectsController$FragmentStateManagerOperation);
                        } else {
                            Log.v("FragmentManager", "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Completing operation " + specialEffectsController$FragmentStateManagerOperation);
                        }
                    }
                    transitionInfo.operation.completeEffect(this);
                }
                this.noControllerReturned = false;
                return;
            }
            Object obj = this.controller;
            FragmentTransitionImpl fragmentTransitionImpl = this.transitionImpl;
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = this.lastIn;
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation3 = this.firstOut;
            if (obj != null) {
                fragmentTransitionImpl.animateToEnd(obj);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ending execution of operations from " + specialEffectsController$FragmentStateManagerOperation3 + " to " + specialEffectsController$FragmentStateManagerOperation2);
                    return;
                }
                return;
            }
            Pair createMergedTransition = createMergedTransition(viewGroup, specialEffectsController$FragmentStateManagerOperation2, specialEffectsController$FragmentStateManagerOperation3);
            ArrayList arrayList2 = (ArrayList) createMergedTransition.component1();
            final Object component2 = createMergedTransition.component2();
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((TransitionInfo) it2.next()).operation);
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation4 = (SpecialEffectsController$FragmentStateManagerOperation) it3.next();
                fragmentTransitionImpl.setListenerForTransitionEnd(specialEffectsController$FragmentStateManagerOperation4.fragment, component2, this.transitionSignal, new DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda1(specialEffectsController$FragmentStateManagerOperation4, this, 1));
            }
            runTransition(arrayList2, viewGroup, new Function0() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onCommit$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    this.transitionImpl.beginDelayedTransition(viewGroup, component2);
                    return Unit.INSTANCE;
                }
            });
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Completed executing operations from " + specialEffectsController$FragmentStateManagerOperation3 + " to " + specialEffectsController$FragmentStateManagerOperation2);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onProgress(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
            Object obj = this.controller;
            if (obj != null) {
                this.transitionImpl.setCurrentPlayTime(obj, backEventCompat.progress);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onStart(final ViewGroup viewGroup) {
            Object obj;
            viewGroup.getClass();
            boolean isLaidOut = viewGroup.isLaidOut();
            ArrayList arrayList = this.transitionInfos;
            if (!isLaidOut) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = ((TransitionInfo) it.next()).operation;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Skipping onStart for operation " + specialEffectsController$FragmentStateManagerOperation);
                    }
                }
                return;
            }
            boolean transitioning = getTransitioning();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = this.lastIn;
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation3 = this.firstOut;
            if (transitioning && (obj = this.sharedElementTransition) != null && !isSeekingSupported()) {
                Log.i("FragmentManager", "Ignoring shared elements transition " + obj + " between " + specialEffectsController$FragmentStateManagerOperation3 + " and " + specialEffectsController$FragmentStateManagerOperation2 + " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed.");
            }
            if (isSeekingSupported() && getTransitioning()) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Pair createMergedTransition = createMergedTransition(viewGroup, specialEffectsController$FragmentStateManagerOperation2, specialEffectsController$FragmentStateManagerOperation3);
                ArrayList arrayList2 = (ArrayList) createMergedTransition.component1();
                final Object component2 = createMergedTransition.component2();
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((TransitionInfo) it2.next()).operation);
                }
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation4 = (SpecialEffectsController$FragmentStateManagerOperation) it3.next();
                    Fragment$$ExternalSyntheticLambda1 fragment$$ExternalSyntheticLambda1 = new Fragment$$ExternalSyntheticLambda1(ref$ObjectRef, 1);
                    Fragment fragment = specialEffectsController$FragmentStateManagerOperation4.fragment;
                    this.transitionImpl.setListenerForTransitionEnd(component2, this.transitionSignal, fragment$$ExternalSyntheticLambda1, new DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda1(specialEffectsController$FragmentStateManagerOperation4, this, 0));
                }
                runTransition(arrayList2, viewGroup, new Function0() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Attempting to create TransitionSeekController");
                        }
                        DefaultSpecialEffectsController.TransitionEffect transitionEffect = DefaultSpecialEffectsController.TransitionEffect.this;
                        transitionEffect.controller = transitionEffect.transitionImpl.controlDelayedTransition(viewGroup, component2);
                        final DefaultSpecialEffectsController.TransitionEffect transitionEffect2 = DefaultSpecialEffectsController.TransitionEffect.this;
                        if (transitionEffect2.controller == null) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "TransitionSeekController was not created.");
                            }
                            DefaultSpecialEffectsController.TransitionEffect.this.noControllerReturned = true;
                        } else {
                            Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                            final Object obj2 = component2;
                            final ViewGroup viewGroup2 = viewGroup;
                            ref$ObjectRef2.element = new Function0() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    ArrayList arrayList4 = transitionEffect2.transitionInfos;
                                    if (!arrayList4.isEmpty()) {
                                        Iterator it4 = arrayList4.iterator();
                                        while (it4.hasNext()) {
                                            if (!((DefaultSpecialEffectsController.TransitionInfo) it4.next()).operation.isSeeking) {
                                                if (FragmentManager.isLoggingEnabled(2)) {
                                                    Log.v("FragmentManager", "Completing animating immediately");
                                                }
                                                CancellationSignal cancellationSignal = new CancellationSignal();
                                                DefaultSpecialEffectsController.TransitionEffect transitionEffect3 = transitionEffect2;
                                                transitionEffect3.transitionImpl.setListenerForTransitionEnd(((DefaultSpecialEffectsController.TransitionInfo) transitionEffect3.transitionInfos.get(0)).operation.fragment, obj2, cancellationSignal, new Fragment$$ExternalSyntheticLambda1(transitionEffect2, 3));
                                                cancellationSignal.cancel();
                                                return Unit.INSTANCE;
                                            }
                                        }
                                    }
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v("FragmentManager", "Animating to start");
                                    }
                                    DefaultSpecialEffectsController.TransitionEffect transitionEffect4 = transitionEffect2;
                                    FragmentTransitionImpl fragmentTransitionImpl = transitionEffect4.transitionImpl;
                                    Object obj3 = transitionEffect4.controller;
                                    obj3.getClass();
                                    fragmentTransitionImpl.animateToStart(obj3, new DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda4(transitionEffect2, viewGroup2));
                                    return Unit.INSTANCE;
                                }
                            };
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Started executing operations from " + DefaultSpecialEffectsController.TransitionEffect.this.firstOut + " to " + DefaultSpecialEffectsController.TransitionEffect.this.lastIn);
                            }
                        }
                        return Unit.INSTANCE;
                    }
                });
            }
        }

        public final void runTransition(ArrayList arrayList, ViewGroup viewGroup, Function0 function0) {
            FragmentTransition.setViewVisibility(4, arrayList);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = this.sharedElementLastInViews;
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList3.get(i);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                arrayList2.add(view.getTransitionName());
                view.setTransitionName(null);
            }
            boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(2);
            ArrayList arrayList4 = this.sharedElementFirstOutViews;
            if (isLoggingEnabled) {
                Log.v("FragmentManager", ">>>>> Beginning transition <<<<<");
                Log.v("FragmentManager", ">>>>> SharedElementFirstOutViews <<<<<");
                Iterator it = arrayList4.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    next.getClass();
                    View view2 = (View) next;
                    StringBuilder sb = new StringBuilder("View: ");
                    sb.append(view2);
                    sb.append(" Name: ");
                    WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                    sb.append(view2.getTransitionName());
                    Log.v("FragmentManager", sb.toString());
                }
                Log.v("FragmentManager", ">>>>> SharedElementLastInViews <<<<<");
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    next2.getClass();
                    View view3 = (View) next2;
                    StringBuilder sb2 = new StringBuilder("View: ");
                    sb2.append(view3);
                    sb2.append(" Name: ");
                    WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                    sb2.append(view3.getTransitionName());
                    Log.v("FragmentManager", sb2.toString());
                }
            }
            function0.invoke();
            int size2 = arrayList3.size();
            ArrayList arrayList5 = new ArrayList();
            for (int i2 = 0; i2 < size2; i2++) {
                View view4 = (View) arrayList4.get(i2);
                WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
                String transitionName = view4.getTransitionName();
                arrayList5.add(transitionName);
                if (transitionName != null) {
                    view4.setTransitionName(null);
                    String str = (String) this.sharedElementNameMapping.get(transitionName);
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            break;
                        }
                        if (str.equals(arrayList2.get(i3))) {
                            ((View) arrayList3.get(i3)).setTransitionName(transitionName);
                            break;
                        }
                        i3++;
                    }
                }
            }
            OneShotPreDrawListener.add(viewGroup, new FragmentTransitionImpl.AnonymousClass1(size2, arrayList3, arrayList2, arrayList4, arrayList5));
            FragmentTransition.setViewVisibility(0, arrayList);
            this.transitionImpl.swapSharedElementTargets(this.sharedElementTransition, arrayList4, arrayList3);
        }
    }

    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.container = viewGroup;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    public static void findNamedViews(ArrayMap arrayMap, View view) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            arrayMap.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(arrayMap, childAt);
                }
            }
        }
    }

    public static final DefaultSpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        viewGroup.getClass();
        fragmentManager.getClass();
        fragmentManager.getSpecialEffectsControllerFactory().getClass();
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof DefaultSpecialEffectsController) {
            return (DefaultSpecialEffectsController) tag;
        }
        DefaultSpecialEffectsController defaultSpecialEffectsController = new DefaultSpecialEffectsController(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, defaultSpecialEffectsController);
        return defaultSpecialEffectsController;
    }

    public static boolean isOperationSeekable(ArrayList arrayList) {
        boolean z;
        Iterator it = arrayList.iterator();
        loop0: while (true) {
            z = true;
            while (it.hasNext()) {
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) it.next();
                if (!specialEffectsController$FragmentStateManagerOperation.effects.isEmpty()) {
                    ArrayList arrayList2 = specialEffectsController$FragmentStateManagerOperation.effects;
                    if (arrayList2 == null || !arrayList2.isEmpty()) {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            if (!((SpecialEffectsController$Effect) it2.next()).isSeekingSupported()) {
                                break;
                            }
                        }
                    }
                }
                z = false;
            }
            break loop0;
        }
        if (z) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).effects, arrayList3);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static void retainMatchingViews(ArrayMap arrayMap, final Collection collection) {
        Set entrySet = arrayMap.entrySet();
        Function1 function1 = new Function1() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                Collection<String> collection2 = collection;
                View view = (View) entry.getValue();
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                return Boolean.valueOf(CollectionsKt.contains(collection2, view.getTransitionName()));
            }
        };
        Iterator it = ((ArrayMap.EntrySet) entrySet).iterator();
        while (it.hasNext()) {
            if (!((Boolean) function1.invoke(it.next())).booleanValue()) {
                it.remove();
            }
        }
    }

    public final void applyContainerChangesToOperation$fragment_release(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        specialEffectsController$FragmentStateManagerOperation.getClass();
        if (specialEffectsController$FragmentStateManagerOperation.isAwaitingContainerChanges) {
            int i = specialEffectsController$FragmentStateManagerOperation.finalState;
            View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
            requireView.getClass();
            Owner.CC._applyState(i, requireView, this.container);
            specialEffectsController$FragmentStateManagerOperation.isAwaitingContainerChanges = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x042a A[LOOP:7: B:90:0x0424->B:92:0x042a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0447  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void collectEffects(java.util.ArrayList r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.collectEffects(java.util.ArrayList, boolean):void");
    }

    public final void commitEffects$fragment_release(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects, arrayList);
        }
        List list2 = CollectionsKt.toList(CollectionsKt.toSet(arrayList));
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            ((SpecialEffectsController$Effect) list2.get(i)).onCommit(this.container);
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            applyContainerChangesToOperation$fragment_release((SpecialEffectsController$FragmentStateManagerOperation) list.get(i2));
        }
        List list3 = CollectionsKt.toList(list);
        int size3 = list3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) list3.get(i3);
            if (specialEffectsController$FragmentStateManagerOperation.effects.isEmpty()) {
                specialEffectsController$FragmentStateManagerOperation.complete$fragment_release();
            }
        }
    }

    public final void enqueue(int i, int i2, FragmentStateManager fragmentStateManager) {
        synchronized (this.pendingOperations) {
            try {
                Fragment fragment = fragmentStateManager.mFragment;
                fragment.getClass();
                SpecialEffectsController$FragmentStateManagerOperation findPendingOperation = findPendingOperation(fragment);
                if (findPendingOperation == null) {
                    Fragment fragment2 = fragmentStateManager.mFragment;
                    if (!fragment2.mTransitioning && !fragment2.mRemoving) {
                        findPendingOperation = null;
                    }
                    findPendingOperation = findRunningOperation(fragment2);
                }
                if (findPendingOperation != null) {
                    findPendingOperation.mergeWith(i, i2);
                    return;
                }
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = new SpecialEffectsController$FragmentStateManagerOperation(i, i2, fragmentStateManager);
                this.pendingOperations.add(specialEffectsController$FragmentStateManagerOperation);
                specialEffectsController$FragmentStateManagerOperation.completionListeners.add(new SpecialEffectsController$$ExternalSyntheticLambda0(this, specialEffectsController$FragmentStateManagerOperation, 0));
                specialEffectsController$FragmentStateManagerOperation.completionListeners.add(new SpecialEffectsController$$ExternalSyntheticLambda0(this, specialEffectsController$FragmentStateManagerOperation, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void executePendingOperations() {
        boolean z;
        if (this.isContainerPostponed) {
            return;
        }
        if (!this.container.isAttachedToWindow()) {
            forceCompleteAllOperations();
            this.operationDirectionIsPop = false;
            return;
        }
        synchronized (this.pendingOperations) {
            try {
                ArrayList mutableList = CollectionsKt.toMutableList((Collection) this.runningOperations);
                this.runningOperations.clear();
                Iterator it = mutableList.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) it.next();
                    if (this.pendingOperations.isEmpty() || !specialEffectsController$FragmentStateManagerOperation.fragment.mTransitioning) {
                        z = false;
                    }
                    specialEffectsController$FragmentStateManagerOperation.isSeeking = z;
                }
                Iterator it2 = mutableList.iterator();
                while (it2.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) it2.next();
                    if (this.runningNonSeekableTransition) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Completing non-seekable operation " + specialEffectsController$FragmentStateManagerOperation2);
                        }
                        specialEffectsController$FragmentStateManagerOperation2.complete$fragment_release();
                    } else {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + specialEffectsController$FragmentStateManagerOperation2);
                        }
                        specialEffectsController$FragmentStateManagerOperation2.cancel(this.container);
                    }
                    this.runningNonSeekableTransition = false;
                    if (!specialEffectsController$FragmentStateManagerOperation2.isComplete) {
                        this.runningOperations.add(specialEffectsController$FragmentStateManagerOperation2);
                    }
                }
                if (!this.pendingOperations.isEmpty()) {
                    updateFinalState();
                    ArrayList mutableList2 = CollectionsKt.toMutableList((Collection) this.pendingOperations);
                    if (mutableList2.isEmpty()) {
                        return;
                    }
                    this.pendingOperations.clear();
                    this.runningOperations.addAll(mutableList2);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    collectEffects(mutableList2, this.operationDirectionIsPop);
                    boolean isOperationSeekable = isOperationSeekable(mutableList2);
                    Iterator it3 = mutableList2.iterator();
                    boolean z2 = true;
                    while (it3.hasNext()) {
                        if (!((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).fragment.mTransitioning) {
                            z2 = false;
                        }
                    }
                    if (!z2 || isOperationSeekable) {
                        z = false;
                    }
                    this.runningNonSeekableTransition = z;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Operation seekable = " + isOperationSeekable + " \ntransition = " + z2);
                    }
                    if (!z2) {
                        processStart(mutableList2);
                        commitEffects$fragment_release(mutableList2);
                    } else if (isOperationSeekable) {
                        processStart(mutableList2);
                        int size = mutableList2.size();
                        for (int i = 0; i < size; i++) {
                            applyContainerChangesToOperation$fragment_release((SpecialEffectsController$FragmentStateManagerOperation) mutableList2.get(i));
                        }
                    }
                    this.operationDirectionIsPop = false;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final SpecialEffectsController$FragmentStateManagerOperation findPendingOperation(Fragment fragment) {
        Object obj;
        Iterator it = this.pendingOperations.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) obj;
            if (Intrinsics.areEqual(specialEffectsController$FragmentStateManagerOperation.fragment, fragment) && !specialEffectsController$FragmentStateManagerOperation.isCanceled) {
                break;
            }
        }
        return (SpecialEffectsController$FragmentStateManagerOperation) obj;
    }

    public final SpecialEffectsController$FragmentStateManagerOperation findRunningOperation(Fragment fragment) {
        Object obj;
        Iterator it = this.runningOperations.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) obj;
            if (Intrinsics.areEqual(specialEffectsController$FragmentStateManagerOperation.fragment, fragment) && !specialEffectsController$FragmentStateManagerOperation.isCanceled) {
                break;
            }
        }
        return (SpecialEffectsController$FragmentStateManagerOperation) obj;
    }

    public final void forceCompleteAllOperations() {
        String str;
        String str2;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = this.container.isAttachedToWindow();
        synchronized (this.pendingOperations) {
            try {
                updateFinalState();
                processStart(this.pendingOperations);
                ArrayList mutableList = CollectionsKt.toMutableList((Collection) this.runningOperations);
                Iterator it = mutableList.iterator();
                while (it.hasNext()) {
                    ((SpecialEffectsController$FragmentStateManagerOperation) it.next()).isSeeking = false;
                }
                Iterator it2 = mutableList.iterator();
                while (it2.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) it2.next();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        if (isAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.container + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + specialEffectsController$FragmentStateManagerOperation);
                    }
                    specialEffectsController$FragmentStateManagerOperation.cancel(this.container);
                }
                ArrayList mutableList2 = CollectionsKt.toMutableList((Collection) this.pendingOperations);
                Iterator it3 = mutableList2.iterator();
                while (it3.hasNext()) {
                    ((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).isSeeking = false;
                }
                Iterator it4 = mutableList2.iterator();
                while (it4.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) it4.next();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        if (isAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.container + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + specialEffectsController$FragmentStateManagerOperation2);
                    }
                    specialEffectsController$FragmentStateManagerOperation2.cancel(this.container);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void markPostponedState() {
        Object obj;
        synchronized (this.pendingOperations) {
            try {
                updateFinalState();
                ArrayList arrayList = this.pendingOperations;
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        obj = null;
                        break;
                    }
                    obj = listIterator.previous();
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) obj;
                    View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
                    view.getClass();
                    char c = 4;
                    if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                        int visibility = view.getVisibility();
                        if (visibility == 0) {
                            c = 2;
                        } else if (visibility != 4) {
                            if (visibility != 8) {
                                throw new IllegalArgumentException("Unknown visibility " + visibility);
                            }
                            c = 3;
                        }
                    }
                    if (specialEffectsController$FragmentStateManagerOperation.finalState == 2 && c != 2) {
                        break;
                    }
                }
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) obj;
                Fragment fragment = specialEffectsController$FragmentStateManagerOperation2 != null ? specialEffectsController$FragmentStateManagerOperation2.fragment : null;
                this.isContainerPostponed = fragment != null ? fragment.isPostponed() : false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void processStart(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) list.get(i);
            FragmentStateManager fragmentStateManager = specialEffectsController$FragmentStateManagerOperation.fragmentStateManager;
            if (!specialEffectsController$FragmentStateManagerOperation.isStarted) {
                specialEffectsController$FragmentStateManagerOperation.isStarted = true;
                int i2 = specialEffectsController$FragmentStateManagerOperation.lifecycleImpact;
                if (i2 == 2) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    fragment.getClass();
                    View findFocus = fragment.mView.findFocus();
                    if (findFocus != null) {
                        fragment.setFocusedView(findFocus);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                        }
                    }
                    View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
                    requireView.getClass();
                    if (requireView.getParent() == null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Adding fragment " + fragment + " view " + requireView + " to container in onStart");
                        }
                        fragmentStateManager.addViewToContainer();
                        requireView.setAlpha(0.0f);
                    }
                    if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Making view " + requireView + " INVISIBLE in onStart");
                        }
                        requireView.setVisibility(4);
                    }
                    requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Setting view alpha to " + fragment.getPostOnViewCreatedAlpha() + " in onStart");
                    }
                } else if (i2 == 3) {
                    Fragment fragment2 = fragmentStateManager.mFragment;
                    fragment2.getClass();
                    View requireView2 = fragment2.requireView();
                    requireView2.getClass();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Clearing focus " + requireView2.findFocus() + " on view " + requireView2 + " for Fragment " + fragment2);
                    }
                    requireView2.clearFocus();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects, arrayList);
        }
        List list2 = CollectionsKt.toList(CollectionsKt.toSet(arrayList));
        int size2 = list2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            SpecialEffectsController$Effect specialEffectsController$Effect = (SpecialEffectsController$Effect) list2.get(i3);
            specialEffectsController$Effect.getClass();
            ViewGroup viewGroup = this.container;
            viewGroup.getClass();
            if (!specialEffectsController$Effect.isStarted) {
                specialEffectsController$Effect.onStart(viewGroup);
            }
            specialEffectsController$Effect.isStarted = true;
        }
    }

    public final void updateFinalState() {
        Iterator it = this.pendingOperations.iterator();
        while (it.hasNext()) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) it.next();
            int i = 2;
            if (specialEffectsController$FragmentStateManagerOperation.lifecycleImpact == 2) {
                View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
                requireView.getClass();
                int visibility = requireView.getVisibility();
                if (visibility != 0) {
                    i = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(visibility, "Unknown visibility "));
                            return;
                        }
                        i = 3;
                    }
                }
                specialEffectsController$FragmentStateManagerOperation.mergeWith(i, 1);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TransitionInfo extends SpecialEffectsInfo {
        public final boolean isOverlapAllowed;
        public final Object sharedElementTransition;
        public final Object transition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, boolean z, boolean z2) {
            super(specialEffectsController$FragmentStateManagerOperation);
            Fragment fragment = specialEffectsController$FragmentStateManagerOperation.fragment;
            this.transition = specialEffectsController$FragmentStateManagerOperation.finalState == 2 ? z ? fragment.getReenterTransition() : fragment.getEnterTransition() : z ? fragment.getReturnTransition() : fragment.getExitTransition();
            this.isOverlapAllowed = specialEffectsController$FragmentStateManagerOperation.finalState == 2 ? z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() : true;
            this.sharedElementTransition = z2 ? z ? fragment.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition() : null;
        }

        public final FragmentTransitionImpl getHandlingImpl() {
            Object obj = this.transition;
            FragmentTransitionImpl handlingImpl = getHandlingImpl(obj);
            Object obj2 = this.sharedElementTransition;
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(obj2);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl == null ? handlingImpl2 : handlingImpl;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + this.operation.fragment + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
        }

        public final FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionCompat21 fragmentTransitionCompat21 = FragmentTransition.PLATFORM_IMPL;
            if (obj instanceof Transition) {
                return fragmentTransitionCompat21;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            StringBuilder sb = new StringBuilder("Transition ");
            sb.append(obj);
            Fragment fragment = this.operation.fragment;
            sb.append(" for fragment ");
            sb.append(fragment);
            sb.append(" is not a valid framework Transition or AndroidX Transition");
            throw new IllegalArgumentException(sb.toString());
        }
    }
}
