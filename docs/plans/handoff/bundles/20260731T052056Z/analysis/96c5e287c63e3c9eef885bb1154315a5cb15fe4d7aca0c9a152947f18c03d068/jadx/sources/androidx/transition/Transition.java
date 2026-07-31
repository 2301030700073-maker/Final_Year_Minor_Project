package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.app.Application;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Path;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec;
import androidx.compose.ui.Modifier;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import coil3.ImageLoader$Builder;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.BaseMotionStrategy;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBottomContainerBackHelper;
import com.google.android.material.progressindicator.LinearIndeterminateContiguousAnimatorDelegate;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import com.google.gson.internal.ObjectConstructor;
import com.hcaptcha.sdk.HCaptchaDialogFragment;
import com.skydoves.balloon.Balloon$$ExternalSyntheticLambda3;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import kotlin.UnsignedKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeFlexibility;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawProjectionComputer$WhenMappings;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.location.MapLibreAnimator;
import org.maplibre.android.maps.MapGestureDetector;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public ArrayList mEndValuesList;
    public TransitionListener[] mListenersCache;
    public long mSeekOffsetInParent;
    public ArrayList mStartValuesList;
    public long mTotalDuration;
    public static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    public static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    public static final AnonymousClass1 STRAIGHT_PATH_MOTION = new AnonymousClass1(0, false);
    public static final ThreadLocal sRunningAnimators = new ThreadLocal();
    public final String mName = getClass().getName();
    public long mStartDelay = -1;
    public long mDuration = -1;
    public TimeInterpolator mInterpolator = null;
    public final ArrayList mTargetIds = new ArrayList();
    public final ArrayList mTargets = new ArrayList();
    public ArrayList mTargetTypeExcludes = null;
    public ImageLoader$Builder mStartValues = new ImageLoader$Builder(15);
    public ImageLoader$Builder mEndValues = new ImageLoader$Builder(15);
    public AutoTransition mParent = null;
    public final int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    public final ArrayList mCurrentAnimators = new ArrayList();
    public Animator[] mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
    public int mNumInstances = 0;
    public boolean mPaused = false;
    public boolean mEnded = false;
    public Transition mCloneParent = null;
    public ArrayList mListeners = null;
    public ArrayList mAnimators = new ArrayList();
    public AnonymousClass1 mPathMotion = STRAIGHT_PATH_MOTION;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.transition.Transition$3, reason: invalid class name */
    public final class AnonymousClass3 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass3(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 1:
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                    actionBarOverlayLayout.mCurrentActionBarTopAnimator = null;
                    actionBarOverlayLayout.mAnimatingForFling = false;
                    break;
                case 4:
                    ((BaseMotionStrategy) obj).onAnimationCancel();
                    break;
                case 6:
                    super.onAnimationCancel(animator);
                    FocusRingDrawable focusRingDrawable = (FocusRingDrawable) obj;
                    focusRingDrawable.interpolation = 1.0f;
                    focusRingDrawable.invalidateSelf();
                    break;
                case 15:
                    ((MapGestureDetector) obj).transform.cancelTransitions();
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    ((MapGestureDetector.RotateGestureListener) obj).this$0.transform.cancelTransitions();
                    break;
                default:
                    super.onAnimationCancel(animator);
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((Transition) obj).end();
                    animator.removeListener(this);
                    break;
                case 1:
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                    actionBarOverlayLayout.mCurrentActionBarTopAnimator = null;
                    actionBarOverlayLayout.mAnimatingForFling = false;
                    break;
                case 2:
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = (AnimatedVectorDrawableCompat) obj;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat$AnimationCallback) arrayList.get(i2)).onAnimationEnd(animatedVectorDrawableCompat);
                    }
                    break;
                case 3:
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj;
                    bottomSheetBehavior.setStateInternal(5);
                    WeakReference weakReference = bottomSheetBehavior.viewRef;
                    if (weakReference != null && weakReference.get() != null) {
                        ((View) bottomSheetBehavior.viewRef.get()).requestLayout();
                        break;
                    }
                    break;
                case 4:
                    ((BaseMotionStrategy) obj).onAnimationEnd();
                    break;
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.animState = 0;
                    floatingActionButtonImpl.currentAnimator = null;
                    break;
                case 6:
                case 8:
                default:
                    super.onAnimationEnd(animator);
                    break;
                case 7:
                    MaterialBottomContainerBackHelper materialBottomContainerBackHelper = (MaterialBottomContainerBackHelper) obj;
                    materialBottomContainerBackHelper.view.setTranslationY(RecyclerView.DECELERATION_RATE);
                    materialBottomContainerBackHelper.updateBackProgress(RecyclerView.DECELERATION_RATE);
                    break;
                case 9:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                    sideSheetBehavior.setStateInternal(5);
                    WeakReference weakReference2 = sideSheetBehavior.viewRef;
                    if (weakReference2 != null && weakReference2.get() != null) {
                        ((View) sideSheetBehavior.viewRef.get()).requestLayout();
                        break;
                    }
                    break;
                case 10:
                    DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                    dropdownMenuEndIconDelegate.refreshIconState();
                    dropdownMenuEndIconDelegate.fadeInAnim.start();
                    break;
                case 11:
                    ((ExpandableTransformationBehavior) obj).currentAnimation = null;
                    break;
                case 12:
                    LinearLayout linearLayout = ((HCaptchaDialogFragment) obj).loadingContainer;
                    if (linearLayout != null) {
                        linearLayout.setVisibility(8);
                        break;
                    }
                    break;
                case IMAGE_VALUE:
                    animator.getClass();
                    super.onAnimationEnd(animator);
                    ((Balloon$$ExternalSyntheticLambda3) obj).invoke();
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    MapLibreAnimator mapLibreAnimator = (MapLibreAnimator) obj;
                    if (!mapLibreAnimator.invalid) {
                        mapLibreAnimator.updateListener.onNewAnimationValue(mapLibreAnimator.animatedValue);
                        break;
                    }
                    break;
                case 15:
                    ((MapGestureDetector) obj).dispatchCameraIdle();
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    ((MapGestureDetector.RotateGestureListener) obj).this$0.dispatchCameraIdle();
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            switch (this.$r8$classId) {
                case 8:
                    super.onAnimationRepeat(animator);
                    LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate = (LinearIndeterminateContiguousAnimatorDelegate) this.this$0;
                    linearIndeterminateContiguousAnimatorDelegate.newIndicatorColorIndex = (linearIndeterminateContiguousAnimatorDelegate.newIndicatorColorIndex + 1) % linearIndeterminateContiguousAnimatorDelegate.baseSpec.indicatorColors.length;
                    linearIndeterminateContiguousAnimatorDelegate.dirtyColors = true;
                    break;
                default:
                    super.onAnimationRepeat(animator);
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 2:
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = (AnimatedVectorDrawableCompat) obj;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat$AnimationCallback) arrayList.get(i2)).onAnimationStart(animatedVectorDrawableCompat);
                    }
                    break;
                case 4:
                    ((BaseMotionStrategy) obj).onAnimationStart(animator);
                    break;
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.view.internalSetVisibility(0, false);
                    floatingActionButtonImpl.animState = 2;
                    floatingActionButtonImpl.currentAnimator = animator;
                    break;
                case 15:
                    MapGestureDetector mapGestureDetector = (MapGestureDetector) obj;
                    mapGestureDetector.transform.cancelTransitions();
                    mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    MapGestureDetector.RotateGestureListener rotateGestureListener = (MapGestureDetector.RotateGestureListener) obj;
                    rotateGestureListener.this$0.transform.cancelTransitions();
                    rotateGestureListener.this$0.cameraChangeDispatcher.onCameraMoveStarted(1);
                    break;
                default:
                    super.onAnimationStart(animator);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AnimationInfo {
        public Animator mAnimator;
        public String mName;
        public Transition mTransition;
        public TransitionValues mValues;
        public View mView;
        public WindowId mWindowId;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SeekController extends TransitionListenerAdapter {
        public long mCurrentPlayTime;
        public int mOnReady;

        public abstract void ensureAnimation();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface TransitionListener {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionEnd$1(Transition transition);

        void onTransitionPause();

        void onTransitionResume();

        void onTransitionStart(Transition transition);

        void onTransitionStart$1(Transition transition);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface TransitionNotification {
        public static final ContextsKt$$ExternalSyntheticBUOutline0 ON_START = new ContextsKt$$ExternalSyntheticBUOutline0(7);
        public static final ContextsKt$$ExternalSyntheticBUOutline0 ON_END = new ContextsKt$$ExternalSyntheticBUOutline0(8);
        public static final ContextsKt$$ExternalSyntheticBUOutline0 ON_CANCEL = new ContextsKt$$ExternalSyntheticBUOutline0(9);
        public static final ContextsKt$$ExternalSyntheticBUOutline0 ON_PAUSE = new ContextsKt$$ExternalSyntheticBUOutline0(10);
        public static final ContextsKt$$ExternalSyntheticBUOutline0 ON_RESUME = new ContextsKt$$ExternalSyntheticBUOutline0(11);

        void notifyListener(TransitionListener transitionListener, Transition transition, boolean z);
    }

    public static void addViewValues(ImageLoader$Builder imageLoader$Builder, View view, TransitionValues transitionValues) {
        ArrayMap arrayMap = (ArrayMap) imageLoader$Builder.application;
        ArrayMap arrayMap2 = (ArrayMap) imageLoader$Builder.extras;
        SparseArray sparseArray = (SparseArray) imageLoader$Builder.defaults;
        LongSparseArray longSparseArray = (LongSparseArray) imageLoader$Builder.componentRegistry;
        arrayMap.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (arrayMap2.containsKey(transitionName)) {
                arrayMap2.put(transitionName, null);
            } else {
                arrayMap2.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (longSparseArray.indexOfKey(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    longSparseArray.put(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) longSparseArray.get(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    longSparseArray.put(itemIdAtPosition, null);
                }
            }
        }
    }

    public static ArrayMap getRunningAnimators() {
        ThreadLocal threadLocal = sRunningAnimators;
        ArrayMap arrayMap = (ArrayMap) threadLocal.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap(0);
        threadLocal.set(arrayMap2);
        return arrayMap2;
    }

    public static boolean isValueChanged(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void addListener(TransitionListener transitionListener) {
        ArrayList arrayList = this.mListeners;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.mListeners = arrayList;
        }
        arrayList.add(transitionListener);
    }

    public void cancel() {
        ArrayList arrayList = this.mCurrentAnimators;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.mAnimatorCache = animatorArr;
        notifyFromTransition(this, TransitionNotification.ON_CANCEL, false);
    }

    public abstract void captureEndValues(TransitionValues transitionValues);

    public final void captureHierarchy(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        ArrayList arrayList = this.mTargetTypeExcludes;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((Class) this.mTargetTypeExcludes.get(i)).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            TransitionValues transitionValues = new TransitionValues(view);
            if (z) {
                captureStartValues(transitionValues);
            } else {
                captureEndValues(transitionValues);
            }
            transitionValues.mTargetedTransitions.add(this);
            capturePropagationValues(transitionValues);
            if (z) {
                addViewValues(this.mStartValues, view, transitionValues);
            } else {
                addViewValues(this.mEndValues, view, transitionValues);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                captureHierarchy(viewGroup.getChildAt(i2), z);
            }
        }
    }

    public abstract void captureStartValues(TransitionValues transitionValues);

    public final void captureValues(ViewGroup viewGroup, boolean z) {
        clearValues(z);
        ArrayList arrayList = this.mTargetIds;
        int size = arrayList.size();
        ArrayList arrayList2 = this.mTargets;
        if (size <= 0 && arrayList2.size() <= 0) {
            captureHierarchy(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                TransitionValues transitionValues = new TransitionValues(findViewById);
                if (z) {
                    captureStartValues(transitionValues);
                } else {
                    captureEndValues(transitionValues);
                }
                transitionValues.mTargetedTransitions.add(this);
                capturePropagationValues(transitionValues);
                if (z) {
                    addViewValues(this.mStartValues, findViewById, transitionValues);
                } else {
                    addViewValues(this.mEndValues, findViewById, transitionValues);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            TransitionValues transitionValues2 = new TransitionValues(view);
            if (z) {
                captureStartValues(transitionValues2);
            } else {
                captureEndValues(transitionValues2);
            }
            transitionValues2.mTargetedTransitions.add(this);
            capturePropagationValues(transitionValues2);
            if (z) {
                addViewValues(this.mStartValues, view, transitionValues2);
            } else {
                addViewValues(this.mEndValues, view, transitionValues2);
            }
        }
    }

    public final void clearValues(boolean z) {
        if (z) {
            ((ArrayMap) this.mStartValues.application).clear();
            ((SparseArray) this.mStartValues.defaults).clear();
            ((LongSparseArray) this.mStartValues.componentRegistry).clear();
        } else {
            ((ArrayMap) this.mEndValues.application).clear();
            ((SparseArray) this.mEndValues.defaults).clear();
            ((LongSparseArray) this.mEndValues.componentRegistry).clear();
        }
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo762clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList();
            transition.mStartValues = new ImageLoader$Builder(15);
            transition.mEndValues = new ImageLoader$Builder(15);
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            transition.mCloneParent = this;
            transition.mListeners = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public void createAnimators(ViewGroup viewGroup, ImageLoader$Builder imageLoader$Builder, ImageLoader$Builder imageLoader$Builder2, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int i2;
        View view;
        TransitionValues transitionValues;
        Animator animator;
        TransitionValues transitionValues2;
        ArrayMap runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        getRootTransition().getClass();
        int i3 = 0;
        while (i3 < size) {
            TransitionValues transitionValues3 = (TransitionValues) arrayList.get(i3);
            TransitionValues transitionValues4 = (TransitionValues) arrayList2.get(i3);
            if (transitionValues3 != null && !transitionValues3.mTargetedTransitions.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.mTargetedTransitions.contains(this)) {
                transitionValues4 = null;
            }
            if ((transitionValues3 != null || transitionValues4 != null) && (transitionValues3 == null || transitionValues4 == null || isTransitionRequired(transitionValues3, transitionValues4))) {
                Animator createAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4);
                if (createAnimator != null) {
                    String str = this.mName;
                    if (transitionValues4 != null) {
                        view = transitionValues4.view;
                        String[] transitionProperties = getTransitionProperties();
                        if (transitionProperties != null && transitionProperties.length > 0) {
                            transitionValues2 = new TransitionValues(view);
                            TransitionValues transitionValues5 = (TransitionValues) ((ArrayMap) imageLoader$Builder2.application).get(view);
                            i = size;
                            if (transitionValues5 != null) {
                                int i4 = 0;
                                while (i4 < transitionProperties.length) {
                                    String str2 = transitionProperties[i4];
                                    transitionValues2.values.put(str2, transitionValues5.values.get(str2));
                                    i4++;
                                    i3 = i3;
                                    transitionValues5 = transitionValues5;
                                }
                            }
                            i2 = i3;
                            int i5 = runningAnimators.size;
                            int i6 = 0;
                            while (true) {
                                if (i6 >= i5) {
                                    animator = createAnimator;
                                    break;
                                }
                                AnimationInfo animationInfo = (AnimationInfo) runningAnimators.get((Animator) runningAnimators.keyAt(i6));
                                if (animationInfo.mValues != null && animationInfo.mView == view && animationInfo.mName.equals(str) && animationInfo.mValues.equals(transitionValues2)) {
                                    animator = null;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator = createAnimator;
                            transitionValues2 = null;
                        }
                        createAnimator = animator;
                        transitionValues = transitionValues2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = transitionValues3.view;
                        transitionValues = null;
                    }
                    if (createAnimator != null) {
                        WindowId windowId = viewGroup.getWindowId();
                        AnimationInfo animationInfo2 = new AnimationInfo();
                        animationInfo2.mView = view;
                        animationInfo2.mName = str;
                        animationInfo2.mValues = transitionValues;
                        animationInfo2.mWindowId = windowId;
                        animationInfo2.mTransition = this;
                        animationInfo2.mAnimator = createAnimator;
                        runningAnimators.put(createAnimator, animationInfo2);
                        this.mAnimators.add(createAnimator);
                    }
                    i3 = i2 + 1;
                    size = i;
                }
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                AnimationInfo animationInfo3 = (AnimationInfo) runningAnimators.get((Animator) this.mAnimators.get(sparseIntArray.keyAt(i7)));
                animationInfo3.mAnimator.setStartDelay(animationInfo3.mAnimator.getStartDelay() + (sparseIntArray.valueAt(i7) - Long.MAX_VALUE));
            }
        }
    }

    public final void end() {
        int i = this.mNumInstances - 1;
        this.mNumInstances = i;
        if (i == 0) {
            notifyFromTransition(this, TransitionNotification.ON_END, false);
            for (int i2 = 0; i2 < ((LongSparseArray) this.mStartValues.componentRegistry).size(); i2++) {
                View view = (View) ((LongSparseArray) this.mStartValues.componentRegistry).valueAt(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((LongSparseArray) this.mEndValues.componentRegistry).size(); i3++) {
                View view2 = (View) ((LongSparseArray) this.mEndValues.componentRegistry).valueAt(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    public void excludeTarget() {
        ArrayList arrayList = this.mTargetTypeExcludes;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (!arrayList.contains(TextView.class)) {
            arrayList.add(TextView.class);
        }
        this.mTargetTypeExcludes = arrayList;
    }

    public final TransitionValues getMatchedTransitionValues(View view, boolean z) {
        AutoTransition autoTransition = this.mParent;
        if (autoTransition != null) {
            return autoTransition.getMatchedTransitionValues(view, z);
        }
        ArrayList arrayList = z ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            TransitionValues transitionValues = (TransitionValues) arrayList.get(i);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (TransitionValues) (z ? this.mEndValuesList : this.mStartValuesList).get(i);
        }
        return null;
    }

    public final Transition getRootTransition() {
        AutoTransition autoTransition = this.mParent;
        return autoTransition != null ? autoTransition.getRootTransition() : this;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public final TransitionValues getTransitionValues(View view, boolean z) {
        AutoTransition autoTransition = this.mParent;
        if (autoTransition != null) {
            return autoTransition.getTransitionValues(view, z);
        }
        return (TransitionValues) ((ArrayMap) (z ? this.mStartValues : this.mEndValues).application).get(view);
    }

    public boolean hasAnimators() {
        return !this.mCurrentAnimators.isEmpty();
    }

    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            String[] transitionProperties = getTransitionProperties();
            if (transitionProperties != null) {
                for (String str : transitionProperties) {
                    if (isValueChanged(transitionValues, transitionValues2, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = transitionValues.values.keySet().iterator();
                while (it.hasNext()) {
                    if (isValueChanged(transitionValues, transitionValues2, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isValidTarget(View view) {
        int id = view.getId();
        ArrayList arrayList = this.mTargetTypeExcludes;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((Class) this.mTargetTypeExcludes.get(i)).isInstance(view)) {
                    return false;
                }
            }
        }
        ArrayList arrayList2 = this.mTargetIds;
        int size2 = arrayList2.size();
        ArrayList arrayList3 = this.mTargets;
        return (size2 == 0 && arrayList3.size() == 0) || arrayList2.contains(Integer.valueOf(id)) || arrayList3.contains(view);
    }

    public final void notifyFromTransition(Transition transition, TransitionNotification transitionNotification, boolean z) {
        Transition transition2 = this.mCloneParent;
        if (transition2 != null) {
            transition2.notifyFromTransition(transition, transitionNotification, z);
        }
        ArrayList arrayList = this.mListeners;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.mListeners.size();
        TransitionListener[] transitionListenerArr = this.mListenersCache;
        if (transitionListenerArr == null) {
            transitionListenerArr = new TransitionListener[size];
        }
        this.mListenersCache = null;
        TransitionListener[] transitionListenerArr2 = (TransitionListener[]) this.mListeners.toArray(transitionListenerArr);
        for (int i = 0; i < size; i++) {
            transitionNotification.notifyListener(transitionListenerArr2[i], transition, z);
            transitionListenerArr2[i] = null;
        }
        this.mListenersCache = transitionListenerArr2;
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        ArrayList arrayList = this.mCurrentAnimators;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.mAnimatorCache = animatorArr;
        notifyFromTransition(this, TransitionNotification.ON_PAUSE, false);
        this.mPaused = true;
    }

    public void prepareAnimatorsForSeeking() {
        ArrayMap runningAnimators = getRunningAnimators();
        this.mTotalDuration = 0L;
        int i = 0;
        while (true) {
            int size = this.mAnimators.size();
            ArrayList arrayList = this.mAnimators;
            if (i >= size) {
                arrayList.clear();
                return;
            }
            Animator animator = (Animator) arrayList.get(i);
            AnimationInfo animationInfo = (AnimationInfo) runningAnimators.get(animator);
            if (animator != null && animationInfo != null) {
                Animator animator2 = animationInfo.mAnimator;
                long j = this.mDuration;
                if (j >= 0) {
                    animator2.setDuration(j);
                }
                long j2 = this.mStartDelay;
                if (j2 >= 0) {
                    animator2.setStartDelay(animator2.getStartDelay() + j2);
                }
                TimeInterpolator timeInterpolator = this.mInterpolator;
                if (timeInterpolator != null) {
                    animator2.setInterpolator(timeInterpolator);
                }
                this.mCurrentAnimators.add(animator);
                this.mTotalDuration = Math.max(this.mTotalDuration, BitmapsKt.getTotalDuration(animator));
            }
            i++;
        }
    }

    public Transition removeListener(TransitionListener transitionListener) {
        Transition transition;
        ArrayList arrayList = this.mListeners;
        if (arrayList != null) {
            if (!arrayList.remove(transitionListener) && (transition = this.mCloneParent) != null) {
                transition.removeListener(transitionListener);
            }
            if (this.mListeners.size() == 0) {
                this.mListeners = null;
            }
        }
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                ArrayList arrayList = this.mCurrentAnimators;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.mAnimatorCache);
                this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.mAnimatorCache = animatorArr;
                notifyFromTransition(this, TransitionNotification.ON_RESUME, false);
            }
            this.mPaused = false;
        }
    }

    public void runAnimators() {
        start();
        ArrayMap runningAnimators = getRunningAnimators();
        Iterator it = this.mAnimators.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (runningAnimators.containsKey(animator)) {
                start();
                if (animator != null) {
                    int i = 0;
                    animator.addListener(new AnonymousClass2(i, this, runningAnimators));
                    long j = this.mDuration;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.mStartDelay;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.mInterpolator;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new AnonymousClass3(i, this));
                    animator.start();
                }
            }
        }
        this.mAnimators.clear();
        end();
    }

    public void setCurrentPlayTimeMillis(long j, long j2) {
        long j3 = this.mTotalDuration;
        int i = 0;
        boolean z = j < j2;
        if ((j2 < 0 && j >= 0) || (j2 > j3 && j <= j3)) {
            this.mEnded = false;
            notifyFromTransition(this, TransitionNotification.ON_START, z);
        }
        ArrayList arrayList = this.mCurrentAnimators;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        while (i < size) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            BitmapsKt.setCurrentPlayTime(animator, Math.min(Math.max(0L, j), BitmapsKt.getTotalDuration(animator)));
            i++;
            j3 = j3;
        }
        long j4 = j3;
        this.mAnimatorCache = animatorArr;
        if ((j <= j4 || j2 > j4) && (j >= 0 || j2 < 0)) {
            return;
        }
        if (j > j4) {
            this.mEnded = true;
        }
        notifyFromTransition(this, TransitionNotification.ON_END, z);
    }

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
    }

    public void setPathMotion(AnonymousClass1 anonymousClass1) {
        if (anonymousClass1 == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = anonymousClass1;
        }
    }

    public void setStartDelay(long j) {
        this.mStartDelay = j;
    }

    public final void start() {
        if (this.mNumInstances == 0) {
            notifyFromTransition(this, TransitionNotification.ON_START, false);
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.mDuration != -1) {
            sb.append("dur(");
            sb.append(this.mDuration);
            sb.append(") ");
        }
        if (this.mStartDelay != -1) {
            sb.append("dly(");
            sb.append(this.mStartDelay);
            sb.append(") ");
        }
        if (this.mInterpolator != null) {
            sb.append("interp(");
            sb.append(this.mInterpolator);
            sb.append(") ");
        }
        ArrayList arrayList = this.mTargetIds;
        int size = arrayList.size();
        ArrayList arrayList2 = this.mTargets;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.transition.Transition$2, reason: invalid class name */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ Object val$runningAnimators;

        public /* synthetic */ AnonymousClass2(int i, View view, Object obj) {
            this.$r8$classId = i;
            this.val$runningAnimators = obj;
            this.this$0 = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            switch (this.$r8$classId) {
                case 1:
                    ((ViewPropertyAnimatorListener) this.val$runningAnimators).onAnimationCancel();
                    break;
                default:
                    super.onAnimationCancel(animator);
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            Object obj2 = this.val$runningAnimators;
            switch (i) {
                case 0:
                    ((ArrayMap) obj2).remove(animator);
                    ((Transition) obj).mCurrentAnimators.remove(animator);
                    break;
                case 1:
                    ((ViewPropertyAnimatorListener) obj2).onAnimationEnd();
                    break;
                case 2:
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) obj2;
                    windowInsetsAnimationCompat.mImpl.setFraction(1.0f);
                    WindowInsetsAnimationCompat.Impl21.dispatchOnEnd((View) obj, windowInsetsAnimationCompat);
                    break;
                case 3:
                    View view = (View) obj2;
                    HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) obj;
                    hideBottomViewOnScrollBehavior.currentAnimator = null;
                    if (hideBottomViewOnScrollBehavior.currentState == 1 && view.getVisibility() == 0) {
                        view.setVisibility(4);
                        break;
                    }
                    break;
                default:
                    View view2 = (View) obj2;
                    HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) obj;
                    hideViewOnScrollBehavior.currentAnimator = null;
                    if (hideViewOnScrollBehavior.currentState == 1 && view2.getVisibility() == 0) {
                        view2.setVisibility(4);
                        break;
                    }
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            switch (this.$r8$classId) {
                case 0:
                    ((Transition) this.this$0).mCurrentAnimators.add(animator);
                    break;
                case 1:
                    ((ViewPropertyAnimatorListener) this.val$runningAnimators).onAnimationStart();
                    break;
                default:
                    super.onAnimationStart(animator);
                    break;
            }
        }

        public /* synthetic */ AnonymousClass2(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$runningAnimators = obj2;
        }
    }

    public void setPropagation() {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.transition.Transition$1, reason: invalid class name */
    public class AnonymousClass1 implements VectorizedDurationBasedAnimationSpec, Internal.EnumLiteMap, CreationExtras.Key, Preference.SummaryProvider, StableIdStorage.StableIdLookup, CoroutineContext.Key, ViewUtils.OnApplyWindowInsetsListener, ObjectConstructor, Internal.EnumLiteMap {
        public static AnonymousClass1 sSimpleSummaryProvider;
        public final /* synthetic */ int $r8$classId;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case RADIO_ROW_VALUE:
                    new ArraySet(0);
                    new HashMap();
                    break;
                default:
                    new LruCache(16);
                    long[] jArr = ScatterMapKt.EmptyGroup;
                    new MutableScatterMap();
                    break;
            }
        }

        public static TypeProjectionBase computeProjection(TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes, FormBody.Builder builder, KotlinType kotlinType) {
            javaTypeAttributes.getClass();
            if (!javaTypeAttributes.isRaw) {
                javaTypeAttributes = javaTypeAttributes.withFlexibility(JavaTypeFlexibility.INFLEXIBLE);
            }
            int i = RawProjectionComputer$WhenMappings.$EnumSwitchMapping$0[javaTypeAttributes.flexibility.ordinal()];
            if (i == 1) {
                return new StarProjectionImpl(kotlinType, Variance.INVARIANT);
            }
            if (i != 2 && i != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            if (!typeParameterDescriptor.getVariance().getAllowsOutPosition()) {
                return new StarProjectionImpl(DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor).getNothingType(), Variance.INVARIANT);
            }
            List parameters = kotlinType.getConstructor().getParameters();
            parameters.getClass();
            return !parameters.isEmpty() ? new StarProjectionImpl(kotlinType, Variance.OUT_VARIANCE) : TypeUtils.makeStarProjection(typeParameterDescriptor, javaTypeAttributes);
        }

        public static Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }

        public static InputStream loadResource(String str) {
            ClassLoader classLoader = AnonymousClass1.class.getClassLoader();
            if (classLoader == null) {
                return ClassLoader.getSystemResourceAsStream(str);
            }
            URL resource = classLoader.getResource(str);
            if (resource == null) {
                return null;
            }
            URLConnection openConnection = resource.openConnection();
            openConnection.setUseCaches(false);
            return openConnection.getInputStream();
        }

        public float calculateScaleY(float f) {
            return 1.0f;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public Object construct() {
            switch (this.$r8$classId) {
                case 24:
                    return new LinkedHashSet();
                case 25:
                    return new ConcurrentSkipListMap();
                default:
                    return new LinkedHashMap();
            }
        }

        @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
        public int getDelayMillis() {
            return 0;
        }

        @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
        public int getDurationMillis() {
            return 0;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return 0L;
        }

        public Signature[] getSigningSignatures(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return j < 0 ? animationVector : animationVector2;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public boolean isInfinite() {
            return false;
        }

        public boolean isPrecomputedText(CharSequence charSequence) {
            return false;
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
            relativePadding.bottom = windowInsetsCompat.getSystemWindowInsetBottom() + relativePadding.bottom;
            boolean z = view.getLayoutDirection() == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            int i = relativePadding.start + (z ? systemWindowInsetRight : systemWindowInsetLeft);
            relativePadding.start = i;
            int i2 = relativePadding.end;
            if (!z) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            int i3 = i2 + systemWindowInsetLeft;
            relativePadding.end = i3;
            view.setPaddingRelative(i, relativePadding.top, i3, relativePadding.bottom);
            return windowInsetsCompat;
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(Preference preference) {
            CharSequence[] charSequenceArr;
            CharSequence[] charSequenceArr2;
            ListPreference listPreference = (ListPreference) preference;
            int findIndexOfValue = listPreference.findIndexOfValue(listPreference.mValue);
            if (TextUtils.isEmpty((findIndexOfValue < 0 || (charSequenceArr2 = listPreference.mEntries) == null) ? null : charSequenceArr2[findIndexOfValue])) {
                return listPreference.mContext.getString(R.string.not_set);
            }
            int findIndexOfValue2 = listPreference.findIndexOfValue(listPreference.mValue);
            if (findIndexOfValue2 < 0 || (charSequenceArr = listPreference.mEntries) == null) {
                return null;
            }
            return charSequenceArr[findIndexOfValue2];
        }

        public String toString() {
            switch (this.$r8$classId) {
                case IMAGE_VALUE:
                    int hashCode = hashCode();
                    UtilsKt.checkRadix(16);
                    String num = Integer.toString(hashCode, 16);
                    num.getClass();
                    return Modifier.CC.m("CreationExtras.Key@", num, "<", Reflection.factory.getOrCreateKotlinClass(SavedStateRegistryOwner.class).getSimpleName(), ">");
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    int hashCode2 = hashCode();
                    UtilsKt.checkRadix(16);
                    String num2 = Integer.toString(hashCode2, 16);
                    num2.getClass();
                    return Modifier.CC.m("CreationExtras.Key@", num2, "<", Reflection.factory.getOrCreateKotlinClass(Application.class).getSimpleName(), ">");
                default:
                    return super.toString();
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
        public long localToGlobal(long j) {
            return j;
        }

        public /* synthetic */ AnonymousClass1(int i, boolean z) {
            this.$r8$classId = i;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return animationVector3;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return animationVector3;
        }
    }

    public void capturePropagationValues(TransitionValues transitionValues) {
    }

    public void setEpicenterCallback(UnsignedKt unsignedKt) {
    }

    public final String toString() {
        return toString("");
    }
}
