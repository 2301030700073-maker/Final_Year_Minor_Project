package androidx.fragment.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.SparseArrayCompat;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.util.Consumer;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.fragment.app.SpecialEffectsController$Operation$State;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LiveData$1;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManagerImpl$LoaderViewModel;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.impl.AutoMigration_14_15;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentManagerImpl {
    public final ArrayList mBackStackChangeListeners;
    public Operation$State mContainer;
    public ArrayList mCreatedMenus;
    public int mCurState;
    public final AutoMigration_14_15 mDefaultSpecialEffectsControllerFactory;
    public boolean mDestroyed;
    public final LiveData$1 mExecCommit;
    public boolean mExecutingActions;
    public boolean mHavePendingDeferredStart;
    public FragmentActivity$HostCallbacks mHost;
    public final FragmentManager$3 mHostFragmentFactory;
    public ArrayDeque mLaunchedFragments;
    public final AndroidSvg mLifecycleCallbacksDispatcher;
    public final FragmentManager$2 mMenuProvider;
    public boolean mNeedMenuInvalidate;
    public FragmentManagerViewModel mNonConfig;
    public final CopyOnWriteArrayList mOnAttachListeners;
    public OnBackPressedDispatcher mOnBackPressedDispatcher;
    public final FragmentManager$$ExternalSyntheticLambda1 mOnConfigurationChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda1 mOnMultiWindowModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda1 mOnPictureInPictureModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda1 mOnTrimMemoryListener;
    public Fragment mParent;
    public Fragment mPrimaryNav;
    public ActivityResultRegistry$register$2 mRequestPermissions;
    public ActivityResultRegistry$register$2 mStartActivityForResult;
    public ActivityResultRegistry$register$2 mStartIntentSenderForResult;
    public boolean mStateSaved;
    public boolean mStopped;
    public ArrayList mTmpAddedFragments;
    public ArrayList mTmpIsPop;
    public ArrayList mTmpRecords;
    public final ArrayList mPendingActions = new ArrayList();
    public final ImageLoader$Builder mFragmentStore = new ImageLoader$Builder(9);
    public ArrayList mBackStack = new ArrayList();
    public final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    public BackStackRecord mTransitioningOp = null;
    public boolean mHandlingTransitioningOp = false;
    public final FragmentManager$1 mOnBackPressedCallback = new FragmentManager$1(this, false, 0);
    public final AtomicInteger mBackStackIndex = new AtomicInteger();
    public final Map mBackStackStates = DesugarCollections.synchronizedMap(new HashMap());
    public final Map mResults = DesugarCollections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1] */
    public FragmentManagerImpl() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.mBackStackChangeListeners = new ArrayList();
        AndroidSvg androidSvg = new AndroidSvg();
        androidSvg.svg = this;
        androidSvg.renderOptions = new CopyOnWriteArrayList();
        this.mLifecycleCallbacksDispatcher = androidSvg;
        this.mOnAttachListeners = new CopyOnWriteArrayList();
        final int i = 0;
        this.mOnConfigurationChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1
            public final /* synthetic */ FragmentManagerImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i2 = i;
                FragmentManagerImpl fragmentManagerImpl = this.f$0;
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            fragmentManagerImpl.dispatchConfigurationChanged(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManagerImpl.isParentAdded() && num.intValue() == 80) {
                            fragmentManagerImpl.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManagerImpl.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManagerImpl.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i2 = 1;
        this.mOnTrimMemoryListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1
            public final /* synthetic */ FragmentManagerImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i2;
                FragmentManagerImpl fragmentManagerImpl = this.f$0;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            fragmentManagerImpl.dispatchConfigurationChanged(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManagerImpl.isParentAdded() && num.intValue() == 80) {
                            fragmentManagerImpl.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManagerImpl.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManagerImpl.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.mOnMultiWindowModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1
            public final /* synthetic */ FragmentManagerImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i3;
                FragmentManagerImpl fragmentManagerImpl = this.f$0;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            fragmentManagerImpl.dispatchConfigurationChanged(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManagerImpl.isParentAdded() && num.intValue() == 80) {
                            fragmentManagerImpl.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManagerImpl.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManagerImpl.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i4 = 3;
        this.mOnPictureInPictureModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1
            public final /* synthetic */ FragmentManagerImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i4;
                FragmentManagerImpl fragmentManagerImpl = this.f$0;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            fragmentManagerImpl.dispatchConfigurationChanged(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManagerImpl.isParentAdded() && num.intValue() == 80) {
                            fragmentManagerImpl.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManagerImpl.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManagerImpl.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManagerImpl.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        this.mMenuProvider = new FragmentManager$2(0, this);
        this.mCurState = -1;
        this.mHostFragmentFactory = new FragmentManager$3(this);
        int i5 = 11;
        this.mDefaultSpecialEffectsControllerFactory = new AutoMigration_14_15(i5);
        this.mLaunchedFragments = new ArrayDeque();
        this.mExecCommit = new LiveData$1(i5, this);
    }

    public static HashSet fragmentsFromRecord(BackStackRecord backStackRecord) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < backStackRecord.mOps.size(); i++) {
            Fragment fragment = ((FragmentTransaction$Op) backStackRecord.mOps.get(i)).mFragment;
            if (fragment != null && backStackRecord.mAddToBackStack) {
                hashSet.add(fragment);
            }
        }
        return hashSet;
    }

    public static boolean isLoggingEnabled(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static boolean isMenuAvailable(Fragment fragment) {
        Iterator it = fragment.mChildFragmentManager.mFragmentStore.getActiveFragments().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                z = isMenuAvailable(fragment2);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean isParentMenuVisible(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        if (fragment.mMenuVisible) {
            return fragment.mFragmentManager == null || isParentMenuVisible(fragment.mParentFragment);
        }
        return false;
    }

    public static boolean isPrimaryNavigation(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mFragmentManager;
        return fragment == fragmentManagerImpl.mPrimaryNav && isPrimaryNavigation(fragmentManagerImpl.mParent);
    }

    public static void showFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public final FragmentStateManager addFragment(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.onFragmentReuse(fragment, str);
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        FragmentStateManager createOrGetFragmentStateManager = createOrGetFragmentStateManager(fragment);
        fragment.mFragmentManager = this;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        imageLoader$Builder.makeActive(createOrGetFragmentStateManager);
        if (!fragment.mDetached) {
            imageLoader$Builder.addFragment(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
        return createOrGetFragmentStateManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void attachController(FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks, Operation$State operation$State, final Fragment fragment) {
        FragmentManagerViewModel fragmentManagerViewModel;
        if (this.mHost != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already attached");
            return;
        }
        this.mHost = fragmentActivity$HostCallbacks;
        this.mContainer = operation$State;
        this.mParent = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.mOnAttachListeners;
        if (fragment != 0) {
            copyOnWriteArrayList.add(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager$7
                @Override // androidx.fragment.app.FragmentOnAttachListener
                public final void onAttachFragment() {
                    Fragment.this.getClass();
                }
            });
        } else if (fragmentActivity$HostCallbacks != null) {
            copyOnWriteArrayList.add(fragmentActivity$HostCallbacks);
        }
        if (this.mParent != null) {
            updateOnBackPressedCallbackEnabled();
        }
        if (fragmentActivity$HostCallbacks != null) {
            OnBackPressedDispatcher onBackPressedDispatcher = fragmentActivity$HostCallbacks.this$0.getOnBackPressedDispatcher();
            this.mOnBackPressedDispatcher = onBackPressedDispatcher;
            onBackPressedDispatcher.addCallback(this.mOnBackPressedCallback, fragment != 0 ? fragment : fragmentActivity$HostCallbacks);
        }
        final int i = 0;
        if (fragment != 0) {
            FragmentManagerViewModel fragmentManagerViewModel2 = fragment.mFragmentManager.mNonConfig;
            HashMap hashMap = fragmentManagerViewModel2.mChildNonConfigs;
            fragmentManagerViewModel = (FragmentManagerViewModel) hashMap.get(fragment.mWho);
            if (fragmentManagerViewModel == null) {
                fragmentManagerViewModel = new FragmentManagerViewModel(fragmentManagerViewModel2.mStateAutomaticallySaved);
                hashMap.put(fragment.mWho, fragmentManagerViewModel);
            }
            this.mNonConfig = fragmentManagerViewModel;
        } else if (fragmentActivity$HostCallbacks != null) {
            ViewModelStore viewModelStore = fragmentActivity$HostCallbacks.this$0.getViewModelStore();
            CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
            empty.getClass();
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, FragmentManagerViewModel.FACTORY, empty);
            KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(FragmentManagerViewModel.class);
            String qualifiedName = orCreateKotlinClass.getQualifiedName();
            if (qualifiedName == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
                return;
            } else {
                fragmentManagerViewModel = (FragmentManagerViewModel) imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                this.mNonConfig = fragmentManagerViewModel;
            }
        } else {
            fragmentManagerViewModel = new FragmentManagerViewModel(false);
            this.mNonConfig = fragmentManagerViewModel;
        }
        fragmentManagerViewModel.mIsStateSaved = isStateSaved();
        this.mFragmentStore.extras = this.mNonConfig;
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks2 = this.mHost;
        if (fragmentActivity$HostCallbacks2 != null && fragment == 0) {
            AndroidSvg savedStateRegistry = fragmentActivity$HostCallbacks2.getSavedStateRegistry();
            savedStateRegistry.registerSavedStateProvider("android:support:fragments", new FragmentManager$$ExternalSyntheticLambda5(i, this));
            Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey("android:support:fragments");
            if (consumeRestoredStateForKey != null) {
                restoreSaveStateInternal(consumeRestoredStateForKey);
            }
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks3 = this.mHost;
        if (fragmentActivity$HostCallbacks3 != null) {
            ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = fragmentActivity$HostCallbacks3.this$0.activityResultRegistry;
            String concat = "FragmentManager:".concat(fragment != 0 ? Animation.CC.m(new StringBuilder(), fragment.mWho, ":") : "");
            this.mStartActivityForResult = componentActivity$activityResultRegistry$1.register(concat.concat("StartActivityForResult"), new FragmentManager$FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: androidx.fragment.app.FragmentManager$8
                public final /* synthetic */ FragmentManagerImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i2 = i;
                    FragmentManagerImpl fragmentManagerImpl = this.this$0;
                    switch (i2) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollLast();
                            if (fragmentManager$LaunchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = fragmentManager$LaunchedFragmentInfo.mWho;
                                int i3 = fragmentManager$LaunchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str);
                                if (findFragmentByWho == null) {
                                    Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                                    break;
                                } else {
                                    findFragmentByWho.onActivityResult(i3, activityResult.resultCode, activityResult.data);
                                    break;
                                }
                            }
                        case 1:
                            Map map = (Map) obj;
                            ArrayList arrayList = new ArrayList(map.values());
                            int[] iArr = new int[arrayList.size()];
                            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                                iArr[i4] = ((Boolean) arrayList.get(i4)).booleanValue() ? 0 : -1;
                            }
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo2 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = fragmentManager$LaunchedFragmentInfo2.mWho;
                                if (fragmentManagerImpl.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo3 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = fragmentManager$LaunchedFragmentInfo3.mWho;
                                int i5 = fragmentManager$LaunchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str3);
                                if (findFragmentByWho2 == null) {
                                    Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str3);
                                    break;
                                } else {
                                    findFragmentByWho2.onActivityResult(i5, activityResult2.resultCode, activityResult2.data);
                                    break;
                                }
                            }
                    }
                }
            });
            final int i2 = 2;
            this.mStartIntentSenderForResult = componentActivity$activityResultRegistry$1.register(concat.concat("StartIntentSenderForResult"), new FragmentManager$FragmentIntentSenderContract(i), new ActivityResultCallback(this) { // from class: androidx.fragment.app.FragmentManager$8
                public final /* synthetic */ FragmentManagerImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i22 = i2;
                    FragmentManagerImpl fragmentManagerImpl = this.this$0;
                    switch (i22) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollLast();
                            if (fragmentManager$LaunchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = fragmentManager$LaunchedFragmentInfo.mWho;
                                int i3 = fragmentManager$LaunchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str);
                                if (findFragmentByWho == null) {
                                    Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                                    break;
                                } else {
                                    findFragmentByWho.onActivityResult(i3, activityResult.resultCode, activityResult.data);
                                    break;
                                }
                            }
                        case 1:
                            Map map = (Map) obj;
                            ArrayList arrayList = new ArrayList(map.values());
                            int[] iArr = new int[arrayList.size()];
                            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                                iArr[i4] = ((Boolean) arrayList.get(i4)).booleanValue() ? 0 : -1;
                            }
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo2 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = fragmentManager$LaunchedFragmentInfo2.mWho;
                                if (fragmentManagerImpl.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo3 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = fragmentManager$LaunchedFragmentInfo3.mWho;
                                int i5 = fragmentManager$LaunchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str3);
                                if (findFragmentByWho2 == null) {
                                    Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str3);
                                    break;
                                } else {
                                    findFragmentByWho2.onActivityResult(i5, activityResult2.resultCode, activityResult2.data);
                                    break;
                                }
                            }
                    }
                }
            });
            final int i3 = 1;
            this.mRequestPermissions = componentActivity$activityResultRegistry$1.register(concat.concat("RequestPermissions"), new FragmentManager$FragmentIntentSenderContract(i3), new ActivityResultCallback(this) { // from class: androidx.fragment.app.FragmentManager$8
                public final /* synthetic */ FragmentManagerImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i22 = i3;
                    FragmentManagerImpl fragmentManagerImpl = this.this$0;
                    switch (i22) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollLast();
                            if (fragmentManager$LaunchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = fragmentManager$LaunchedFragmentInfo.mWho;
                                int i32 = fragmentManager$LaunchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str);
                                if (findFragmentByWho == null) {
                                    Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                                    break;
                                } else {
                                    findFragmentByWho.onActivityResult(i32, activityResult.resultCode, activityResult.data);
                                    break;
                                }
                            }
                        case 1:
                            Map map = (Map) obj;
                            ArrayList arrayList = new ArrayList(map.values());
                            int[] iArr = new int[arrayList.size()];
                            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                                iArr[i4] = ((Boolean) arrayList.get(i4)).booleanValue() ? 0 : -1;
                            }
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo2 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = fragmentManager$LaunchedFragmentInfo2.mWho;
                                if (fragmentManagerImpl.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo3 = (FragmentManager$LaunchedFragmentInfo) fragmentManagerImpl.mLaunchedFragments.pollFirst();
                            if (fragmentManager$LaunchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = fragmentManager$LaunchedFragmentInfo3.mWho;
                                int i5 = fragmentManager$LaunchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManagerImpl.mFragmentStore.findFragmentByWho(str3);
                                if (findFragmentByWho2 == null) {
                                    Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str3);
                                    break;
                                } else {
                                    findFragmentByWho2.onActivityResult(i5, activityResult2.resultCode, activityResult2.data);
                                    break;
                                }
                            }
                    }
                }
            });
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks4 = this.mHost;
        if (fragmentActivity$HostCallbacks4 != null) {
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks4.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda1 = this.mOnConfigurationChangedListener;
            fragmentManager$$ExternalSyntheticLambda1.getClass();
            appCompatActivity.onConfigurationChangedListeners.add(fragmentManager$$ExternalSyntheticLambda1);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks5 = this.mHost;
        if (fragmentActivity$HostCallbacks5 != null) {
            AppCompatActivity appCompatActivity2 = fragmentActivity$HostCallbacks5.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda12 = this.mOnTrimMemoryListener;
            fragmentManager$$ExternalSyntheticLambda12.getClass();
            appCompatActivity2.onTrimMemoryListeners.add(fragmentManager$$ExternalSyntheticLambda12);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks6 = this.mHost;
        if (fragmentActivity$HostCallbacks6 != null) {
            AppCompatActivity appCompatActivity3 = fragmentActivity$HostCallbacks6.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda13 = this.mOnMultiWindowModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda13.getClass();
            appCompatActivity3.onMultiWindowModeChangedListeners.add(fragmentManager$$ExternalSyntheticLambda13);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks7 = this.mHost;
        if (fragmentActivity$HostCallbacks7 != null) {
            AppCompatActivity appCompatActivity4 = fragmentActivity$HostCallbacks7.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda14 = this.mOnPictureInPictureModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda14.getClass();
            appCompatActivity4.onPictureInPictureModeChangedListeners.add(fragmentManager$$ExternalSyntheticLambda14);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks8 = this.mHost;
        if (fragmentActivity$HostCallbacks8 == null || fragment != 0) {
            return;
        }
        AppCompatActivity appCompatActivity5 = fragmentActivity$HostCallbacks8.this$0;
        FragmentManager$2 fragmentManager$2 = this.mMenuProvider;
        fragmentManager$2.getClass();
        SVG svg = appCompatActivity5.menuHostHelper;
        ((CopyOnWriteArrayList) svg.cssRules).add(fragmentManager$2);
        ((Runnable) svg.rootElement).run();
    }

    public final void attachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.mFragmentStore.addFragment(fragment);
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
    }

    public final void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    public final HashSet collectAllSpecialEffectsController() {
        DefaultSpecialEffectsController defaultSpecialEffectsController;
        HashSet hashSet = new HashSet();
        Iterator it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((FragmentStateManager) it.next()).mFragment.mContainer;
            if (viewGroup != null) {
                getSpecialEffectsControllerFactory().getClass();
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof DefaultSpecialEffectsController) {
                    defaultSpecialEffectsController = (DefaultSpecialEffectsController) tag;
                } else {
                    defaultSpecialEffectsController = new DefaultSpecialEffectsController(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, defaultSpecialEffectsController);
                }
                hashSet.add(defaultSpecialEffectsController);
            }
        }
        return hashSet;
    }

    public final HashSet collectChangedControllers(ArrayList arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator it = ((BackStackRecord) arrayList.get(i)).mOps.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction$Op) it.next()).mFragment;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(DefaultSpecialEffectsController.getOrCreateController(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    public final FragmentStateManager createOrGetFragmentStateManager(Fragment fragment) {
        String str = fragment.mWho;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) imageLoader$Builder.defaults).get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, imageLoader$Builder, fragment);
        fragmentStateManager2.restoreState(this.mHost.context.getClassLoader());
        fragmentStateManager2.mFragmentManagerState = this.mCurState;
        return fragmentStateManager2;
    }

    public final void detachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
            synchronized (((ArrayList) imageLoader$Builder.application)) {
                ((ArrayList) imageLoader$Builder.application).remove(fragment);
            }
            fragment.mAdded = false;
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            setVisibleRemovingFragment(fragment);
        }
    }

    public final void dispatchConfigurationChanged(boolean z, Configuration configuration) {
        if (z && this.mHost != null) {
            throwException(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.onConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.dispatchConfigurationChanged(true, configuration);
                }
            }
        }
    }

    public final boolean dispatchContextItemSelected() {
        if (this.mCurState >= 1) {
            for (Fragment fragment : this.mFragmentStore.getFragments()) {
                if (fragment != null) {
                    if (!fragment.mHidden ? fragment.mChildFragmentManager.dispatchContextItemSelected() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean dispatchCreateOptionsMenu() {
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && isParentMenuVisible(fragment)) {
                if (!fragment.mHidden ? fragment.mChildFragmentManager.dispatchCreateOptionsMenu() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    z = true;
                }
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i = 0; i < this.mCreatedMenus.size(); i++) {
                Fragment fragment2 = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.getClass();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public final void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions(true);
        endAnimatingAwayFragments();
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        if (fragmentActivity$HostCallbacks != null ? ((FragmentManagerViewModel) imageLoader$Builder.extras).mHasBeenCleared : true ^ fragmentActivity$HostCallbacks.context.isChangingConfigurations()) {
            Iterator it = this.mBackStackStates.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((BackStackState) it.next()).mFragments.iterator();
                while (it2.hasNext()) {
                    ((FragmentManagerViewModel) imageLoader$Builder.extras).clearNonConfigState((String) it2.next(), false);
                }
            }
        }
        dispatchStateChange(-1);
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks2 = this.mHost;
        if (fragmentActivity$HostCallbacks2 != null) {
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks2.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda1 = this.mOnTrimMemoryListener;
            fragmentManager$$ExternalSyntheticLambda1.getClass();
            appCompatActivity.onTrimMemoryListeners.remove(fragmentManager$$ExternalSyntheticLambda1);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks3 = this.mHost;
        if (fragmentActivity$HostCallbacks3 != null) {
            AppCompatActivity appCompatActivity2 = fragmentActivity$HostCallbacks3.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda12 = this.mOnConfigurationChangedListener;
            fragmentManager$$ExternalSyntheticLambda12.getClass();
            appCompatActivity2.onConfigurationChangedListeners.remove(fragmentManager$$ExternalSyntheticLambda12);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks4 = this.mHost;
        if (fragmentActivity$HostCallbacks4 != null) {
            AppCompatActivity appCompatActivity3 = fragmentActivity$HostCallbacks4.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda13 = this.mOnMultiWindowModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda13.getClass();
            appCompatActivity3.onMultiWindowModeChangedListeners.remove(fragmentManager$$ExternalSyntheticLambda13);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks5 = this.mHost;
        if (fragmentActivity$HostCallbacks5 != null) {
            AppCompatActivity appCompatActivity4 = fragmentActivity$HostCallbacks5.this$0;
            FragmentManager$$ExternalSyntheticLambda1 fragmentManager$$ExternalSyntheticLambda14 = this.mOnPictureInPictureModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda14.getClass();
            appCompatActivity4.onPictureInPictureModeChangedListeners.remove(fragmentManager$$ExternalSyntheticLambda14);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks6 = this.mHost;
        if (fragmentActivity$HostCallbacks6 != null && this.mParent == null) {
            fragmentActivity$HostCallbacks6.this$0.removeMenuProvider(this.mMenuProvider);
        }
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
        if (this.mOnBackPressedDispatcher != null) {
            this.mOnBackPressedCallback.remove();
            this.mOnBackPressedDispatcher = null;
        }
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = this.mStartActivityForResult;
        if (activityResultRegistry$register$2 != null) {
            activityResultRegistry$register$2.unregister();
            this.mStartIntentSenderForResult.unregister();
            this.mRequestPermissions.unregister();
        }
    }

    public final void dispatchLowMemory(boolean z) {
        if (z && this.mHost != null) {
            throwException(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.onLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.dispatchLowMemory(true);
                }
            }
        }
    }

    public final void dispatchMultiWindowModeChanged(boolean z) {
        if (z && this.mHost != null) {
            throwException(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && z) {
                fragment.mChildFragmentManager.dispatchMultiWindowModeChanged(true);
            }
        }
    }

    public final void dispatchOnHiddenChanged() {
        Iterator it = this.mFragmentStore.getActiveFragments().iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                fragment.isHidden();
                fragment.mChildFragmentManager.dispatchOnHiddenChanged();
            }
        }
    }

    public final boolean dispatchOptionsItemSelected() {
        if (this.mCurState >= 1) {
            for (Fragment fragment : this.mFragmentStore.getFragments()) {
                if (fragment != null) {
                    if (!fragment.mHidden ? fragment.mChildFragmentManager.dispatchOptionsItemSelected() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void dispatchOptionsMenuClosed() {
        if (this.mCurState < 1) {
            return;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && !fragment.mHidden) {
                fragment.mChildFragmentManager.dispatchOptionsMenuClosed();
            }
        }
    }

    public final void dispatchParentPrimaryNavigationFragmentChanged(Fragment fragment) {
        if (fragment != null) {
            if (fragment != this.mFragmentStore.findActiveFragment(fragment.mWho)) {
                return;
            }
            fragment.mFragmentManager.getClass();
            boolean isPrimaryNavigation = isPrimaryNavigation(fragment);
            Boolean bool = fragment.mIsPrimaryNavigationFragment;
            if (bool == null || bool.booleanValue() != isPrimaryNavigation) {
                fragment.mIsPrimaryNavigationFragment = Boolean.valueOf(isPrimaryNavigation);
                FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
                fragmentManagerImpl.updateOnBackPressedCallbackEnabled();
                fragmentManagerImpl.dispatchParentPrimaryNavigationFragmentChanged(fragmentManagerImpl.mPrimaryNav);
            }
        }
    }

    public final void dispatchPictureInPictureModeChanged(boolean z) {
        if (z && this.mHost != null) {
            throwException(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && z) {
                fragment.mChildFragmentManager.dispatchPictureInPictureModeChanged(true);
            }
        }
    }

    public final boolean dispatchPrepareOptionsMenu() {
        if (this.mCurState < 1) {
            return false;
        }
        boolean z = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && isParentMenuVisible(fragment)) {
                if (!fragment.mHidden ? fragment.mChildFragmentManager.dispatchPrepareOptionsMenu() : false) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final void dispatchStateChange(int i) {
        try {
            this.mExecutingActions = true;
            for (FragmentStateManager fragmentStateManager : ((HashMap) this.mFragmentStore.defaults).values()) {
                if (fragmentStateManager != null) {
                    fragmentStateManager.mFragmentManagerState = i;
                }
            }
            moveToState(i, false);
            Iterator it = collectAllSpecialEffectsController().iterator();
            while (it.hasNext()) {
                ((DefaultSpecialEffectsController) it.next()).forceCompleteAllOperations();
            }
            this.mExecutingActions = false;
            execPendingActions(true);
        } catch (Throwable th) {
            this.mExecutingActions = false;
            throw th;
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String str2 = str + "    ";
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) imageLoader$Builder.application;
        String str3 = str + "    ";
        HashMap hashMap = (HashMap) imageLoader$Builder.defaults;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : hashMap.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    printWriter.println(fragment);
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(fragment.mFragmentId));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(fragment.mContainerId));
                    printWriter.print(" mTag=");
                    printWriter.println(fragment.mTag);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(fragment.mState);
                    printWriter.print(" mWho=");
                    printWriter.print(fragment.mWho);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(fragment.mBackStackNesting);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(fragment.mAdded);
                    printWriter.print(" mRemoving=");
                    printWriter.print(fragment.mRemoving);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(fragment.mFromLayout);
                    printWriter.print(" mInLayout=");
                    printWriter.println(fragment.mInLayout);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(fragment.mHidden);
                    printWriter.print(" mDetached=");
                    printWriter.print(fragment.mDetached);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(fragment.mMenuVisible);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(fragment.mRetainInstance);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(fragment.mUserVisibleHint);
                    if (fragment.mFragmentManager != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(fragment.mFragmentManager);
                    }
                    if (fragment.mHost != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(fragment.mHost);
                    }
                    if (fragment.mParentFragment != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(fragment.mParentFragment);
                    }
                    if (fragment.mArguments != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(fragment.mArguments);
                    }
                    if (fragment.mSavedFragmentState != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(fragment.mSavedFragmentState);
                    }
                    if (fragment.mSavedViewState != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(fragment.mSavedViewState);
                    }
                    if (fragment.mSavedViewRegistryState != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(fragment.mSavedViewRegistryState);
                    }
                    Object targetFragment = fragment.getTargetFragment(false);
                    if (targetFragment != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(targetFragment);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(fragment.mTargetRequestCode);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
                    printWriter.println(animationInfo == null ? false : animationInfo.mIsPop);
                    Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                    if ((animationInfo2 == null ? 0 : animationInfo2.mEnterAnim) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        Fragment.AnimationInfo animationInfo3 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo3 == null ? 0 : animationInfo3.mEnterAnim);
                    }
                    Fragment.AnimationInfo animationInfo4 = fragment.mAnimationInfo;
                    if ((animationInfo4 == null ? 0 : animationInfo4.mExitAnim) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        Fragment.AnimationInfo animationInfo5 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo5 == null ? 0 : animationInfo5.mExitAnim);
                    }
                    Fragment.AnimationInfo animationInfo6 = fragment.mAnimationInfo;
                    if ((animationInfo6 == null ? 0 : animationInfo6.mPopEnterAnim) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        Fragment.AnimationInfo animationInfo7 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo7 == null ? 0 : animationInfo7.mPopEnterAnim);
                    }
                    Fragment.AnimationInfo animationInfo8 = fragment.mAnimationInfo;
                    if ((animationInfo8 == null ? 0 : animationInfo8.mPopExitAnim) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        Fragment.AnimationInfo animationInfo9 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo9 == null ? 0 : animationInfo9.mPopExitAnim);
                    }
                    if (fragment.mContainer != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(fragment.mContainer);
                    }
                    if (fragment.mView != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(fragment.mView);
                    }
                    if (fragment.getContext() != null) {
                        ViewModelStore viewModelStore = fragment.getViewModelStore();
                        FragmentManagerViewModel.AnonymousClass1 anonymousClass1 = LoaderManagerImpl$LoaderViewModel.FACTORY;
                        viewModelStore.getClass();
                        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
                        empty.getClass();
                        ImageLoader$Builder imageLoader$Builder2 = new ImageLoader$Builder(viewModelStore, anonymousClass1, empty);
                        KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(LoaderManagerImpl$LoaderViewModel.class);
                        String qualifiedName = orCreateKotlinClass.getQualifiedName();
                        if (qualifiedName == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
                            return;
                        }
                        SparseArrayCompat sparseArrayCompat = ((LoaderManagerImpl$LoaderViewModel) imageLoader$Builder2.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass)).mLoaders;
                        if (sparseArrayCompat.size() > 0) {
                            printWriter.print(str3);
                            printWriter.println("Loaders:");
                            if (sparseArrayCompat.size() > 0) {
                                if (sparseArrayCompat.valueAt(0) != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return;
                                }
                                printWriter.print(str3);
                                printWriter.print("  #");
                                printWriter.print(sparseArrayCompat.keyAt(0));
                                printWriter.print(": ");
                                throw null;
                            }
                        }
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + fragment.mChildFragmentManager + ":");
                    fragment.mChildFragmentManager.dump(str3.concat("  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size2 = arrayList.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size2; i++) {
                Fragment fragment2 = (Fragment) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.mCreatedMenus;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment3 = (Fragment) this.mCreatedMenus.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        int size3 = this.mBackStack.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.mBackStackIndex.get());
        synchronized (this.mPendingActions) {
            try {
                int size4 = this.mPendingActions.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (FragmentManager$OpGenerator) this.mPendingActions.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
    }

    public final void endAnimatingAwayFragments() {
        Iterator it = collectAllSpecialEffectsController().iterator();
        while (it.hasNext()) {
            ((DefaultSpecialEffectsController) it.next()).forceCompleteAllOperations();
        }
    }

    public final void enqueueAction(FragmentManager$OpGenerator fragmentManager$OpGenerator, boolean z) {
        if (!z) {
            if (this.mHost == null) {
                if (this.mDestroyed) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("FragmentManager has been destroyed");
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("FragmentManager has not been attached to a host.");
                    return;
                }
            }
            if (isStateSaved()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can not perform this action after onSaveInstanceState");
                return;
            }
        }
        synchronized (this.mPendingActions) {
            try {
                if (this.mHost == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.mPendingActions.add(fragmentManager$OpGenerator);
                    scheduleCommit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ensureExecReady(boolean z) {
        if (this.mExecutingActions) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("FragmentManager is already executing transactions");
            return;
        }
        if (this.mHost == null) {
            if (this.mDestroyed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("FragmentManager has been destroyed");
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("FragmentManager has not been attached to a host.");
                return;
            }
        }
        if (Looper.myLooper() != this.mHost.handler.getLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Must be called from main thread of fragment host");
            return;
        }
        if (!z && isStateSaved()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can not perform this action after onSaveInstanceState");
        } else if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList();
            this.mTmpIsPop = new ArrayList();
        }
    }

    public final boolean execPendingActions(boolean z) {
        boolean z2;
        ArrayList arrayList;
        BackStackRecord backStackRecord;
        ensureExecReady(z);
        if (!this.mHandlingTransitioningOp && (backStackRecord = this.mTransitioningOp) != null) {
            backStackRecord.mCommitted = false;
            backStackRecord.collapseOps();
            if (isLoggingEnabled(3)) {
                Log.d("FragmentManager", "Reversing mTransitioningOp " + this.mTransitioningOp + " as part of execPendingActions for actions " + this.mPendingActions);
            }
            this.mTransitioningOp.commitInternal(false, false);
            this.mPendingActions.add(0, this.mTransitioningOp);
            Iterator it = this.mTransitioningOp.mOps.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction$Op) it.next()).mFragment;
                if (fragment != null) {
                    fragment.mTransitioning = false;
                }
            }
            this.mTransitioningOp = null;
        }
        boolean z3 = false;
        while (true) {
            ArrayList arrayList2 = this.mTmpRecords;
            ArrayList arrayList3 = this.mTmpIsPop;
            synchronized (this.mPendingActions) {
                if (this.mPendingActions.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size = this.mPendingActions.size();
                        int i = 0;
                        z2 = false;
                        while (true) {
                            arrayList = this.mPendingActions;
                            if (i >= size) {
                                break;
                            }
                            z2 |= ((FragmentManager$OpGenerator) arrayList.get(i)).generateOps(arrayList2, arrayList3);
                            i++;
                        }
                        arrayList.clear();
                        this.mHost.handler.removeCallbacks(this.mExecCommit);
                    } finally {
                    }
                }
            }
            if (!z2) {
                break;
            }
            z3 = true;
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
        ((HashMap) this.mFragmentStore.defaults).values().removeAll(Collections.singleton(null));
        return z3;
    }

    public final void execSingleAction(BackStackRecord backStackRecord, boolean z) {
        if (z && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        ensureExecReady(z);
        BackStackRecord backStackRecord2 = this.mTransitioningOp;
        if (backStackRecord2 != null) {
            backStackRecord2.mCommitted = false;
            backStackRecord2.collapseOps();
            if (isLoggingEnabled(3)) {
                Log.d("FragmentManager", "Reversing mTransitioningOp " + this.mTransitioningOp + " as part of execSingleAction for action " + backStackRecord);
            }
            this.mTransitioningOp.commitInternal(false, false);
            this.mTransitioningOp.generateOps(this.mTmpRecords, this.mTmpIsPop);
            Iterator it = this.mTransitioningOp.mOps.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction$Op) it.next()).mFragment;
                if (fragment != null) {
                    fragment.mTransitioning = false;
                }
            }
            this.mTransitioningOp = null;
        }
        backStackRecord.generateOps(this.mTmpRecords, this.mTmpIsPop);
        this.mExecutingActions = true;
        try {
            removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            cleanupExec();
            updateOnBackPressedCallbackEnabled();
            if (this.mHavePendingDeferredStart) {
                this.mHavePendingDeferredStart = false;
                startPendingDeferredFragments();
            }
            ((HashMap) this.mFragmentStore.defaults).values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            cleanupExec();
            throw th;
        }
    }

    public final void executeOpsTogether(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        Object obj;
        String str;
        ArrayList arrayList3;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        ArrayList arrayList4;
        int i4;
        int i5;
        int i6 = i;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        ArrayList arrayList5 = this.mBackStackChangeListeners;
        boolean z4 = ((BackStackRecord) arrayList.get(i6)).mReorderingAllowed;
        ArrayList arrayList6 = this.mTmpAddedFragments;
        if (arrayList6 == null) {
            this.mTmpAddedFragments = new ArrayList();
        } else {
            arrayList6.clear();
        }
        this.mTmpAddedFragments.addAll(imageLoader$Builder.getFragments());
        Fragment fragment = this.mPrimaryNav;
        int i7 = i6;
        boolean z5 = false;
        while (i7 < i2) {
            BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i7);
            boolean booleanValue = ((Boolean) arrayList2.get(i7)).booleanValue();
            ArrayList arrayList7 = this.mTmpAddedFragments;
            if (booleanValue) {
                arrayList3 = arrayList5;
                z = z4;
                i3 = i7;
                z2 = z5;
                int i8 = 1;
                ArrayList arrayList8 = backStackRecord.mOps;
                int size = arrayList8.size() - 1;
                while (size >= 0) {
                    FragmentTransaction$Op fragmentTransaction$Op = (FragmentTransaction$Op) arrayList8.get(size);
                    int i9 = fragmentTransaction$Op.mCmd;
                    if (i9 != i8) {
                        if (i9 != 3) {
                            switch (i9) {
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = fragmentTransaction$Op.mFragment;
                                    break;
                                case 10:
                                    fragmentTransaction$Op.mCurrentMaxState = fragmentTransaction$Op.mOldMaxState;
                                    break;
                            }
                            size--;
                            i8 = 1;
                        }
                        arrayList7.add(fragmentTransaction$Op.mFragment);
                        size--;
                        i8 = 1;
                    }
                    arrayList7.remove(fragmentTransaction$Op.mFragment);
                    size--;
                    i8 = 1;
                }
            } else {
                ArrayList arrayList9 = backStackRecord.mOps;
                int i10 = 0;
                while (i10 < arrayList9.size()) {
                    FragmentTransaction$Op fragmentTransaction$Op2 = (FragmentTransaction$Op) arrayList9.get(i10);
                    boolean z6 = z4;
                    int i11 = fragmentTransaction$Op2.mCmd;
                    int i12 = i7;
                    int i13 = 1;
                    if (i11 != 1) {
                        z3 = z5;
                        if (i11 == 2) {
                            Fragment fragment2 = fragmentTransaction$Op2.mFragment;
                            int i14 = fragment2.mContainerId;
                            int size2 = arrayList7.size() - 1;
                            boolean z7 = false;
                            while (size2 >= 0) {
                                int i15 = size2;
                                Fragment fragment3 = (Fragment) arrayList7.get(size2);
                                ArrayList arrayList10 = arrayList5;
                                if (fragment3.mContainerId != i14) {
                                    i4 = i14;
                                } else if (fragment3 == fragment2) {
                                    i4 = i14;
                                    z7 = true;
                                } else {
                                    if (fragment3 == fragment) {
                                        i4 = i14;
                                        arrayList9.add(i10, new FragmentTransaction$Op(9, fragment3, 0));
                                        i10++;
                                        i5 = 0;
                                        fragment = null;
                                    } else {
                                        i4 = i14;
                                        i5 = 0;
                                    }
                                    FragmentTransaction$Op fragmentTransaction$Op3 = new FragmentTransaction$Op(3, fragment3, i5);
                                    fragmentTransaction$Op3.mEnterAnim = fragmentTransaction$Op2.mEnterAnim;
                                    fragmentTransaction$Op3.mPopEnterAnim = fragmentTransaction$Op2.mPopEnterAnim;
                                    fragmentTransaction$Op3.mExitAnim = fragmentTransaction$Op2.mExitAnim;
                                    fragmentTransaction$Op3.mPopExitAnim = fragmentTransaction$Op2.mPopExitAnim;
                                    arrayList9.add(i10, fragmentTransaction$Op3);
                                    arrayList7.remove(fragment3);
                                    i10++;
                                    fragment = fragment;
                                }
                                size2 = i15 - 1;
                                i14 = i4;
                                arrayList5 = arrayList10;
                            }
                            arrayList4 = arrayList5;
                            i13 = 1;
                            if (z7) {
                                arrayList9.remove(i10);
                                i10--;
                            } else {
                                fragmentTransaction$Op2.mCmd = 1;
                                fragmentTransaction$Op2.mFromExpandedOp = true;
                                arrayList7.add(fragment2);
                            }
                        } else if (i11 == 3 || i11 == 6) {
                            arrayList7.remove(fragmentTransaction$Op2.mFragment);
                            Fragment fragment4 = fragmentTransaction$Op2.mFragment;
                            if (fragment4 == fragment) {
                                arrayList9.add(i10, new FragmentTransaction$Op(9, fragment4));
                                i10++;
                                arrayList4 = arrayList5;
                                fragment = null;
                                i13 = 1;
                            }
                            arrayList4 = arrayList5;
                            i13 = 1;
                        } else if (i11 != 7) {
                            if (i11 == 8) {
                                arrayList9.add(i10, new FragmentTransaction$Op(9, fragment, 0));
                                fragmentTransaction$Op2.mFromExpandedOp = true;
                                i10++;
                                arrayList4 = arrayList5;
                                fragment = fragmentTransaction$Op2.mFragment;
                                i13 = 1;
                            }
                            arrayList4 = arrayList5;
                            i13 = 1;
                        } else {
                            i13 = 1;
                        }
                        i10 += i13;
                        z4 = z6;
                        i7 = i12;
                        z5 = z3;
                        arrayList5 = arrayList4;
                    } else {
                        z3 = z5;
                    }
                    arrayList4 = arrayList5;
                    arrayList7.add(fragmentTransaction$Op2.mFragment);
                    i10 += i13;
                    z4 = z6;
                    i7 = i12;
                    z5 = z3;
                    arrayList5 = arrayList4;
                }
                arrayList3 = arrayList5;
                z = z4;
                i3 = i7;
                z2 = z5;
            }
            z5 = z2 || backStackRecord.mAddToBackStack;
            i7 = i3 + 1;
            z4 = z;
            arrayList5 = arrayList3;
        }
        ArrayList arrayList11 = arrayList5;
        boolean z8 = z4;
        boolean z9 = z5;
        this.mTmpAddedFragments.clear();
        if (!z8 && this.mCurState >= 1) {
            for (int i16 = i6; i16 < i2; i16++) {
                Iterator it = ((BackStackRecord) arrayList.get(i16)).mOps.iterator();
                while (it.hasNext()) {
                    Fragment fragment5 = ((FragmentTransaction$Op) it.next()).mFragment;
                    if (fragment5 != null && fragment5.mFragmentManager != null) {
                        imageLoader$Builder.makeActive(createOrGetFragmentStateManager(fragment5));
                    }
                }
            }
        }
        String str2 = "Unknown cmd: ";
        int i17 = i6;
        while (i17 < i2) {
            BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i17);
            if (((Boolean) arrayList2.get(i17)).booleanValue()) {
                backStackRecord2.bumpBackStackNesting(-1);
                FragmentManagerImpl fragmentManagerImpl = backStackRecord2.mManager;
                ArrayList arrayList12 = backStackRecord2.mOps;
                boolean z10 = true;
                for (int size3 = arrayList12.size() - 1; size3 >= 0; size3--) {
                    FragmentTransaction$Op fragmentTransaction$Op4 = (FragmentTransaction$Op) arrayList12.get(size3);
                    Fragment fragment6 = fragmentTransaction$Op4.mFragment;
                    if (fragment6 != null) {
                        if (fragment6.mAnimationInfo != null) {
                            fragment6.ensureAnimationInfo().mIsPop = z10;
                        }
                        int i18 = backStackRecord2.mTransition;
                        int i19 = 8194;
                        int i20 = 4097;
                        if (i18 != 4097) {
                            if (i18 != 8194) {
                                i19 = 4100;
                                if (i18 != 8197) {
                                    i20 = 4099;
                                    if (i18 != 4099) {
                                        i19 = i18 != 4100 ? 0 : 8197;
                                    }
                                }
                            }
                            i19 = i20;
                        }
                        if (fragment6.mAnimationInfo != null || i19 != 0) {
                            fragment6.ensureAnimationInfo();
                            fragment6.mAnimationInfo.mNextTransition = i19;
                        }
                        fragment6.ensureAnimationInfo();
                        fragment6.mAnimationInfo.getClass();
                    }
                    switch (fragmentTransaction$Op4.mCmd) {
                        case 1:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            z10 = true;
                            fragmentManagerImpl.setExitAnimationOrder(fragment6, true);
                            fragmentManagerImpl.removeFragment(fragment6);
                        case 2:
                        default:
                            TimeSource$Companion$$ExternalSyntheticLambda0.m(fragmentTransaction$Op4.mCmd, str2);
                            return;
                        case 3:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManagerImpl.addFragment(fragment6);
                            z10 = true;
                        case 4:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManagerImpl.getClass();
                            showFragment(fragment6);
                            z10 = true;
                        case 5:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManagerImpl.setExitAnimationOrder(fragment6, true);
                            fragmentManagerImpl.hideFragment(fragment6);
                            z10 = true;
                        case 6:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManagerImpl.attachFragment(fragment6);
                            z10 = true;
                        case 7:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManagerImpl.setExitAnimationOrder(fragment6, true);
                            fragmentManagerImpl.detachFragment(fragment6);
                            z10 = true;
                        case 8:
                            fragmentManagerImpl.setPrimaryNavigationFragment(null);
                            z10 = true;
                        case 9:
                            fragmentManagerImpl.setPrimaryNavigationFragment(fragment6);
                            z10 = true;
                        case 10:
                            fragmentTransaction$Op4.mCurrentMaxState = fragment6.mMaxState;
                            fragmentManagerImpl.setMaxLifecycle(fragment6, fragmentTransaction$Op4.mOldMaxState);
                            z10 = true;
                    }
                }
            } else {
                backStackRecord2.bumpBackStackNesting(1);
                FragmentManagerImpl fragmentManagerImpl2 = backStackRecord2.mManager;
                ArrayList arrayList13 = backStackRecord2.mOps;
                int size4 = arrayList13.size();
                int i21 = 0;
                while (i21 < size4) {
                    FragmentTransaction$Op fragmentTransaction$Op5 = (FragmentTransaction$Op) arrayList13.get(i21);
                    Fragment fragment7 = fragmentTransaction$Op5.mFragment;
                    if (fragment7 != null) {
                        if (fragment7.mAnimationInfo != null) {
                            fragment7.ensureAnimationInfo().mIsPop = false;
                        }
                        int i22 = backStackRecord2.mTransition;
                        if (fragment7.mAnimationInfo != null || i22 != 0) {
                            fragment7.ensureAnimationInfo();
                            fragment7.mAnimationInfo.mNextTransition = i22;
                        }
                        fragment7.ensureAnimationInfo();
                        fragment7.mAnimationInfo.getClass();
                    }
                    switch (fragmentTransaction$Op5.mCmd) {
                        case 1:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.setExitAnimationOrder(fragment7, false);
                            fragmentManagerImpl2.addFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 2:
                        default:
                            TimeSource$Companion$$ExternalSyntheticLambda0.m(fragmentTransaction$Op5.mCmd, str2);
                            return;
                        case 3:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.removeFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 4:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.hideFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 5:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.setExitAnimationOrder(fragment7, false);
                            showFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 6:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.detachFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 7:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManagerImpl2.setExitAnimationOrder(fragment7, false);
                            fragmentManagerImpl2.attachFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 8:
                            fragmentManagerImpl2.setPrimaryNavigationFragment(fragment7);
                            str = str2;
                            i21++;
                            str2 = str;
                        case 9:
                            fragmentManagerImpl2.setPrimaryNavigationFragment(null);
                            str = str2;
                            i21++;
                            str2 = str;
                        case 10:
                            fragmentTransaction$Op5.mOldMaxState = fragment7.mMaxState;
                            fragmentManagerImpl2.setMaxLifecycle(fragment7, fragmentTransaction$Op5.mCurrentMaxState);
                            str = str2;
                            i21++;
                            str2 = str;
                    }
                }
            }
            i17++;
            str2 = str2;
        }
        boolean booleanValue2 = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
        if (z9 && !arrayList11.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedHashSet.addAll(fragmentsFromRecord((BackStackRecord) it2.next()));
            }
            if (this.mTransitioningOp == null) {
                Iterator it3 = arrayList11.iterator();
                while (it3.hasNext()) {
                    if (it3.next() != null) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                        return;
                    }
                    Iterator it4 = linkedHashSet.iterator();
                    if (it4.hasNext()) {
                        throw null;
                    }
                }
                Iterator it5 = arrayList11.iterator();
                while (it5.hasNext()) {
                    if (it5.next() != null) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                        return;
                    }
                    Iterator it6 = linkedHashSet.iterator();
                    if (it6.hasNext()) {
                        throw null;
                    }
                }
            }
        }
        for (int i23 = i6; i23 < i2; i23++) {
            BackStackRecord backStackRecord3 = (BackStackRecord) arrayList.get(i23);
            if (booleanValue2) {
                for (int size5 = backStackRecord3.mOps.size() - 1; size5 >= 0; size5--) {
                    Fragment fragment8 = ((FragmentTransaction$Op) backStackRecord3.mOps.get(size5)).mFragment;
                    if (fragment8 != null) {
                        createOrGetFragmentStateManager(fragment8).moveToExpectedState();
                    }
                }
            } else {
                Iterator it7 = backStackRecord3.mOps.iterator();
                while (it7.hasNext()) {
                    Fragment fragment9 = ((FragmentTransaction$Op) it7.next()).mFragment;
                    if (fragment9 != null) {
                        createOrGetFragmentStateManager(fragment9).moveToExpectedState();
                    }
                }
            }
        }
        moveToState(this.mCurState, true);
        Iterator it8 = collectChangedControllers(arrayList, i6, i2).iterator();
        while (it8.hasNext()) {
            DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it8.next();
            defaultSpecialEffectsController.operationDirectionIsPop = booleanValue2;
            synchronized (defaultSpecialEffectsController.pendingOperations) {
                try {
                    defaultSpecialEffectsController.updateFinalState();
                    ArrayList arrayList14 = defaultSpecialEffectsController.pendingOperations;
                    ListIterator listIterator = arrayList14.listIterator(arrayList14.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            obj = listIterator.previous();
                            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) obj;
                            SpecialEffectsController$Operation$State.Companion companion = SpecialEffectsController$Operation$State.Companion;
                            View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
                            view.getClass();
                            companion.getClass();
                            SpecialEffectsController$Operation$State asOperationState = SpecialEffectsController$Operation$State.Companion.asOperationState(view);
                            SpecialEffectsController$Operation$State specialEffectsController$Operation$State = specialEffectsController$FragmentStateManagerOperation.finalState;
                            SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.VISIBLE;
                            if (specialEffectsController$Operation$State != specialEffectsController$Operation$State2 || asOperationState == specialEffectsController$Operation$State2) {
                            }
                        } else {
                            obj = null;
                        }
                    }
                    defaultSpecialEffectsController.isContainerPostponed = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            defaultSpecialEffectsController.executePendingOperations();
        }
        while (i6 < i2) {
            BackStackRecord backStackRecord4 = (BackStackRecord) arrayList.get(i6);
            if (((Boolean) arrayList2.get(i6)).booleanValue() && backStackRecord4.mIndex >= 0) {
                backStackRecord4.mIndex = -1;
            }
            if (backStackRecord4.mCommitRunnables != null) {
                for (int i24 = 0; i24 < backStackRecord4.mCommitRunnables.size(); i24++) {
                    ((Runnable) backStackRecord4.mCommitRunnables.get(i24)).run();
                }
                backStackRecord4.mCommitRunnables = null;
            }
            i6++;
        }
        if (!z9 || arrayList11.size() <= 0) {
            return;
        }
        arrayList11.get(0).getClass();
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
    }

    public final Fragment findFragmentById(int i) {
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) imageLoader$Builder.application;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : ((HashMap) imageLoader$Builder.defaults).values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.mFragment;
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment findFragmentByTag(String str) {
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) imageLoader$Builder.application;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && str.equals(fragment.mTag)) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : ((HashMap) imageLoader$Builder.defaults).values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.mFragment;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void forcePostponedTransactions() {
        Iterator it = collectAllSpecialEffectsController().iterator();
        while (it.hasNext()) {
            DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it.next();
            if (defaultSpecialEffectsController.isContainerPostponed) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                defaultSpecialEffectsController.isContainerPostponed = false;
                defaultSpecialEffectsController.executePendingOperations();
            }
        }
    }

    public final ViewGroup getFragmentContainer(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.mContainer.onHasView()) {
            return null;
        }
        View onFindViewById = this.mContainer.onFindViewById(fragment.mContainerId);
        if (onFindViewById instanceof ViewGroup) {
            return (ViewGroup) onFindViewById;
        }
        return null;
    }

    public final FragmentManager$3 getFragmentFactory() {
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getFragmentFactory() : this.mHostFragmentFactory;
    }

    public final AutoMigration_14_15 getSpecialEffectsControllerFactory() {
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getSpecialEffectsControllerFactory() : this.mDefaultSpecialEffectsControllerFactory;
    }

    public final void hideFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        setVisibleRemovingFragment(fragment);
    }

    public final boolean isParentAdded() {
        Fragment fragment = this.mParent;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.mParent.getParentFragmentManager().isParentAdded();
    }

    public final boolean isStateSaved() {
        return this.mStateSaved || this.mStopped;
    }

    public final void moveToState(int i, boolean z) {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks;
        if (this.mHost == null && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No activity");
            return;
        }
        if (z || i != this.mCurState) {
            this.mCurState = i;
            ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
            HashMap hashMap = (HashMap) imageLoader$Builder.defaults;
            Iterator it = ((ArrayList) imageLoader$Builder.application).iterator();
            while (it.hasNext()) {
                FragmentStateManager fragmentStateManager = (FragmentStateManager) hashMap.get(((Fragment) it.next()).mWho);
                if (fragmentStateManager != null) {
                    fragmentStateManager.moveToExpectedState();
                }
            }
            for (FragmentStateManager fragmentStateManager2 : hashMap.values()) {
                if (fragmentStateManager2 != null) {
                    fragmentStateManager2.moveToExpectedState();
                    Fragment fragment = fragmentStateManager2.mFragment;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        imageLoader$Builder.makeInactive(fragmentStateManager2);
                    }
                }
            }
            startPendingDeferredFragments();
            if (this.mNeedMenuInvalidate && (fragmentActivity$HostCallbacks = this.mHost) != null && this.mCurState == 7) {
                fragmentActivity$HostCallbacks.this$0.invalidateOptionsMenu();
                this.mNeedMenuInvalidate = false;
            }
        }
    }

    public final void noteStateNotSaved() {
        if (this.mHost == null) {
            return;
        }
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.mIsStateSaved = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.mChildFragmentManager.noteStateNotSaved();
            }
        }
    }

    public final boolean popBackStackImmediate(int i, int i2) {
        execPendingActions(false);
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i < 0 && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean popBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, i, i2);
        if (popBackStackState) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
        ((HashMap) this.mFragmentStore.defaults).values().removeAll(Collections.singleton(null));
        return popBackStackState;
    }

    public final boolean popBackStackState(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z = (i2 & 1) != 0;
        int i3 = -1;
        if (!this.mBackStack.isEmpty()) {
            if (i < 0) {
                i3 = z ? 0 : this.mBackStack.size() - 1;
            } else {
                int size = this.mBackStack.size() - 1;
                while (size >= 0) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(size);
                    if (i >= 0 && i == backStackRecord.mIndex) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    i3 = size;
                } else if (z) {
                    i3 = size;
                    while (i3 > 0) {
                        BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStack.get(i3 - 1);
                        if (i < 0 || i != backStackRecord2.mIndex) {
                            break;
                        }
                        i3--;
                    }
                } else if (size != this.mBackStack.size() - 1) {
                    i3 = size + 1;
                }
            }
        }
        if (i3 < 0) {
            return false;
        }
        for (int size2 = this.mBackStack.size() - 1; size2 >= i3; size2--) {
            arrayList.add((BackStackRecord) this.mBackStack.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void registerFragmentLifecycleCallbacks(OperationKt operationKt, boolean z) {
        AndroidSvg androidSvg = this.mLifecycleCallbacksDispatcher;
        androidSvg.getClass();
        ((CopyOnWriteArrayList) androidSvg.renderOptions).add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(operationKt, z));
    }

    public final void removeFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && isInBackStack) {
            return;
        }
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        synchronized (((ArrayList) imageLoader$Builder.application)) {
            ((ArrayList) imageLoader$Builder.application).remove(fragment);
        }
        fragment.mAdded = false;
        if (isMenuAvailable(fragment)) {
            this.mNeedMenuInvalidate = true;
        }
        fragment.mRemoving = true;
        setVisibleRemovingFragment(fragment);
    }

    public final void removeRedundantOperationsAndExecute(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Internal error with the back stack records");
            return;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((BackStackRecord) arrayList.get(i)).mReorderingAllowed) {
                if (i2 != i) {
                    executeOpsTogether(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((BackStackRecord) arrayList.get(i2)).mReorderingAllowed) {
                        i2++;
                    }
                }
                executeOpsTogether(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            executeOpsTogether(arrayList, arrayList2, i2, size);
        }
    }

    public final void restoreSaveStateInternal(Bundle bundle) {
        AndroidSvg androidSvg;
        int i;
        boolean z;
        int i2;
        FragmentStateManager fragmentStateManager;
        Bundle bundle2;
        Bundle bundle3;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle3 = bundle.getBundle(str)) != null) {
                bundle3.setClassLoader(this.mHost.context.getClassLoader());
                this.mResults.put(str.substring(7), bundle3);
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle2 = bundle.getBundle(str2)) != null) {
                bundle2.setClassLoader(this.mHost.context.getClassLoader());
                hashMap.put(str2.substring(9), bundle2);
            }
        }
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        HashMap hashMap2 = (HashMap) imageLoader$Builder.componentRegistry;
        HashMap hashMap3 = (HashMap) imageLoader$Builder.defaults;
        hashMap2.clear();
        hashMap2.putAll(hashMap);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        hashMap3.clear();
        Iterator it = fragmentManagerState.mActive.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            androidSvg = this.mLifecycleCallbacksDispatcher;
            i = 2;
            if (!hasNext) {
                break;
            }
            Bundle savedState = imageLoader$Builder.setSavedState(null, (String) it.next());
            if (savedState != null) {
                Fragment fragment = (Fragment) this.mNonConfig.mRetainedFragments.get(((FragmentState) savedState.getParcelable("state")).mWho);
                if (fragment != null) {
                    if (isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    fragmentStateManager = new FragmentStateManager(androidSvg, imageLoader$Builder, fragment, savedState);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, this.mHost.context.getClassLoader(), getFragmentFactory(), savedState);
                }
                Fragment fragment2 = fragmentStateManager.mFragment;
                fragment2.mSavedFragmentState = savedState;
                fragment2.mFragmentManager = this;
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragment2.mWho + "): " + fragment2);
                }
                fragmentStateManager.restoreState(this.mHost.context.getClassLoader());
                imageLoader$Builder.makeActive(fragmentStateManager);
                fragmentStateManager.mFragmentManagerState = this.mCurState;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.mNonConfig;
        fragmentManagerViewModel.getClass();
        Iterator it2 = new ArrayList(fragmentManagerViewModel.mRetainedFragments.values()).iterator();
        while (true) {
            z = true;
            if (!it2.hasNext()) {
                break;
            }
            Fragment fragment3 = (Fragment) it2.next();
            if (hashMap3.get(fragment3.mWho) == null) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + fragmentManagerState.mActive);
                }
                this.mNonConfig.removeRetainedFragment(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(androidSvg, imageLoader$Builder, fragment3);
                fragmentStateManager2.mFragmentManagerState = 1;
                fragmentStateManager2.moveToExpectedState();
                fragment3.mRemoving = true;
                fragmentStateManager2.moveToExpectedState();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.mAdded;
        ((ArrayList) imageLoader$Builder.application).clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                Fragment findActiveFragment = imageLoader$Builder.findActiveFragment(str3);
                if (findActiveFragment == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m("No instantiated fragment for (", str3, ")"));
                    return;
                }
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + findActiveFragment);
                }
                imageLoader$Builder.addFragment(findActiveFragment);
            }
        }
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
            int i3 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.mBackStack;
                if (i3 >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecordState backStackRecordState = backStackRecordStateArr[i3];
                ArrayList arrayList2 = backStackRecordState.mFragmentWhos;
                BackStackRecord backStackRecord = new BackStackRecord(this);
                int[] iArr = backStackRecordState.mOps;
                int i4 = 0;
                int i5 = 0;
                while (i4 < iArr.length) {
                    FragmentTransaction$Op fragmentTransaction$Op = new FragmentTransaction$Op();
                    int i6 = i4 + 1;
                    int i7 = i;
                    fragmentTransaction$Op.mCmd = iArr[i4];
                    if (isLoggingEnabled(i7)) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i5 + " base fragment #" + iArr[i6]);
                    }
                    fragmentTransaction$Op.mOldMaxState = Lifecycle$State.values()[backStackRecordState.mOldMaxLifecycleStates[i5]];
                    fragmentTransaction$Op.mCurrentMaxState = Lifecycle$State.values()[backStackRecordState.mCurrentMaxLifecycleStates[i5]];
                    int i8 = i4 + 2;
                    fragmentTransaction$Op.mFromExpandedOp = iArr[i6] != 0 ? z : false;
                    int i9 = iArr[i8];
                    fragmentTransaction$Op.mEnterAnim = i9;
                    int i10 = iArr[i4 + 3];
                    fragmentTransaction$Op.mExitAnim = i10;
                    int i11 = i4 + 5;
                    int i12 = iArr[i4 + 4];
                    fragmentTransaction$Op.mPopEnterAnim = i12;
                    i4 += 6;
                    int[] iArr2 = iArr;
                    int i13 = iArr2[i11];
                    fragmentTransaction$Op.mPopExitAnim = i13;
                    backStackRecord.mEnterAnim = i9;
                    backStackRecord.mExitAnim = i10;
                    backStackRecord.mPopEnterAnim = i12;
                    backStackRecord.mPopExitAnim = i13;
                    backStackRecord.addOp(fragmentTransaction$Op);
                    i5++;
                    i = i7;
                    iArr = iArr2;
                    z = true;
                }
                int i14 = i;
                backStackRecord.mTransition = backStackRecordState.mTransition;
                backStackRecord.mName = backStackRecordState.mName;
                backStackRecord.mAddToBackStack = true;
                backStackRecord.mBreadCrumbTitleRes = backStackRecordState.mBreadCrumbTitleRes;
                backStackRecord.mBreadCrumbTitleText = backStackRecordState.mBreadCrumbTitleText;
                backStackRecord.mBreadCrumbShortTitleRes = backStackRecordState.mBreadCrumbShortTitleRes;
                backStackRecord.mBreadCrumbShortTitleText = backStackRecordState.mBreadCrumbShortTitleText;
                backStackRecord.mSharedElementSourceNames = backStackRecordState.mSharedElementSourceNames;
                backStackRecord.mSharedElementTargetNames = backStackRecordState.mSharedElementTargetNames;
                backStackRecord.mReorderingAllowed = backStackRecordState.mReorderingAllowed;
                backStackRecord.mIndex = backStackRecordState.mIndex;
                for (int i15 = 0; i15 < arrayList2.size(); i15++) {
                    String str4 = (String) arrayList2.get(i15);
                    if (str4 != null) {
                        ((FragmentTransaction$Op) backStackRecord.mOps.get(i15)).mFragment = imageLoader$Builder.findActiveFragment(str4);
                    }
                }
                backStackRecord.bumpBackStackNesting(1);
                if (isLoggingEnabled(i14)) {
                    StringBuilder m20m = Animation.CC.m20m(i3, "restoreAllState: back stack #", " (index ");
                    m20m.append(backStackRecord.mIndex);
                    m20m.append("): ");
                    m20m.append(backStackRecord);
                    Log.v("FragmentManager", m20m.toString());
                    PrintWriter printWriter = new PrintWriter(new LogWriter());
                    backStackRecord.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.mBackStack.add(backStackRecord);
                i3++;
                i = i14;
                z = true;
            }
            i2 = 0;
        } else {
            i2 = 0;
            this.mBackStack = new ArrayList();
        }
        this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
        String str5 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str5 != null) {
            Fragment findActiveFragment2 = imageLoader$Builder.findActiveFragment(str5);
            this.mPrimaryNav = findActiveFragment2;
            dispatchParentPrimaryNavigationFragmentChanged(findActiveFragment2);
        }
        ArrayList arrayList3 = fragmentManagerState.mBackStackStateKeys;
        if (arrayList3 != null) {
            for (int i16 = i2; i16 < arrayList3.size(); i16++) {
                this.mBackStackStates.put((String) arrayList3.get(i16), (BackStackState) fragmentManagerState.mBackStackStates.get(i16));
            }
        }
        this.mLaunchedFragments = new ArrayDeque(fragmentManagerState.mLaunchedFragments);
    }

    public final Bundle saveAllStateInternal() {
        ArrayList arrayList;
        BackStackRecordState[] backStackRecordStateArr;
        Bundle bundle = new Bundle();
        forcePostponedTransactions();
        endAnimatingAwayFragments();
        execPendingActions(true);
        this.mStateSaved = true;
        this.mNonConfig.mIsStateSaved = true;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        imageLoader$Builder.getClass();
        HashMap hashMap = (HashMap) imageLoader$Builder.defaults;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (FragmentStateManager fragmentStateManager : hashMap.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.mFragment;
                imageLoader$Builder.setSavedState(fragmentStateManager.saveState(), fragment.mWho);
                arrayList2.add(fragment.mWho);
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragment.mSavedFragmentState);
                }
            }
        }
        HashMap hashMap2 = (HashMap) this.mFragmentStore.componentRegistry;
        if (!hashMap2.isEmpty()) {
            ImageLoader$Builder imageLoader$Builder2 = this.mFragmentStore;
            synchronized (((ArrayList) imageLoader$Builder2.application)) {
                try {
                    if (((ArrayList) imageLoader$Builder2.application).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) imageLoader$Builder2.application).size());
                        Iterator it = ((ArrayList) imageLoader$Builder2.application).iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = (Fragment) it.next();
                            arrayList.add(fragment2.mWho);
                            if (isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment2.mWho + "): " + fragment2);
                            }
                        }
                    }
                } finally {
                }
            }
            int size = this.mBackStack.size();
            if (size > 0) {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i = 0; i < size; i++) {
                    backStackRecordStateArr[i] = new BackStackRecordState((BackStackRecord) this.mBackStack.get(i));
                    if (isLoggingEnabled(2)) {
                        StringBuilder m20m = Animation.CC.m20m(i, "saveAllState: adding back stack #", ": ");
                        m20m.append(this.mBackStack.get(i));
                        Log.v("FragmentManager", m20m.toString());
                    }
                }
            } else {
                backStackRecordStateArr = null;
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mPrimaryNavActiveWho = null;
            ArrayList arrayList3 = new ArrayList();
            fragmentManagerState.mBackStackStateKeys = arrayList3;
            ArrayList arrayList4 = new ArrayList();
            fragmentManagerState.mBackStackStates = arrayList4;
            fragmentManagerState.mActive = arrayList2;
            fragmentManagerState.mAdded = arrayList;
            fragmentManagerState.mBackStack = backStackRecordStateArr;
            fragmentManagerState.mBackStackIndex = this.mBackStackIndex.get();
            Fragment fragment3 = this.mPrimaryNav;
            if (fragment3 != null) {
                fragmentManagerState.mPrimaryNavActiveWho = fragment3.mWho;
            }
            arrayList3.addAll(this.mBackStackStates.keySet());
            arrayList4.addAll(this.mBackStackStates.values());
            fragmentManagerState.mLaunchedFragments = new ArrayList(this.mLaunchedFragments);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.mResults.keySet()) {
                bundle.putBundle(Modifier.CC.m("result_", str), (Bundle) this.mResults.get(str));
            }
            for (String str2 : hashMap2.keySet()) {
                bundle.putBundle(Modifier.CC.m("fragment_", str2), (Bundle) hashMap2.get(str2));
            }
        } else if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle;
        }
        return bundle;
    }

    public final void scheduleCommit() {
        synchronized (this.mPendingActions) {
            try {
                if (this.mPendingActions.size() == 1) {
                    this.mHost.handler.removeCallbacks(this.mExecCommit);
                    this.mHost.handler.post(this.mExecCommit);
                    updateOnBackPressedCallbackEnabled();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setExitAnimationOrder(Fragment fragment, boolean z) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer == null || !(fragmentContainer instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) fragmentContainer).setDrawDisappearingViewsLast(!z);
    }

    public final void setMaxLifecycle(Fragment fragment, Lifecycle$State lifecycle$State) {
        if (fragment == this.mFragmentStore.findActiveFragment(fragment.mWho) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = lifecycle$State;
        } else {
            Utils$$ExternalSyntheticBUOutline0.m("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment != null) {
            if (fragment != this.mFragmentStore.findActiveFragment(fragment.mWho) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                Utils$$ExternalSyntheticBUOutline0.m("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
                return;
            }
        }
        Fragment fragment2 = this.mPrimaryNav;
        this.mPrimaryNav = fragment;
        dispatchParentPrimaryNavigationFragmentChanged(fragment2);
        dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
    }

    public final void setVisibleRemovingFragment(Fragment fragment) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer != null) {
            Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
            if ((animationInfo == null ? 0 : animationInfo.mPopExitAnim) + (animationInfo == null ? 0 : animationInfo.mPopEnterAnim) + (animationInfo == null ? 0 : animationInfo.mExitAnim) + (animationInfo == null ? 0 : animationInfo.mEnterAnim) > 0) {
                if (fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    fragmentContainer.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                Fragment fragment2 = (Fragment) fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag);
                Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                boolean z = animationInfo2 != null ? animationInfo2.mIsPop : false;
                if (fragment2.mAnimationInfo == null) {
                    return;
                }
                fragment2.ensureAnimationInfo().mIsPop = z;
            }
        }
    }

    public final void startPendingDeferredFragments() {
        Iterator it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it.next();
            Fragment fragment = fragmentStateManager.mFragment;
            if (fragment.mDeferStart) {
                if (this.mExecutingActions) {
                    this.mHavePendingDeferredStart = true;
                } else {
                    fragment.mDeferStart = false;
                    fragmentStateManager.moveToExpectedState();
                }
            }
        }
    }

    public final void throwException(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter());
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            try {
                dump("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw illegalStateException;
            }
        }
        try {
            fragmentActivity$HostCallbacks.this$0.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw illegalStateException;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.mParent)));
            sb.append("}");
        } else {
            FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
            if (fragmentActivity$HostCallbacks != null) {
                sb.append(fragmentActivity$HostCallbacks.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.mHost)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        ((java.util.concurrent.CopyOnWriteArrayList) r4.renderOptions).remove(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void unregisterFragmentLifecycleCallbacks(androidx.work.OperationKt r5) {
        /*
            r4 = this;
            coil3.svg.internal.AndroidSvg r4 = r4.mLifecycleCallbacksDispatcher
            r4.getClass()
            java.lang.Object r0 = r4.renderOptions
            java.util.concurrent.CopyOnWriteArrayList r0 = (java.util.concurrent.CopyOnWriteArrayList) r0
            monitor-enter(r0)
            java.lang.Object r1 = r4.renderOptions     // Catch: java.lang.Throwable -> L2b
            java.util.concurrent.CopyOnWriteArrayList r1 = (java.util.concurrent.CopyOnWriteArrayList) r1     // Catch: java.lang.Throwable -> L2b
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L2b
            r2 = 0
        L13:
            if (r2 >= r1) goto L30
            java.lang.Object r3 = r4.renderOptions     // Catch: java.lang.Throwable -> L2b
            java.util.concurrent.CopyOnWriteArrayList r3 = (java.util.concurrent.CopyOnWriteArrayList) r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L2b
            androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder r3 = (androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) r3     // Catch: java.lang.Throwable -> L2b
            androidx.work.OperationKt r3 = r3.callback     // Catch: java.lang.Throwable -> L2b
            if (r3 != r5) goto L2d
            java.lang.Object r4 = r4.renderOptions     // Catch: java.lang.Throwable -> L2b
            java.util.concurrent.CopyOnWriteArrayList r4 = (java.util.concurrent.CopyOnWriteArrayList) r4     // Catch: java.lang.Throwable -> L2b
            r4.remove(r2)     // Catch: java.lang.Throwable -> L2b
            goto L30
        L2b:
            r4 = move-exception
            goto L32
        L2d:
            int r2 = r2 + 1
            goto L13
        L30:
            monitor-exit(r0)
            return
        L32:
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManagerImpl.unregisterFragmentLifecycleCallbacks(androidx.work.OperationKt):void");
    }

    public final void updateOnBackPressedCallbackEnabled() {
        synchronized (this.mPendingActions) {
            try {
                if (!this.mPendingActions.isEmpty()) {
                    this.mOnBackPressedCallback.setEnabled(true);
                    if (isLoggingEnabled(3)) {
                        Log.d("FragmentManager", "FragmentManager " + this + " enabling OnBackPressedCallback, caused by non-empty pending actions");
                    }
                    return;
                }
                boolean z = this.mBackStack.size() + (this.mTransitioningOp != null ? 1 : 0) > 0 && isPrimaryNavigation(this.mParent);
                if (isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z);
                }
                this.mOnBackPressedCallback.setEnabled(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean popBackStackImmediate() {
        return popBackStackImmediate(-1, 0);
    }
}
