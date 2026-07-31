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
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.platform.WeakCache;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController {
    public final ViewGroup container;
    public boolean isContainerPostponed;
    public boolean operationDirectionIsPop;
    public final ArrayList pendingOperations;
    public boolean runningNonSeekableTransition;
    public final ArrayList runningOperations;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimationEffect extends SpecialEffectsController$Effect {
        public final AnimationInfo animationInfo;

        public AnimationEffect(AnimationInfo animationInfo) {
            this.animationInfo = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController$Effect
        public final void onCancel(ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animationInfo.response;
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
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo.response;
            if (animationInfo.isVisibilityUnchanged()) {
                specialEffectsController$FragmentStateManagerOperation.completeEffect(this);
                return;
            }
            Context context = viewGroup.getContext();
            final View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            context.getClass();
            WeakCache animation = animationInfo.getAnimation(context);
            if (animation == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            Animation animation2 = (Animation) animation.values;
            if (animation2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
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
                    viewGroup2.post(new Processor$$ExternalSyntheticLambda1(viewGroup2, view, this, 13));
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimationInfo extends DnsQueryResult {
        public WeakCache animation;
        public boolean isAnimLoaded;
        public final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, boolean z) {
            super(specialEffectsController$FragmentStateManagerOperation);
            specialEffectsController$FragmentStateManagerOperation.getClass();
            this.isPop = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0063 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00c0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.compose.ui.platform.WeakCache getAnimation(android.content.Context r9) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.AnimationInfo.getAnimation(android.content.Context):androidx.compose.ui.platform.WeakCache");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.response;
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
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.response;
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
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.animatorInfo.response;
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
            WeakCache animation = animationInfo.getAnimation(context);
            this.animator = animation != null ? (AnimatorSet) animation.referenceQueue : null;
            final SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo.response;
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
                            ViewSizeResolver.CC._applyState(i, view2, viewGroup2);
                        }
                        DefaultSpecialEffectsController.AnimatorEffect animatorEffect2 = animatorEffect;
                        ((SpecialEffectsController$FragmentStateManagerOperation) animatorEffect2.animatorInfo.response).completeEffect(animatorEffect2);
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        public final long totalDuration(AnimatorSet animatorSet) {
            animatorSet.getClass();
            return animatorSet.getTotalDuration();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TransitionInfo extends DnsQueryResult {
    }

    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.container = viewGroup;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
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
                            SpecialEffectsController$Effect specialEffectsController$Effect = (SpecialEffectsController$Effect) it2.next();
                            specialEffectsController$Effect.getClass();
                            if (!(specialEffectsController$Effect instanceof AnimatorEffect)) {
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
                CollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it3.next()).effects, arrayList3);
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
            ViewSizeResolver.CC._applyState(specialEffectsController$FragmentStateManagerOperation.finalState, specialEffectsController$FragmentStateManagerOperation.fragment.requireView(), this.container);
            specialEffectsController$FragmentStateManagerOperation.isAwaitingContainerChanges = false;
        }
    }

    public final void collectEffects(ArrayList arrayList, boolean z) {
        Object obj;
        Object obj2;
        if (FragmentManager.isLoggingEnabled(2)) {
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
            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
            view.getClass();
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility != 0) {
                    if (visibility != 4 && visibility != 8) {
                        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown visibility ", visibility));
                        return;
                    }
                } else if (specialEffectsController$FragmentStateManagerOperation.finalState != 2) {
                    break;
                }
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
            View view2 = specialEffectsController$FragmentStateManagerOperation3.fragment.mView;
            view2.getClass();
            if (view2.getAlpha() != 0.0f || view2.getVisibility() != 0) {
                int visibility2 = view2.getVisibility();
                if (visibility2 == 0) {
                    continue;
                } else if (visibility2 != 4 && visibility2 != 8) {
                    UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown visibility ", visibility2));
                    return;
                }
            }
            if (specialEffectsController$FragmentStateManagerOperation3.finalState == 2) {
                obj = previous;
                break;
            }
        }
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation4 = (SpecialEffectsController$FragmentStateManagerOperation) obj;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Executing operations from " + specialEffectsController$FragmentStateManagerOperation2 + " to " + specialEffectsController$FragmentStateManagerOperation4);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Fragment fragment = ((SpecialEffectsController$FragmentStateManagerOperation) CollectionsKt.last(arrayList)).fragment;
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
        while (true) {
            boolean z2 = false;
            if (!it3.hasNext()) {
                break;
            }
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation5 = (SpecialEffectsController$FragmentStateManagerOperation) it3.next();
            arrayList2.add(new AnimationInfo(specialEffectsController$FragmentStateManagerOperation5, z));
            if (!z ? specialEffectsController$FragmentStateManagerOperation5 == specialEffectsController$FragmentStateManagerOperation4 : specialEffectsController$FragmentStateManagerOperation5 == specialEffectsController$FragmentStateManagerOperation2) {
                z2 = true;
            }
            Fragment fragment2 = specialEffectsController$FragmentStateManagerOperation5.fragment;
            TransitionInfo transitionInfo = new TransitionInfo(specialEffectsController$FragmentStateManagerOperation5);
            if (specialEffectsController$FragmentStateManagerOperation5.finalState == 2) {
                if (z) {
                    Fragment.AnimationInfo animationInfo3 = fragment2.mAnimationInfo;
                } else {
                    fragment2.getClass();
                }
            } else if (z) {
                Fragment.AnimationInfo animationInfo4 = fragment2.mAnimationInfo;
            } else {
                fragment2.getClass();
            }
            if (specialEffectsController$FragmentStateManagerOperation5.finalState == 2) {
                if (z) {
                    Fragment.AnimationInfo animationInfo5 = fragment2.mAnimationInfo;
                } else {
                    Fragment.AnimationInfo animationInfo6 = fragment2.mAnimationInfo;
                }
            }
            if (z2) {
                if (z) {
                    Fragment.AnimationInfo animationInfo7 = fragment2.mAnimationInfo;
                } else {
                    fragment2.getClass();
                }
            }
            arrayList3.add(transitionInfo);
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
            CollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) ((AnimationInfo) it7.next()).response).effects, arrayList7);
        }
        boolean isEmpty = arrayList7.isEmpty();
        Iterator it8 = arrayList2.iterator();
        boolean z3 = false;
        while (it8.hasNext()) {
            AnimationInfo animationInfo8 = (AnimationInfo) it8.next();
            Context context = this.container.getContext();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation6 = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo8.response;
            context.getClass();
            WeakCache animation = animationInfo8.getAnimation(context);
            if (animation != null) {
                if (((AnimatorSet) animation.referenceQueue) == null) {
                    arrayList6.add(animationInfo8);
                } else {
                    Fragment fragment3 = specialEffectsController$FragmentStateManagerOperation6.fragment;
                    if (specialEffectsController$FragmentStateManagerOperation6.effects.isEmpty()) {
                        if (specialEffectsController$FragmentStateManagerOperation6.finalState == 3) {
                            specialEffectsController$FragmentStateManagerOperation6.isAwaitingContainerChanges = false;
                        }
                        specialEffectsController$FragmentStateManagerOperation6._effects.add(new AnimatorEffect(animationInfo8));
                        z3 = true;
                    } else if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Ignoring Animator set on " + fragment3 + " as this Fragment was involved in a Transition.");
                    }
                }
            }
        }
        Iterator it9 = arrayList6.iterator();
        while (it9.hasNext()) {
            AnimationInfo animationInfo9 = (AnimationInfo) it9.next();
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation7 = (SpecialEffectsController$FragmentStateManagerOperation) animationInfo9.response;
            Fragment fragment4 = specialEffectsController$FragmentStateManagerOperation7.fragment;
            if (isEmpty) {
                if (!z3) {
                    specialEffectsController$FragmentStateManagerOperation7._effects.add(new AnimationEffect(animationInfo9));
                } else if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment4 + " as Animations cannot run alongside Animators.");
                }
            } else if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring Animation set on " + fragment4 + " as Animations cannot run alongside Transitions.");
            }
        }
    }

    public final void commitEffects$fragment_release(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects, arrayList);
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
                        fragment.ensureAnimationInfo().mFocusedView = findFocus;
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                        }
                    }
                    View requireView = specialEffectsController$FragmentStateManagerOperation.fragment.requireView();
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
                    Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
                    requireView.setAlpha(animationInfo == null ? 1.0f : animationInfo.mPostOnViewCreatedAlpha);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        StringBuilder sb = new StringBuilder("Setting view alpha to ");
                        Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                        sb.append(animationInfo2 != null ? animationInfo2.mPostOnViewCreatedAlpha : 1.0f);
                        sb.append(" in onStart");
                        Log.v("FragmentManager", sb.toString());
                    }
                } else if (i2 == 3) {
                    Fragment fragment2 = fragmentStateManager.mFragment;
                    fragment2.getClass();
                    View requireView2 = fragment2.requireView();
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
            CollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it.next()).effects, arrayList);
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
                int visibility = specialEffectsController$FragmentStateManagerOperation.fragment.requireView().getVisibility();
                if (visibility != 0) {
                    i = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown visibility ", visibility));
                            return;
                        }
                        i = 3;
                    }
                }
                specialEffectsController$FragmentStateManagerOperation.mergeWith(i, 1);
            }
        }
    }
}
