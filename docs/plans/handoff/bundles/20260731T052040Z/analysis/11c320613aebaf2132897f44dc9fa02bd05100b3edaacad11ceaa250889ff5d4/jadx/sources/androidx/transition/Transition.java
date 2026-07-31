package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.PlatformTypefaces;
import androidx.core.content.FileProvider;
import androidx.core.view.DisplayCompat;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.UriKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.StaticImageDecoderKt;
import coil3.disk.DiskLruCache;
import coil3.disk.RealDiskCache;
import coil3.memory.MemoryCache$Key;
import coil3.memory.MemoryCache$Value;
import com.google.android.exoplayer2.C;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.motion.MaterialBottomContainerBackHelper;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import com.grack.nanojson.JsonParser;
import io.reactivex.rxjava3.functions.Action;
import j$.io.FileRetargetClass;
import j$.nio.file.Files;
import j$.nio.file.OpenOption;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.player.helper.AudioReactor;
import org.schabi.newpipe.player.ui.PopupPlayerUi;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public ArrayList mEndValuesList;
    public AppKt mEpicenterCallback;
    public TransitionListener[] mListenersCache;
    public SeekController mSeekController;
    public long mSeekOffsetInParent;
    public ArrayList mStartValuesList;
    public long mTotalDuration;
    public static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    public static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    public static final AnonymousClass1 STRAIGHT_PATH_MOTION = new AnonymousClass1(0);
    public static final ThreadLocal sRunningAnimators = new ThreadLocal();
    public final String mName = getClass().getName();
    public long mStartDelay = -1;
    public long mDuration = -1;
    public TimeInterpolator mInterpolator = null;
    public final ArrayList mTargetIds = new ArrayList();
    public final ArrayList mTargets = new ArrayList();
    public Dispatcher mStartValues = new Dispatcher(8);
    public Dispatcher mEndValues = new Dispatcher(8);
    public TransitionSet mParent = null;
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnimationInfo {
        public Animator mAnimator;
        public String mName;
        public Transition mTransition;
        public TransitionValues mValues;
        public View mView;
        public WindowId mWindowId;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SeekController extends TransitionListenerAdapter {
        public boolean mIsCanceled;
        public boolean mIsReady;
        public Runnable mResetToStartState;
        public SpringAnimation mSpringAnimation;
        public final JsonParser mVelocityTracker;
        public final /* synthetic */ TransitionSet this$0;
        public long mCurrentPlayTime = -1;
        public int mOnReady = 0;

        public SeekController(TransitionSet transitionSet) {
            this.this$0 = transitionSet;
            JsonParser jsonParser = new JsonParser(8);
            long[] jArr = new long[20];
            jsonParser.value = jArr;
            jsonParser.tokener = new float[20];
            jsonParser.token = 0;
            Arrays.fill(jArr, Long.MIN_VALUE);
            this.mVelocityTracker = jsonParser;
        }

        public final void animateToEnd() {
            if (this.mIsReady) {
                ensureAnimation();
                this.mSpringAnimation.animateToFinalPosition(this.this$0.mTotalDuration + 1);
            } else {
                this.mOnReady = 1;
                this.mResetToStartState = null;
            }
        }

        public final void ensureAnimation() {
            char c;
            float f;
            if (this.mSpringAnimation != null) {
                return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f2 = this.mCurrentPlayTime;
            JsonParser jsonParser = this.mVelocityTracker;
            int i = jsonParser.token;
            float[] fArr = (float[]) jsonParser.tokener;
            long[] jArr = (long[]) jsonParser.value;
            char c2 = 20;
            int i2 = (i + 1) % 20;
            jsonParser.token = i2;
            jArr[i2] = currentAnimationTimeMillis;
            fArr[i2] = f2;
            FloatValueHolder floatValueHolder = new FloatValueHolder();
            float f3 = 0.0f;
            floatValueHolder.mValue = 0.0f;
            this.mSpringAnimation = new SpringAnimation(floatValueHolder);
            SpringForce springForce = new SpringForce();
            springForce.mDampingRatio = 1.0d;
            int i3 = 0;
            springForce.mInitialized = false;
            springForce.mNaturalFreq = Math.sqrt(200.0d);
            springForce.mInitialized = false;
            SpringAnimation springAnimation = this.mSpringAnimation;
            springAnimation.mSpring = springForce;
            springAnimation.mValue = this.mCurrentPlayTime;
            springAnimation.mStartValueIsSet = true;
            ArrayList arrayList = springAnimation.mUpdateListeners;
            if (springAnimation.mRunning) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Error: Update listeners must be added beforethe animation.");
                return;
            }
            if (!arrayList.contains(this)) {
                arrayList.add(this);
            }
            SpringAnimation springAnimation2 = this.mSpringAnimation;
            int i4 = jsonParser.token;
            long j = Long.MIN_VALUE;
            if (i4 != 0 || jArr[i4] != Long.MIN_VALUE) {
                long j2 = jArr[i4];
                long j3 = j2;
                while (true) {
                    long j4 = jArr[i4];
                    if (j4 != j) {
                        float f4 = j2 - j4;
                        float abs = Math.abs(j4 - j3);
                        if (f4 > 100.0f || abs > 40.0f) {
                            break;
                        }
                        if (i4 == 0) {
                            i4 = 20;
                        }
                        i4--;
                        i3++;
                        if (i3 >= 20) {
                            break;
                        }
                        j3 = j4;
                        j = Long.MIN_VALUE;
                    } else {
                        break;
                    }
                }
                if (i3 >= 2) {
                    int i5 = jsonParser.token;
                    float f5 = 1000.0f;
                    if (i3 == 2) {
                        int i6 = i5 == 0 ? 19 : i5 - 1;
                        float f6 = jArr[i5] - jArr[i6];
                        if (f6 != 0.0f) {
                            f3 = ((fArr[i5] - fArr[i6]) / f6) * 1000.0f;
                        }
                    } else {
                        int i7 = ((i5 - i3) + 21) % 20;
                        int i8 = (i5 + 21) % 20;
                        long j5 = jArr[i7];
                        float f7 = fArr[i7];
                        int i9 = i7 + 1;
                        int i10 = i9 % 20;
                        float f8 = 0.0f;
                        while (i10 != i8) {
                            long j6 = jArr[i10];
                            float f9 = f3;
                            int i11 = i8;
                            float f10 = j6 - j5;
                            if (f10 == f9) {
                                c = c2;
                                f = f5;
                            } else {
                                float f11 = fArr[i10];
                                c = c2;
                                f = f5;
                                float f12 = (f11 - f7) / f10;
                                float abs2 = (Math.abs(f12) * (f12 - ((float) (Math.sqrt(2.0f * Math.abs(f8)) * Math.signum(f8))))) + f8;
                                if (i10 == i9) {
                                    abs2 *= 0.5f;
                                }
                                f8 = abs2;
                                f7 = f11;
                                j5 = j6;
                            }
                            i10 = (i10 + 1) % 20;
                            f3 = f9;
                            i8 = i11;
                            c2 = c;
                            f5 = f;
                        }
                        f3 = ((float) (Math.sqrt(Math.abs(f8) * 2.0f) * Math.signum(f8))) * f5;
                    }
                }
            }
            springAnimation2.mVelocity = f3;
            SpringAnimation springAnimation3 = this.mSpringAnimation;
            springAnimation3.mMaxValue = this.this$0.mTotalDuration + 1;
            springAnimation3.mMinValue = -1.0f;
            springAnimation3.mMinVisibleChange = 4.0f;
            Transition$SeekController$$ExternalSyntheticLambda0 transition$SeekController$$ExternalSyntheticLambda0 = new Transition$SeekController$$ExternalSyntheticLambda0(this);
            ArrayList arrayList2 = springAnimation3.mEndListeners;
            if (arrayList2.contains(transition$SeekController$$ExternalSyntheticLambda0)) {
                return;
            }
            arrayList2.add(transition$SeekController$$ExternalSyntheticLambda0);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
            this.mIsCanceled = true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface TransitionListener {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionEnd$1(Transition transition);

        void onTransitionPause();

        void onTransitionResume();

        void onTransitionStart(Transition transition);

        void onTransitionStart$1(Transition transition);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface TransitionNotification {
        public static final DecodeUtils$$ExternalSyntheticBUOutline0 ON_START = new DecodeUtils$$ExternalSyntheticBUOutline0(16);
        public static final DecodeUtils$$ExternalSyntheticBUOutline0 ON_END = new DecodeUtils$$ExternalSyntheticBUOutline0(17);
        public static final DecodeUtils$$ExternalSyntheticBUOutline0 ON_CANCEL = new DecodeUtils$$ExternalSyntheticBUOutline0(18);
        public static final DecodeUtils$$ExternalSyntheticBUOutline0 ON_PAUSE = new DecodeUtils$$ExternalSyntheticBUOutline0(19);
        public static final DecodeUtils$$ExternalSyntheticBUOutline0 ON_RESUME = new DecodeUtils$$ExternalSyntheticBUOutline0(20);

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

    public void addTarget(View view) {
        this.mTargets.add(view);
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
    public Transition mo473clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList();
            transition.mStartValues = new Dispatcher(8);
            transition.mEndValues = new Dispatcher(8);
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            transition.mSeekController = null;
            transition.mCloneParent = this;
            transition.mListeners = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
            return null;
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public void createAnimators(ViewGroup viewGroup, Dispatcher dispatcher, Dispatcher dispatcher2, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        boolean z;
        View view;
        TransitionValues transitionValues;
        Animator animator;
        TransitionValues transitionValues2;
        ArrayMap runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z2 = getRootTransition().mSeekController != null;
        int i2 = 0;
        while (i2 < size) {
            TransitionValues transitionValues3 = (TransitionValues) arrayList.get(i2);
            TransitionValues transitionValues4 = (TransitionValues) arrayList2.get(i2);
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
                            z = z2;
                            if (transitionValues5 != null) {
                                for (String str2 : transitionProperties) {
                                    transitionValues2.values.put(str2, transitionValues5.values.get(str2));
                                }
                            }
                            int i3 = runningAnimators.size;
                            int i4 = 0;
                            while (true) {
                                if (i4 >= i3) {
                                    animator = createAnimator;
                                    break;
                                }
                                AnimationInfo animationInfo = (AnimationInfo) runningAnimators.get((Animator) runningAnimators.keyAt(i4));
                                if (animationInfo.mValues != null && animationInfo.mView == view && animationInfo.mName.equals(str) && animationInfo.mValues.equals(transitionValues2)) {
                                    animator = null;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            i = size;
                            z = z2;
                            animator = createAnimator;
                            transitionValues2 = null;
                        }
                        createAnimator = animator;
                        transitionValues = transitionValues2;
                    } else {
                        i = size;
                        z = z2;
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
                        if (z) {
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.play(createAnimator);
                            createAnimator = animatorSet;
                        }
                        runningAnimators.put(createAnimator, animationInfo2);
                        this.mAnimators.add(createAnimator);
                    }
                    i2++;
                    size = i;
                    z2 = z;
                }
            }
            i = size;
            z = z2;
            i2++;
            size = i;
            z2 = z;
        }
        if (sparseIntArray.size() != 0) {
            for (int i5 = 0; i5 < sparseIntArray.size(); i5++) {
                AnimationInfo animationInfo3 = (AnimationInfo) runningAnimators.get((Animator) this.mAnimators.get(sparseIntArray.keyAt(i5)));
                animationInfo3.mAnimator.setStartDelay(animationInfo3.mAnimator.getStartDelay() + (sparseIntArray.valueAt(i5) - Long.MAX_VALUE));
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
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getMatchedTransitionValues(view, z);
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
        TransitionSet transitionSet = this.mParent;
        return transitionSet != null ? transitionSet.getRootTransition() : this;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public final TransitionValues getTransitionValues(View view, boolean z) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z);
        }
        return (TransitionValues) ((ArrayMap) (z ? this.mStartValues : this.mEndValues).executorServiceOrNull).get(view);
    }

    public boolean hasAnimators() {
        return !this.mCurrentAnimators.isEmpty();
    }

    public abstract boolean isSeekingSupported();

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
                this.mTotalDuration = Math.max(this.mTotalDuration, Impl26.getTotalDuration(animator));
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

    public void removeTarget(View view) {
        this.mTargets.remove(view);
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
                    animator.addListener(new AnonymousClass2(this, runningAnimators));
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
                    animator.addListener(new AnonymousClass3(this, 0));
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
            Impl26.setCurrentPlayTime(animator, Math.min(Math.max(0L, j), Impl26.getTotalDuration(animator)));
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

    public void setEpicenterCallback(AppKt appKt) {
        this.mEpicenterCallback = appKt;
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.transition.Transition$3, reason: invalid class name */
    public class AnonymousClass3 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public AnonymousClass3(Runnable runnable) {
            this.$r8$classId = 10;
            this.this$0 = runnable;
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
                case 11:
                    ((AudioReactor) obj).player.setVolume(1.0f);
                    break;
                case 12:
                    PopupPlayerUi popupPlayerUi = (PopupPlayerUi) obj;
                    popupPlayerUi.windowManager.removeView((FrameLayout) popupPlayerUi.closeOverlayBinding.value);
                    popupPlayerUi.closeOverlayBinding = null;
                    popupPlayerUi.player.service.destroyPlayerAndStopService();
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
                        ColorStateList colorStateList = ((MaterialCheckBox.AnonymousClass1) arrayList.get(i2)).this$0.buttonTintList;
                        if (colorStateList != null) {
                            animatedVectorDrawableCompat.setTintList(colorStateList);
                        }
                    }
                    break;
                case 3:
                    ((HideBottomViewOnScrollBehavior) obj).currentAnimator = null;
                    break;
                case 4:
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj;
                    bottomSheetBehavior.setStateInternal(5);
                    WeakReference weakReference = bottomSheetBehavior.viewRef;
                    if (weakReference != null && weakReference.get() != null) {
                        ((View) bottomSheetBehavior.viewRef.get()).requestLayout();
                        break;
                    }
                    break;
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.animState = 0;
                    floatingActionButtonImpl.currentAnimator = null;
                    break;
                case 6:
                    MaterialBottomContainerBackHelper materialBottomContainerBackHelper = (MaterialBottomContainerBackHelper) obj;
                    materialBottomContainerBackHelper.view.setTranslationY(0.0f);
                    materialBottomContainerBackHelper.updateBackProgress(0.0f);
                    break;
                case 7:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                    sideSheetBehavior.setStateInternal(5);
                    WeakReference weakReference2 = sideSheetBehavior.viewRef;
                    if (weakReference2 != null && weakReference2.get() != null) {
                        ((View) sideSheetBehavior.viewRef.get()).requestLayout();
                        break;
                    }
                    break;
                case 8:
                    DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                    dropdownMenuEndIconDelegate.refreshIconState();
                    dropdownMenuEndIconDelegate.fadeInAnim.start();
                    break;
                case 9:
                    ((ExpandableTransformationBehavior) obj).currentAnimation = null;
                    break;
                case 10:
                    animator.getClass();
                    Runnable runnable = (Runnable) obj;
                    if (runnable != null) {
                        runnable.run();
                        break;
                    }
                    break;
                case 11:
                    ((AudioReactor) obj).player.setVolume(1.0f);
                    break;
                default:
                    PopupPlayerUi popupPlayerUi = (PopupPlayerUi) obj;
                    popupPlayerUi.windowManager.removeView((FrameLayout) popupPlayerUi.closeOverlayBinding.value);
                    popupPlayerUi.closeOverlayBinding = null;
                    popupPlayerUi.player.service.destroyPlayerAndStopService();
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
                        ((MaterialCheckBox.AnonymousClass1) arrayList.get(i2)).onAnimationStart(animatedVectorDrawableCompat);
                    }
                    break;
                case 5:
                    FloatingActionButtonImpl floatingActionButtonImpl = (FloatingActionButtonImpl) obj;
                    floatingActionButtonImpl.view.internalSetVisibility(0, false);
                    floatingActionButtonImpl.animState = 2;
                    floatingActionButtonImpl.currentAnimator = animator;
                    break;
                case 11:
                    ((AudioReactor) obj).player.setVolume(0.2f);
                    break;
                default:
                    super.onAnimationStart(animator);
                    break;
            }
        }

        public /* synthetic */ AnonymousClass3(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.transition.Transition$2, reason: invalid class name */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ Object val$runningAnimators;

        public AnonymousClass2(Transition transition, ArrayMap arrayMap) {
            this.$r8$classId = 0;
            this.this$0 = transition;
            this.val$runningAnimators = arrayMap;
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
                default:
                    DrawerLayout drawerLayout = (DrawerLayout) obj2;
                    drawerLayout.closeDrawer((NavigationView) obj, false);
                    drawerLayout.setScrimColor(-1728053248);
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

        public /* synthetic */ AnonymousClass2(Object obj, View view, int i) {
            this.$r8$classId = i;
            this.val$runningAnimators = obj;
            this.this$0 = view;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.transition.Transition$1, reason: invalid class name */
    public class AnonymousClass1 implements MenuPresenter.Callback, CoroutineContext.Key, PlatformTypefaces, ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl, Preference.SummaryProvider, ProfileInstaller$DiagnosticsCallback, AutoMigrationSpec, Action {
        public static AnonymousClass1 sSimpleSummaryProvider;
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        public static RectF calculateIndicatorWidthForTab(TabLayout tabLayout, View view) {
            if (view == null) {
                return new RectF();
            }
            if (tabLayout.tabIndicatorFullWidth || !(view instanceof TabLayout.TabView)) {
                return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            TabLayout.TabView tabView = (TabLayout.TabView) view;
            int contentWidth = tabView.getContentWidth();
            int contentHeight = tabView.getContentHeight();
            int dpToPx = (int) com.google.android.material.internal.ViewUtils.dpToPx(tabView.getContext(), 24);
            if (contentWidth < dpToPx) {
                contentWidth = dpToPx;
            }
            int right = (tabView.getRight() + tabView.getLeft()) / 2;
            int bottom = (tabView.getBottom() + tabView.getTop()) / 2;
            int i = contentWidth / 2;
            return new RectF(right - i, bottom - (contentHeight / 2), i + right, (right / 2) + bottom);
        }

        /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg, reason: not valid java name */
        public static Typeface m474createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i) {
            if (i == 0 && Intrinsics.areEqual(fontWeight, FontWeight.Normal) && (str == null || str.length() == 0)) {
                return Typeface.DEFAULT;
            }
            int m734getAndroidTypefaceStyleFO1MlWM = Jsoup.m734getAndroidTypefaceStyleFO1MlWM(fontWeight, i);
            return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(m734getAndroidTypefaceStyleFO1MlWM) : Typeface.create(str, m734getAndroidTypefaceStyleFO1MlWM);
        }

        public static Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
        
            if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
        
            if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
        
            if (r11 != false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
        
            if (r10 != (-1)) goto L70;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.AnonymousClass1.handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection, android.text.Editable, int, int, boolean):boolean");
        }

        @Override // androidx.compose.ui.text.font.PlatformTypefaces
        /* renamed from: createDefault-FO1MlWM */
        public Typeface mo413createDefaultFO1MlWM(FontWeight fontWeight, int i) {
            return m474createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i);
        }

        @Override // androidx.compose.ui.text.font.PlatformTypefaces
        /* renamed from: createNamed-RetOiIg */
        public Typeface mo414createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
            String str;
            genericFontFamily.getClass();
            int i2 = fontWeight.weight / 100;
            if (i2 >= 0 && i2 < 2) {
                str = "sans-serif-thin";
            } else if (2 > i2 || i2 >= 4) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        str = "sans-serif-medium";
                    } else if ((6 > i2 || i2 >= 8) && 8 <= i2 && i2 < 11) {
                        str = "sans-serif-black";
                    }
                }
                str = C.SANS_SERIF_NAME;
            } else {
                str = "sans-serif-light";
            }
            Typeface typeface = null;
            if (str.length() != 0) {
                Typeface m474createAndroidTypefaceUsingTypefaceStyleRetOiIg = m474createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
                if (!Intrinsics.areEqual(m474createAndroidTypefaceUsingTypefaceStyleRetOiIg, Typeface.create(Typeface.DEFAULT, Jsoup.m734getAndroidTypefaceStyleFO1MlWM(fontWeight, i))) && !Intrinsics.areEqual(m474createAndroidTypefaceUsingTypefaceStyleRetOiIg, m474createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i))) {
                    typeface = m474createAndroidTypefaceUsingTypefaceStyleRetOiIg;
                }
            }
            return typeface == null ? m474createAndroidTypefaceUsingTypefaceStyleRetOiIg(C.SANS_SERIF_NAME, fontWeight, i) : typeface;
        }

        public boolean isPrecomputedText(CharSequence charSequence) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }

        @Override // androidx.room.migration.AutoMigrationSpec
        public void onPostMigrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            frameworkSQLiteDatabase.getClass();
            frameworkSQLiteDatabase.execSQL("UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0");
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(Preference preference) {
            EditTextPreference editTextPreference = (EditTextPreference) preference;
            return TextUtils.isEmpty(editTextPreference.mText) ? editTextPreference.mContext.getString(R.string.not_set) : editTextPreference.mText;
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 4:
                    return "CompositionErrorContext";
                case 15:
                    int hashCode = hashCode();
                    CharsKt.checkRadix(16);
                    String num = Integer.toString(hashCode, 16);
                    num.getClass();
                    return Owner.CC.m("CreationExtras.Key@", num, "<", Reflection.getOrCreateKotlinClass(ViewModelStoreOwner.class).getSimpleName(), ">");
                case 16:
                    int hashCode2 = hashCode();
                    CharsKt.checkRadix(16);
                    String num2 = Integer.toString(hashCode2, 16);
                    num2.getClass();
                    return Owner.CC.m("CreationExtras.Key@", num2, "<", Reflection.getOrCreateKotlinClass(Application.class).getSimpleName(), ">");
                case 29:
                    return "EmptyAction";
                default:
                    return super.toString();
            }
        }

        public void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
            RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
            RectF calculateIndicatorWidthForTab2 = calculateIndicatorWidthForTab(tabLayout, view2);
            drawable.setBounds(com.google.android.material.animation.AnimationUtils.lerp(f, (int) calculateIndicatorWidthForTab.left, (int) calculateIndicatorWidthForTab2.left), drawable.getBounds().top, com.google.android.material.animation.AnimationUtils.lerp(f, (int) calculateIndicatorWidthForTab.right, (int) calculateIndicatorWidthForTab2.right), drawable.getBounds().bottom);
        }

        @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
        public void onDiagnosticReceived() {
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
        public void onResultReceived(int i, Object obj) {
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public void onScrollLimit(int i, int i2, int i3, boolean z) {
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public void onScrollProgress(int i, int i2, int i3, int i4) {
        }
    }

    public void setPropagation() {
    }

    public void capturePropagationValues(TransitionValues transitionValues) {
    }

    public final String toString() {
        return toString("");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Impl26 {
        public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                config = DisplayCompat.getHardwareBitmapConfig(bitmap);
            }
            return bitmap.copy(config, true);
        }

        public static void copyToClipboard(Context context, String str) {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(ClipboardManager.class);
            if (clipboardManager == null) {
                Toast.makeText(context, R.string.permission_denied, 1).show();
                return;
            }
            try {
                clipboardManager.setPrimaryClip(ClipData.newPlainText(null, str));
                if (Build.VERSION.SDK_INT < 33) {
                    Toast.makeText(context, R.string.msg_copied, 0).show();
                }
            } catch (Exception e) {
                Log.e("ShareUtils", "Error when trying to copy text to clipboard", e);
                Toast.makeText(context, R.string.msg_failed_to_copy, 0).show();
            }
        }

        public static Bitmap createBitmapWithSourceColorspace(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = DisplayCompat.getHardwareBitmapConfig(bitmap);
                }
            }
            return Bitmap.createBitmap(i, i2, config, bitmap.hasAlpha(), colorSpace);
        }

        public static Icon createWithAdaptiveBitmap(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }

        public static void generateConfigDelta_colorMode(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            i = configuration.colorMode;
            int i7 = i & 3;
            i2 = configuration2.colorMode;
            int i8 = i2 & 3;
            if (i7 != i8) {
                i6 = configuration3.colorMode;
                configuration3.colorMode = i6 | i8;
            }
            i3 = configuration.colorMode;
            int i9 = i3 & 12;
            i4 = configuration2.colorMode;
            int i10 = i4 & 12;
            if (i9 != i10) {
                i5 = configuration3.colorMode;
                configuration3.colorMode = i5 | i10;
            }
        }

        public static AutofillId getAutofillId(View view) {
            return view.getAutofillId();
        }

        public static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHorizontalScrollFactor();
        }

        public static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledVerticalScrollFactor();
        }

        public static long getTotalDuration(Animator animator) {
            return animator.getTotalDuration();
        }

        public static void installApp(Context context, String str) {
            try {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)).setFlags(268435456));
            } catch (ActivityNotFoundException unused) {
                openUrlInApp(context, "https://play.google.com/store/apps/details?id=" + str);
            }
        }

        public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }

        public static void openAppChooser(Context context, Intent intent, boolean z) {
            Intent intent2 = new Intent("android.intent.action.CHOOSER");
            intent2.putExtra("android.intent.extra.INTENT", intent);
            intent2.addFlags(268435456);
            if (z) {
                intent2.putExtra("android.intent.extra.TITLE", context.getString(R.string.open_with));
            }
            if (Build.VERSION.SDK_INT >= 24) {
                intent2.putExtra("android.intent.extra.EXCLUDE_COMPONENTS", new ComponentName[]{new ComponentName(context, (Class<?>) RouterActivity.class)});
            }
            int flags = intent.getFlags() & 195;
            if (flags != 0) {
                ClipData clipData = intent.getClipData();
                if (clipData == null && intent.getData() != null) {
                    clipData = new ClipData(null, intent.getType() != null ? new String[]{intent.getType()} : new String[0], new ClipData.Item(intent.getData()));
                }
                if (clipData != null) {
                    intent2.setClipData(clipData);
                    intent2.addFlags(flags);
                }
            }
            try {
                context.startActivity(intent2);
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(context, R.string.no_app_to_open_intent, 1).show();
            }
        }

        public static void openUrlInApp(Context context, String str) {
            try {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).setFlags(268435456));
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(context, R.string.no_app_to_open_intent, 1).show();
            }
        }

        public static void openUrlInBrowser(Context context, String str) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://"));
            Intent flags = new Intent("android.intent.action.VIEW", Uri.parse(str)).setFlags(268435456);
            flags.setSelector(intent);
            try {
                context.startActivity(flags);
            } catch (ActivityNotFoundException unused) {
                flags.setSelector(null);
                openAppChooser(context, flags, true);
            }
        }

        public static final void performAutofill(AndroidAutofill androidAutofill, SparseArray sparseArray) {
            if (androidAutofill.autofillTree.children.isEmpty()) {
                return;
            }
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                AutofillValue m = Arrangement$$ExternalSyntheticLambda0.m(sparseArray.get(keyAt));
                if (m.isText()) {
                    AutofillTree autofillTree = androidAutofill.autofillTree;
                    m.getTextValue().toString();
                    if (autofillTree.children.get(Integer.valueOf(keyAt)) != null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                        return;
                    }
                } else {
                    if (m.isDate()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
                    }
                    if (m.isList()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                    }
                    if (m.isToggle()) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                    }
                }
            }
        }

        public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
            return (i & 4) != 0 ? context.registerReceiver(broadcastReceiver, intentFilter, StaticImageDecoderKt.obtainAndCheckReceiverPermission(context), null) : context.registerReceiver(broadcastReceiver, intentFilter, null, null, 0);
        }

        public static void setAlphabeticShortcut(MenuItem menuItem, char c, int i) {
            menuItem.setAlphabeticShortcut(c, i);
        }

        public static void setContentDescription(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setContentDescription(charSequence);
        }

        public static void setCurrentPlayTime(Animator animator, long j) {
            ((AnimatorSet) animator).setCurrentPlayTime(j);
        }

        public static void setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
            menuItem.setIconTintList(colorStateList);
        }

        public static void setIconTintMode(MenuItem menuItem, PorterDuff.Mode mode) {
            menuItem.setIconTintMode(mode);
        }

        public static void setNumericShortcut(MenuItem menuItem, char c, int i) {
            menuItem.setNumericShortcut(c, i);
        }

        public static void setTooltipText(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setTooltipText(charSequence);
        }

        public static void shareText(Context context, String str, String str2, String str3) {
            Bitmap decodeFile;
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", str2);
            if (!TextUtils.isEmpty(str)) {
                intent.putExtra("android.intent.extra.TITLE", str);
                intent.putExtra("android.intent.extra.SUBJECT", str);
            }
            if (Build.VERSION.SDK_INT >= 29 && !TextUtils.isEmpty(str3) && ImageStrategy.shouldLoadImages()) {
                ClipData clipData = null;
                try {
                    Context applicationContext = context.getApplicationContext();
                    RealImageLoader realImageLoader = (RealImageLoader) SingletonImageLoader.get(context);
                    MemoryCache$Value memoryCache$Value = realImageLoader.getMemoryCache().get(new MemoryCache$Key(str3, Collections.EMPTY_MAP));
                    if (memoryCache$Value != null) {
                        decodeFile = UriKt.toBitmap$default(memoryCache$Value.image);
                    } else {
                        DiskLruCache diskLruCache = ((RealDiskCache) realImageLoader.options.diskCacheLazy.getValue()).cache;
                        ByteString byteString = ByteString.EMPTY;
                        DiskLruCache.Snapshot snapshot = diskLruCache.get(ByteString.Companion.encodeUtf8(str3).digest$okio("SHA-256").hex());
                        RealDiskCache.RealSnapshot realSnapshot = snapshot != null ? new RealDiskCache.RealSnapshot(snapshot) : null;
                        if (realSnapshot != null) {
                            try {
                                DiskLruCache.Snapshot snapshot2 = realSnapshot.snapshot;
                                if (snapshot2.closed) {
                                    throw new IllegalStateException("snapshot is closed");
                                }
                                decodeFile = BitmapFactory.decodeFile(((okio.Path) snapshot2.entry.cleanFiles.get(1)).bytes.utf8());
                            } finally {
                            }
                        } else {
                            decodeFile = null;
                        }
                        if (realSnapshot != null) {
                            realSnapshot.close();
                        }
                    }
                    if (decodeFile != null) {
                        j$.nio.file.Path resolve = FileRetargetClass.toPath(applicationContext.getCacheDir()).resolve("android_share_sheet_image_preview.jpg");
                        OutputStream newOutputStream = Files.newOutputStream(resolve, new OpenOption[0]);
                        try {
                            decodeFile.compress(Bitmap.CompressFormat.JPEG, 90, newOutputStream);
                            if (newOutputStream != null) {
                                newOutputStream.close();
                            }
                            ClipData newUri = ClipData.newUri(applicationContext.getContentResolver(), "", FileProvider.getUriForFile(applicationContext, "org.schabi.newpipe.provider", resolve.toFile()));
                            int i = MainActivity.$r8$clinit;
                            clipData = newUri;
                        } finally {
                        }
                    }
                } catch (Exception e) {
                    Log.w("ShareUtils", "Error when setting preview image for share sheet", e);
                }
                if (clipData != null) {
                    intent.setClipData(clipData);
                    intent.setFlags(1);
                }
            }
            openAppChooser(context, intent, false);
        }

        public static void startForegroundService(Context context, Intent intent) {
            context.startForegroundService(intent);
        }

        public static void shareText(Context context, String str, String str2, List list) {
            shareText(context, str, str2, ImageStrategy.choosePreferredImage(list));
        }
    }
}
