package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.BackEventCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController$Operation$State;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.svg.internal.AndroidSvg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController {
    public final ViewGroup container;
    public boolean isContainerPostponed;
    public boolean operationDirectionIsPop;
    public final ArrayList pendingOperations;
    public boolean runningNonSeekableTransition;
    public final ArrayList runningOperations;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AnimationEffect extends SpecialEffectsController$Effect {
        public final AnimationInfo animationInfo;

        public AnimationEffect(AnimationInfo animationInfo) {
            this.animationInfo = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCancel(ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animationInfo.fragment;
            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            view.clearAnimation();
            viewGroup.endViewTransition(view);
            specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animation from operation " + specialEffectsController$FragmentStateManagerOperation + " has been cancelled.");
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCommit(final ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimationInfo animationInfo = this.animationInfo;
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo.fragment;
            if (animationInfo.isVisibilityUnchanged()) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            Context context = viewGroup.getContext();
            final View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            context.getClass();
            AndroidSvg animation = animationInfo.getAnimation(context);
            if (animation == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Required value was null.");
                return;
            }
            Animation animation2 = (Animation) animation.svg;
            if (animation2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Required value was null.");
                return;
            }
            if (specialEffectsController$FragmentStateManagerOperation.finalState != SpecialEffectsController$Operation$State.REMOVED) {
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
                    viewGroup2.post(new Processor$$ExternalSyntheticLambda1(viewGroup2, view, this, 3));
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Animation from operation " + SpecialEffectsController$FragmentStateManagerOperation.this + " has reached onAnimationStart.");
                    }
                }
            });
            view.startAnimation(fragmentAnim$EndViewTransitionAnimation);
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animation from operation " + specialEffectsController$FragmentStateManagerOperation + " has started.");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AnimationInfo extends BasePreferenceLoader {
        public AndroidSvg animation;
        public boolean isAnimLoaded;
        public final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, boolean z) {
            super(specialEffectsController$FragmentStateManagerOperation);
            specialEffectsController$FragmentStateManagerOperation.getClass();
            this.isPop = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00c1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final coil3.svg.internal.AndroidSvg getAnimation(android.content.Context r9) {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.AnimationInfo.getAnimation(android.content.Context):coil3.svg.internal.AndroidSvg");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.fragment;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            if (!specialEffectsController$FragmentStateManagerOperation.isSeeking) {
                animatorSet.end();
            } else if (Build.VERSION.SDK_INT >= 26) {
                Api26Impl.INSTANCE.reverse(animatorSet);
            }
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.fragment;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            animatorSet.start();
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Animator from operation " + specialEffectsController$FragmentStateManagerOperation + " has started.");
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onProgress(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.fragment;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            if (Build.VERSION.SDK_INT < 34 || !specialEffectsController$FragmentStateManagerOperation.fragment.mTransitioning) {
                return;
            }
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
            AndroidSvg animation = animationInfo.getAnimation(context);
            this.animator = animation != null ? (AnimatorSet) animation.renderOptions : null;
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo.fragment;
            Fragment fragment = specialEffectsController$FragmentStateManagerOperation.fragment;
            final boolean z = specialEffectsController$FragmentStateManagerOperation.finalState == SpecialEffectsController$Operation$State.GONE;
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
                        if (z2 || specialEffectsController$FragmentStateManagerOperation2.finalState == SpecialEffectsController$Operation$State.GONE) {
                            SpecialEffectsController$Operation$State specialEffectsController$Operation$State = specialEffectsController$FragmentStateManagerOperation2.finalState;
                            view2.getClass();
                            specialEffectsController$Operation$State.applyState(view2, viewGroup2);
                        }
                        DefaultSpecialEffectsController.AnimatorEffect animatorEffect2 = animatorEffect;
                        ((SpecialEffectsController$FragmentStateManagerOperation) animatorEffect2.animatorInfo.fragment).completeEffect(animatorEffect2);
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        public final long totalDuration(AnimatorSet animatorSet) {
            animatorSet.getClass();
            return animatorSet.getTotalDuration();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TransitionInfo extends BasePreferenceLoader {
    }

    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.container = viewGroup;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    public static final DefaultSpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManagerImpl fragmentManagerImpl) {
        viewGroup.getClass();
        fragmentManagerImpl.getClass();
        fragmentManagerImpl.getSpecialEffectsControllerFactory().getClass();
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
                    if (arrayList2.isEmpty()) {
                        break;
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        SpecialEffectsController$Effect specialEffectsController$Effect = (SpecialEffectsController$Effect) it2.next();
                        specialEffectsController$Effect.getClass();
                        if (!(specialEffectsController$Effect instanceof AnimatorEffect)) {
                            break;
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
                CollectionsKt.addAll(arrayList3, ((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).effects);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public final void applyContainerChangesToOperation$fragment_release(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        specialEffectsController$FragmentStateManagerOperation.getClass();
        if (specialEffectsController$FragmentStateManagerOperation.isAwaitingContainerChanges) {
            specialEffectsController$FragmentStateManagerOperation.finalState.applyState(specialEffectsController$FragmentStateManagerOperation.fragment.requireView(), this.container);
            specialEffectsController$FragmentStateManagerOperation.isAwaitingContainerChanges = false;
        }
    }

    public final void collectEffects(ArrayList arrayList, boolean z) {
        Object obj;
        Object obj2;
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Collecting Effects");
        }
        Iterator it = arrayList.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) obj2;
            SpecialEffectsController$Operation$State.Companion companion = SpecialEffectsController$Operation$State.Companion;
            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            view.getClass();
            companion.getClass();
            SpecialEffectsController$Operation$State asOperationState = SpecialEffectsController$Operation$State.Companion.asOperationState(view);
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
            if (asOperationState == specialEffectsController$Operation$State && specialEffectsController$FragmentStateManagerOperation.finalState != specialEffectsController$Operation$State) {
                break;
            }
        }
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) obj2;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            Object previous = listIterator.previous();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation3 = (SpecialEffectsController$FragmentStateManagerOperation) previous;
            SpecialEffectsController$Operation$State.Companion companion2 = SpecialEffectsController$Operation$State.Companion;
            View view2 = specialEffectsController$FragmentStateManagerOperation3.fragment.mView;
            view2.getClass();
            companion2.getClass();
            SpecialEffectsController$Operation$State asOperationState2 = SpecialEffectsController$Operation$State.Companion.asOperationState(view2);
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.VISIBLE;
            if (asOperationState2 != specialEffectsController$Operation$State2 && specialEffectsController$FragmentStateManagerOperation3.finalState == specialEffectsController$Operation$State2) {
                obj = previous;
                break;
            }
        }
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation4 = (SpecialEffectsController$FragmentStateManagerOperation) obj;
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Executing operations from " + specialEffectsController$FragmentStateManagerOperation2 + " to " + specialEffectsController$FragmentStateManagerOperation4);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Fragment fragment = ((SpecialEffectsController$FragmentStateManagerOperation) CollectionsKt.last((List) arrayList)).fragment;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Fragment.AnimationInfo animationInfo = ((SpecialEffectsController$FragmentStateManagerOperation) it2.next()).fragment.mAnimationInfo;
            Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
            animationInfo.mEnterAnim = animationInfo2.mEnterAnim;
            animationInfo.mExitAnim = animationInfo2.mExitAnim;
            animationInfo.mPopEnterAnim = animationInfo2.mPopEnterAnim;
            animationInfo.mPopExitAnim = animationInfo2.mPopExitAnim;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation5 = (SpecialEffectsController$FragmentStateManagerOperation) it3.next();
            arrayList2.add(new AnimationInfo(specialEffectsController$FragmentStateManagerOperation5, z));
            arrayList3.add(new TransitionInfo(specialEffectsController$FragmentStateManagerOperation5));
            specialEffectsController$FragmentStateManagerOperation5.completionListeners.add(new SpecialEffectsController$$ExternalSyntheticLambda0(this, specialEffectsController$FragmentStateManagerOperation5, 1));
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            Object next = it4.next();
            if (!((TransitionInfo) next).isVisibilityUnchanged()) {
                arrayList4.add(next);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it5 = arrayList4.iterator();
        while (it5.hasNext()) {
            ((TransitionInfo) it5.next()).getClass();
        }
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            ((TransitionInfo) it6.next()).getClass();
        }
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        Iterator it7 = arrayList2.iterator();
        while (it7.hasNext()) {
            CollectionsKt.addAll(arrayList7, ((SpecialEffectsController$FragmentStateManagerOperation) ((AnimationInfo) it7.next()).fragment).effects);
        }
        boolean isEmpty = arrayList7.isEmpty();
        Iterator it8 = arrayList2.iterator();
        boolean z2 = false;
        while (it8.hasNext()) {
            AnimationInfo animationInfo3 = (AnimationInfo) it8.next();
            Context context = this.container.getContext();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation6 = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo3.fragment;
            context.getClass();
            AndroidSvg animation = animationInfo3.getAnimation(context);
            if (animation != null) {
                if (((AnimatorSet) animation.renderOptions) == null) {
                    arrayList6.add(animationInfo3);
                } else {
                    Fragment fragment2 = specialEffectsController$FragmentStateManagerOperation6.fragment;
                    if (specialEffectsController$FragmentStateManagerOperation6.effects.isEmpty()) {
                        if (specialEffectsController$FragmentStateManagerOperation6.finalState == SpecialEffectsController$Operation$State.GONE) {
                            specialEffectsController$FragmentStateManagerOperation6.isAwaitingContainerChanges = false;
                        }
                        specialEffectsController$FragmentStateManagerOperation6._effects.add(new AnimatorEffect(animationInfo3));
                        z2 = true;
                    } else if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Ignoring Animator set on " + fragment2 + " as this Fragment was involved in a Transition.");
                    }
                }
            }
        }
        Iterator it9 = arrayList6.iterator();
        while (it9.hasNext()) {
            AnimationInfo animationInfo4 = (AnimationInfo) it9.next();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation7 = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo4.fragment;
            Fragment fragment3 = specialEffectsController$FragmentStateManagerOperation7.fragment;
            if (isEmpty) {
                if (!z2) {
                    specialEffectsController$FragmentStateManagerOperation7._effects.add(new AnimationEffect(animationInfo4));
                } else if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment3 + " as Animations cannot run alongside Animators.");
                }
            } else if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring Animation set on " + fragment3 + " as Animations cannot run alongside Transitions.");
            }
        }
    }

    public final void commitEffects$fragment_release(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, ((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects);
        }
        List list = CollectionsKt.toList(CollectionsKt.toSet(arrayList2));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((SpecialEffectsController$Effect) list.get(i)).onCommit(this.container);
        }
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            applyContainerChangesToOperation$fragment_release((SpecialEffectsController$FragmentStateManagerOperation) arrayList.get(i2));
        }
        List list2 = CollectionsKt.toList(arrayList);
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) list2.get(i3);
            if (specialEffectsController$FragmentStateManagerOperation.effects.isEmpty()) {
                specialEffectsController$FragmentStateManagerOperation.complete$fragment_release();
            }
        }
    }

    public final void enqueue(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.pendingOperations) {
            try {
                SpecialEffectsController$FragmentStateManagerOperation findPendingOperation = findPendingOperation(fragmentStateManager.mFragment);
                if (findPendingOperation == null) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    if (!fragment.mTransitioning && !fragment.mRemoving) {
                        findPendingOperation = null;
                    }
                    findPendingOperation = findRunningOperation(fragment);
                }
                if (findPendingOperation != null) {
                    findPendingOperation.mergeWith(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact);
                    return;
                }
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = new SpecialEffectsController$FragmentStateManagerOperation(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact, fragmentStateManager);
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
                ArrayList arrayList = new ArrayList(this.runningOperations);
                this.runningOperations.clear();
                Iterator it = arrayList.iterator();
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
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) it2.next();
                    if (this.runningNonSeekableTransition) {
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Completing non-seekable operation " + specialEffectsController$FragmentStateManagerOperation2);
                        }
                        specialEffectsController$FragmentStateManagerOperation2.complete$fragment_release();
                    } else {
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
                    ArrayList arrayList2 = new ArrayList(this.pendingOperations);
                    if (arrayList2.isEmpty()) {
                        return;
                    }
                    this.pendingOperations.clear();
                    this.runningOperations.addAll(arrayList2);
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    collectEffects(arrayList2, this.operationDirectionIsPop);
                    boolean isOperationSeekable = isOperationSeekable(arrayList2);
                    Iterator it3 = arrayList2.iterator();
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
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Operation seekable = " + isOperationSeekable + " \ntransition = " + z2);
                    }
                    if (!z2) {
                        processStart(arrayList2);
                        commitEffects$fragment_release(arrayList2);
                    } else if (isOperationSeekable) {
                        processStart(arrayList2);
                        int size = arrayList2.size();
                        for (int i = 0; i < size; i++) {
                            applyContainerChangesToOperation$fragment_release((SpecialEffectsController$FragmentStateManagerOperation) arrayList2.get(i));
                        }
                    }
                    this.operationDirectionIsPop = false;
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
            if (specialEffectsController$FragmentStateManagerOperation.fragment.equals(fragment) && !specialEffectsController$FragmentStateManagerOperation.isCanceled) {
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
            if (specialEffectsController$FragmentStateManagerOperation.fragment.equals(fragment) && !specialEffectsController$FragmentStateManagerOperation.isCanceled) {
                break;
            }
        }
        return (SpecialEffectsController$FragmentStateManagerOperation) obj;
    }

    public final void forceCompleteAllOperations() {
        String str;
        String str2;
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = this.container.isAttachedToWindow();
        synchronized (this.pendingOperations) {
            try {
                updateFinalState();
                processStart(this.pendingOperations);
                ArrayList arrayList = new ArrayList(this.runningOperations);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((SpecialEffectsController$FragmentStateManagerOperation) it.next()).isSeeking = false;
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) it2.next();
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        if (isAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.container + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + specialEffectsController$FragmentStateManagerOperation);
                    }
                    specialEffectsController$FragmentStateManagerOperation.cancel(this.container);
                }
                ArrayList arrayList2 = new ArrayList(this.pendingOperations);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).isSeeking = false;
                }
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) it4.next();
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
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

    public final void processStart(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) arrayList.get(i);
            FragmentStateManager fragmentStateManager = specialEffectsController$FragmentStateManagerOperation.fragmentStateManager;
            Fragment fragment = fragmentStateManager.mFragment;
            if (!specialEffectsController$FragmentStateManagerOperation.isStarted) {
                specialEffectsController$FragmentStateManagerOperation.isStarted = true;
                SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = specialEffectsController$FragmentStateManagerOperation.lifecycleImpact;
                if (specialEffectsController$Operation$LifecycleImpact == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
                    View findFocus = fragment.mView.findFocus();
                    if (findFocus != null) {
                        fragment.ensureAnimationInfo().mFocusedView = findFocus;
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                        }
                    }
                    View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
                    if (requireView.getParent() == null) {
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Adding fragment " + fragment + " view " + requireView + " to container in onStart");
                        }
                        fragmentStateManager.addViewToContainer();
                        requireView.setAlpha(RecyclerView.DECELERATION_RATE);
                    }
                    if (requireView.getAlpha() == RecyclerView.DECELERATION_RATE && requireView.getVisibility() == 0) {
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Making view " + requireView + " INVISIBLE in onStart");
                        }
                        requireView.setVisibility(4);
                    }
                    Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
                    requireView.setAlpha(animationInfo == null ? 1.0f : animationInfo.mPostOnViewCreatedAlpha);
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        StringBuilder sb = new StringBuilder("Setting view alpha to ");
                        Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                        sb.append(animationInfo2 != null ? animationInfo2.mPostOnViewCreatedAlpha : 1.0f);
                        sb.append(" in onStart");
                        Log.v("FragmentManager", sb.toString());
                    }
                } else if (specialEffectsController$Operation$LifecycleImpact == SpecialEffectsController$Operation$LifecycleImpact.REMOVING) {
                    View requireView2 = fragment.requireView();
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Clearing focus " + requireView2.findFocus() + " on view " + requireView2 + " for Fragment " + fragment);
                    }
                    requireView2.clearFocus();
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, ((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects);
        }
        List list = CollectionsKt.toList(CollectionsKt.toSet(arrayList2));
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            SpecialEffectsController$Effect specialEffectsController$Effect = (SpecialEffectsController$Effect) list.get(i2);
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
            if (specialEffectsController$FragmentStateManagerOperation.lifecycleImpact == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
                View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
                SpecialEffectsController$Operation$State.Companion companion = SpecialEffectsController$Operation$State.Companion;
                int visibility = requireView.getVisibility();
                companion.getClass();
                specialEffectsController$FragmentStateManagerOperation.mergeWith(SpecialEffectsController$Operation$State.Companion.from(visibility), SpecialEffectsController$Operation$LifecycleImpact.NONE);
            }
        }
    }
}
