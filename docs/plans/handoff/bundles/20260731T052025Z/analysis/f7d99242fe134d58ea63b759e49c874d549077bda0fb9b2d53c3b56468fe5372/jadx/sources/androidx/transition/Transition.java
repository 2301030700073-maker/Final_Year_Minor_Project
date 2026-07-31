package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleDelegate;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.datastore.core.Api26Impl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.SafeKeyGenerator$PoolableDigestContainer;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.contacts.ContactImageModelLoader;
import com.fsck.k9.ui.messageview.MessageTopView;
import com.fsck.k9.view.ToolableViewAnimator;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import com.takisoft.datetimepicker.widget.DatePicker;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import javax.net.ssl.SSLSocket;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.mail.EmailAddress;
import okhttp3.Dispatcher;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public ArrayList mEndValuesList;
    public TransitionListener[] mListenersCache;
    public long mSeekOffsetInParent;
    public ArrayList mStartValuesList;
    public long mTotalDuration;
    public static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    public static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    public static final AnonymousClass1 STRAIGHT_PATH_MOTION = new AnonymousClass1();
    public static final ThreadLocal sRunningAnimators = new ThreadLocal();
    public final String mName = getClass().getName();
    public long mStartDelay = -1;
    public long mDuration = -1;
    public TimeInterpolator mInterpolator = null;
    public final ArrayList mTargetIds = new ArrayList();
    public final ArrayList mTargets = new ArrayList();
    public Dispatcher mStartValues = new Dispatcher(17);
    public Dispatcher mEndValues = new Dispatcher(17);
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimationInfo {
        public Animator mAnimator;
        public String mName;
        public Transition mTransition;
        public TransitionValues mValues;
        public View mView;
        public WindowId mWindowId;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class SeekController extends TransitionListenerAdapter {
        public long mCurrentPlayTime;
        public int mOnReady;

        public abstract void ensureAnimation();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TransitionListener {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionEnd$1(Transition transition);

        void onTransitionPause();

        void onTransitionResume();

        void onTransitionStart(Transition transition);

        void onTransitionStart$1(Transition transition);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TransitionNotification {
        public static final DBUtil$$ExternalSyntheticBUOutline0 ON_START = new DBUtil$$ExternalSyntheticBUOutline0(20);
        public static final DBUtil$$ExternalSyntheticBUOutline0 ON_END = new DBUtil$$ExternalSyntheticBUOutline0(21);
        public static final DBUtil$$ExternalSyntheticBUOutline0 ON_CANCEL = new DBUtil$$ExternalSyntheticBUOutline0(22);
        public static final DBUtil$$ExternalSyntheticBUOutline0 ON_PAUSE = new DBUtil$$ExternalSyntheticBUOutline0(23);
        public static final DBUtil$$ExternalSyntheticBUOutline0 ON_RESUME = new DBUtil$$ExternalSyntheticBUOutline0(24);

        void notifyListener(TransitionListener transitionListener, Transition transition, boolean z);
    }

    public static void addViewValues(Dispatcher dispatcher, View view, TransitionValues transitionValues) {
        ArrayMap arrayMap = (ArrayMap) dispatcher.executorServiceOrNull;
        ArrayMap arrayMap2 = (ArrayMap) dispatcher.runningSyncCalls;
        SparseArray sparseArray = (SparseArray) dispatcher.readyAsyncCalls;
        LongSparseArray longSparseArray = (LongSparseArray) dispatcher.runningAsyncCalls;
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
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(transitionListener);
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
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                captureHierarchy(viewGroup.getChildAt(i), z);
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
            ((ArrayMap) this.mStartValues.executorServiceOrNull).clear();
            ((SparseArray) this.mStartValues.readyAsyncCalls).clear();
            ((LongSparseArray) this.mStartValues.runningAsyncCalls).clear();
        } else {
            ((ArrayMap) this.mEndValues.executorServiceOrNull).clear();
            ((SparseArray) this.mEndValues.readyAsyncCalls).clear();
            ((LongSparseArray) this.mEndValues.runningAsyncCalls).clear();
        }
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo819clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList();
            transition.mStartValues = new Dispatcher(17);
            transition.mEndValues = new Dispatcher(17);
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

    public void createAnimators(ViewGroup viewGroup, Dispatcher dispatcher, Dispatcher dispatcher2, ArrayList arrayList, ArrayList arrayList2) {
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
                            TransitionValues transitionValues5 = (TransitionValues) ((ArrayMap) dispatcher2.executorServiceOrNull).get(view);
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
            for (int i2 = 0; i2 < ((LongSparseArray) this.mStartValues.runningAsyncCalls).size(); i2++) {
                View view = (View) ((LongSparseArray) this.mStartValues.runningAsyncCalls).valueAt(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((LongSparseArray) this.mEndValues.runningAsyncCalls).size(); i3++) {
                View view2 = (View) ((LongSparseArray) this.mEndValues.runningAsyncCalls).valueAt(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
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
        return (TransitionValues) ((ArrayMap) (z ? this.mStartValues : this.mEndValues).executorServiceOrNull).get(view);
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
        ArrayList arrayList = this.mTargetIds;
        int size = arrayList.size();
        ArrayList arrayList2 = this.mTargets;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
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
                this.mTotalDuration = Math.max(this.mTotalDuration, Api26Impl.getTotalDuration(animator));
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
            Api26Impl.setCurrentPlayTime(animator, Math.min(Math.max(0L, j), Api26Impl.getTotalDuration(animator)));
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.transition.Transition$3, reason: invalid class name */
    public final class AnonymousClass3 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public AnonymousClass3(ViewPropertyAnimatorListener viewPropertyAnimatorListener, View view) {
            this.$r8$classId = 2;
            this.this$0 = viewPropertyAnimatorListener;
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
                case 2:
                    ((ViewPropertyAnimatorListener) obj).onAnimationCancel();
                    break;
                case 6:
                    super.onAnimationCancel(animator);
                    FocusRingDrawable focusRingDrawable = (FocusRingDrawable) obj;
                    focusRingDrawable.interpolation = 1.0f;
                    focusRingDrawable.invalidateSelf();
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
                    return;
                case 1:
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                    actionBarOverlayLayout.mCurrentActionBarTopAnimator = null;
                    actionBarOverlayLayout.mAnimatingForFling = false;
                    return;
                case 2:
                    ((ViewPropertyAnimatorListener) obj).onAnimationEnd();
                    return;
                case 3:
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = (AnimatedVectorDrawableCompat) obj;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat$AnimationCallback) arrayList.get(i2)).onAnimationEnd(animatedVectorDrawableCompat);
                    }
                    return;
                case 4:
                    animator.getClass();
                    ToolableViewAnimator toolableViewAnimator = ((MessageTopView) obj).viewAnimator;
                    if (toolableViewAnimator != null) {
                        toolableViewAnimator.setDisplayedChild(2);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
                        throw null;
                    }
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.animState = 0;
                    floatingActionButtonImpl.currentAnimator = null;
                    return;
                case 6:
                default:
                    super.onAnimationEnd(animator);
                    return;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                    dropdownMenuEndIconDelegate.refreshIconState();
                    dropdownMenuEndIconDelegate.fadeInAnim.start();
                    return;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    ((ExpandableTransformationBehavior) obj).currentAnimation = null;
                    return;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 2:
                    ((ViewPropertyAnimatorListener) obj).onAnimationStart();
                    break;
                case 3:
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = (AnimatedVectorDrawableCompat) obj;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat$AnimationCallback) arrayList.get(i2)).onAnimationStart(animatedVectorDrawableCompat);
                    }
                    break;
                case 4:
                default:
                    super.onAnimationStart(animator);
                    break;
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.view.internalSetVisibility(0, false);
                    floatingActionButtonImpl.animState = 2;
                    floatingActionButtonImpl.currentAnimator = animator;
                    break;
            }
        }

        public /* synthetic */ AnonymousClass3(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.transition.Transition$2, reason: invalid class name */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ Object val$runningAnimators;

        public AnonymousClass2(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            this.$r8$classId = 1;
            this.val$runningAnimators = windowInsetsAnimationCompat;
            this.this$0 = view;
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
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) obj2;
                    windowInsetsAnimationCompat.mImpl.setFraction(1.0f);
                    WindowInsetsAnimationCompat.Impl21.dispatchOnEnd((View) obj, windowInsetsAnimationCompat);
                    break;
                case 2:
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

    public void capturePropagationValues(TransitionValues transitionValues) {
    }

    public void setEpicenterCallback(DBUtil dBUtil) {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.transition.Transition$1, reason: invalid class name */
    public class AnonymousClass1 implements PlatformLocaleDelegate, CreationExtras.Key, AutoconfigUrlProvider, FactoryPools.Factory, ResourceEncoder, ModelLoaderFactory, DatePicker.ValidationCallback, DeferredSocketAdapter.Factory {
        public /* synthetic */ AnonymousClass1(Object obj) {
        }

        public static Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ContactImageModelLoader(0);
        }

        @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
        public SocketAdapter create(SSLSocket sSLSocket) {
            Class<?> cls = sSLSocket.getClass();
            Class<?> cls2 = cls;
            while (!cls2.getSimpleName().equals("OpenSSLSocketImpl")) {
                cls2 = cls2.getSuperclass();
                if (cls2 == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(cls, "No OpenSSLSocketImpl superclass of socket of type ");
                    return null;
                }
            }
            return new AndroidSocketAdapter(cls2);
        }

        /* renamed from: createDomainUrl-RLGo9vw, reason: not valid java name */
        public HttpUrl m820createDomainUrlRLGo9vw(String str, EmailAddress emailAddress, boolean z) {
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.scheme(z ? "https" : "http");
            builder.host(str);
            builder.addEncodedPathSegments(".well-known/autoconfig/mail/config-v1.1.xml");
            return builder.build();
        }

        /* renamed from: createProviderUrl-RLGo9vw, reason: not valid java name */
        public HttpUrl m821createProviderUrlRLGo9vw(String str, EmailAddress emailAddress, boolean z) {
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.scheme(z ? "https" : "http");
            builder.host("autoconfig.".concat(str));
            builder.addEncodedPathSegments("mail/config-v1.1.xml");
            return builder.build();
        }

        @Override // com.bumptech.glide.load.Encoder
        public boolean encode(Object obj, File file, Options options) {
            try {
                ByteBufferUtil.toFile(((GifFrameLoader) ((GifDrawable) ((Resource) obj).get()).state.frameLoader).gifDecoder.rawData.asReadOnlyBuffer(), file);
                return true;
            } catch (IOException e) {
                if (!Log.isLoggable("GifEncoder", 5)) {
                    return false;
                }
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
                return false;
            }
        }

        @Override // app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider
        /* renamed from: getAutoconfigUrls-s1GoCZM, reason: not valid java name */
        public List mo822getAutoconfigUrlss1GoCZM(String str, EmailAddress emailAddress) {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            createListBuilder.add(m821createProviderUrlRLGo9vw(str, emailAddress, true));
            createListBuilder.add(m820createDomainUrlRLGo9vw(str, emailAddress, true));
            createListBuilder.add(m821createProviderUrlRLGo9vw(str, emailAddress, false));
            createListBuilder.add(m820createDomainUrlRLGo9vw(str, emailAddress, false));
            return IntOffsetKt.build(createListBuilder);
        }

        @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
        public LocaleList getCurrent() {
            return new LocaleList(IntOffsetKt.listOf(new Locale(java.util.Locale.getDefault())));
        }

        @Override // com.bumptech.glide.load.ResourceEncoder
        public int getEncodeStrategy(Options options) {
            return 1;
        }

        @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
        public boolean matchesSocket(SSLSocket sSLSocket) {
            return StringsKt__StringsJVMKt.startsWith(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public Object create() {
            try {
                return new SafeKeyGenerator$PoolableDigestContainer(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
    }

    public final String toString() {
        return toString("");
    }
}
