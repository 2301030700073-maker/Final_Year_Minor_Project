package androidx.fragment.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.collection.SimpleArrayMap;
import androidx.collection.internal.Lock;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentState;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.ui.managefolders.FolderSettingsFragment;
import com.fsck.k9.ui.managefolders.FolderSettingsViewModel;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity$onCreateOptionsMenu$2;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
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
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FragmentManager {
    public FragmentContainer mContainer;
    public ArrayList mCreatedMenus;
    public boolean mDestroyed;
    public boolean mExecutingActions;
    public boolean mHavePendingDeferredStart;
    public FragmentActivity$HostCallbacks mHost;
    public boolean mNeedMenuInvalidate;
    public FragmentManagerViewModel mNonConfig;
    public OnBackPressedDispatcher mOnBackPressedDispatcher;
    public final FragmentManager$$ExternalSyntheticLambda2 mOnConfigurationChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda2 mOnMultiWindowModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda2 mOnPictureInPictureModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda2 mOnTrimMemoryListener;
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
    public final Dispatcher mFragmentStore = new Dispatcher(13);
    public ArrayList mBackStack = new ArrayList();
    public final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    public BackStackRecord mTransitioningOp = null;
    public boolean mHandlingTransitioningOp = false;
    public final MessageCompose.AnonymousClass3 mOnBackPressedCallback = new MessageCompose.AnonymousClass3(3, this, false);
    public final AtomicInteger mBackStackIndex = new AtomicInteger();
    public final Map mBackStackStates = DesugarCollections.synchronizedMap(new HashMap());
    public final Map mResults = DesugarCollections.synchronizedMap(new HashMap());
    public final Map mResultListeners = DesugarCollections.synchronizedMap(new HashMap());
    public final ArrayList mBackStackChangeListeners = new ArrayList();
    public final WeakCache mLifecycleCallbacksDispatcher = new WeakCache(this);
    public final CopyOnWriteArrayList mOnAttachListeners = new CopyOnWriteArrayList();
    public final AnonymousClass2 mMenuProvider = new AnonymousClass2(0, this);
    public int mCurState = -1;
    public final AnonymousClass3 mHostFragmentFactory = new AnonymousClass3();
    public final Lock mDefaultSpecialEffectsControllerFactory = new Lock();
    public ArrayDeque mLaunchedFragments = new ArrayDeque();
    public final Fragment.AnonymousClass1 mExecCommit = new Fragment.AnonymousClass1(16, this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.FragmentManager$3, reason: invalid class name */
    public final class AnonymousClass3 {
        public static final SimpleArrayMap sClassCacheMap = new SimpleArrayMap(0);

        public AnonymousClass3() {
        }

        public static Class loadClass(ClassLoader classLoader, String str) {
            SimpleArrayMap simpleArrayMap = sClassCacheMap;
            SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) simpleArrayMap.get(classLoader);
            if (simpleArrayMap2 == null) {
                simpleArrayMap2 = new SimpleArrayMap(0);
                simpleArrayMap.put(classLoader, simpleArrayMap2);
            }
            Class cls = (Class) simpleArrayMap2.get(str);
            if (cls != null) {
                return cls;
            }
            Class<?> cls2 = Class.forName(str, false, classLoader);
            simpleArrayMap2.put(str, cls2);
            return cls2;
        }

        public static Class loadFragmentClass(ClassLoader classLoader, String str) {
            try {
                return loadClass(classLoader, str);
            } catch (ClassCastException e) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
            } catch (ClassNotFoundException e2) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
            }
        }

        public final Fragment instantiate(String str) {
            try {
                return (Fragment) loadFragmentClass(FragmentManager.this.mHost.context.getClassLoader(), str).getConstructor(null).newInstance(null);
            } catch (IllegalAccessException e) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
            } catch (InstantiationException e2) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
            } catch (NoSuchMethodException e3) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
            } catch (InvocationTargetException e4) {
                throw new SerializationException(CameraDevices$CC.m("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new FragmentState.AnonymousClass1(7);
        public int mRequestCode;
        public String mWho;

        public LaunchedFragmentInfo(String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LifecycleAwareResultListener implements FragmentResultListener {
        public final Lifecycle mLifecycle;
        public final FragmentResultListener mListener;
        public final AnonymousClass6 mObserver;

        public LifecycleAwareResultListener(Lifecycle lifecycle, FragmentResultListener fragmentResultListener, AnonymousClass6 anonymousClass6) {
            this.mLifecycle = lifecycle;
            this.mListener = fragmentResultListener;
            this.mObserver = anonymousClass6;
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public final void onFragmentResult(String str, Bundle bundle) {
            this.mListener.onFragmentResult(str, bundle);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnBackStackChangedListener {
        void onBackStackChangeCommitted(Fragment fragment, boolean z);

        void onBackStackChangeStarted(Fragment fragment, boolean z);

        void onBackStackChanged();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OpGenerator {
        boolean generateOps(ArrayList arrayList, ArrayList arrayList2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PopBackStackState implements OpGenerator {
        public final int mId;
        public final String mName;

        public PopBackStackState(String str, int i) {
            this.mName = str;
            this.mId = i;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.mPrimaryNav;
            if (fragment != null && this.mId < 0 && this.mName == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
                return false;
            }
            return FragmentManager.this.popBackStackState(arrayList, arrayList2, this.mName, this.mId, 1);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PrepareBackStackTransitionState implements OpGenerator {
        public PrepareBackStackTransitionState() {
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
            ArrayList arrayList3;
            ArrayList arrayList4;
            boolean popBackStackState;
            FragmentManager fragmentManager = FragmentManager.this;
            ArrayList arrayList5 = fragmentManager.mBackStackChangeListeners;
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "FragmentManager has the following pending actions inside of prepareBackStackState: " + fragmentManager.mPendingActions);
            }
            if (fragmentManager.mBackStack.isEmpty()) {
                Log.i("FragmentManager", "Ignoring call to start back stack pop because the back stack is empty.");
                popBackStackState = false;
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
            } else {
                ArrayList arrayList6 = fragmentManager.mBackStack;
                BackStackRecord backStackRecord = (BackStackRecord) arrayList6.get(arrayList6.size() - 1);
                fragmentManager.mTransitioningOp = backStackRecord;
                Iterator it = backStackRecord.mOps.iterator();
                while (it.hasNext()) {
                    Fragment fragment = ((FragmentTransaction$Op) it.next()).mFragment;
                    if (fragment != null) {
                        fragment.mTransitioning = true;
                    }
                }
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
                popBackStackState = fragmentManager.popBackStackState(arrayList3, arrayList4, null, -1, 0);
            }
            if (!arrayList5.isEmpty() && arrayList3.size() > 0) {
                boolean booleanValue = ((Boolean) arrayList4.get(arrayList3.size() - 1)).booleanValue();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    linkedHashSet.addAll(FragmentManager.fragmentsFromRecord((BackStackRecord) it2.next()));
                }
                Iterator it3 = arrayList5.iterator();
                while (it3.hasNext()) {
                    OnBackStackChangedListener onBackStackChangedListener = (OnBackStackChangedListener) it3.next();
                    Iterator it4 = linkedHashSet.iterator();
                    while (it4.hasNext()) {
                        onBackStackChangedListener.onBackStackChangeStarted((Fragment) it4.next(), booleanValue);
                    }
                }
            }
            return popBackStackState;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SaveBackStackState implements OpGenerator {
        public final /* synthetic */ int $r8$classId;
        public final String mName;
        public final /* synthetic */ FragmentManager this$0;

        public /* synthetic */ SaveBackStackState(FragmentManager fragmentManager, String str, int i) {
            this.$r8$classId = i;
            this.this$0 = fragmentManager;
            this.mName = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:103:0x01bf, code lost:
        
            if (r4 != 8) goto L82;
         */
        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean generateOps(java.util.ArrayList r19, java.util.ArrayList r20) {
            /*
                Method dump skipped, instructions count: 794
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.SaveBackStackState.generateOps(java.util.ArrayList, java.util.ArrayList):boolean");
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2] */
    public FragmentManager() {
        final int i = 0;
        this.mOnConfigurationChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i2 = i;
                FragmentManager fragmentManager = this.f$0;
                switch (i2) {
                    case 0:
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManager.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManager.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i2 = 1;
        this.mOnTrimMemoryListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i2;
                FragmentManager fragmentManager = this.f$0;
                switch (i22) {
                    case 0:
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManager.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManager.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.mOnMultiWindowModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i3;
                FragmentManager fragmentManager = this.f$0;
                switch (i22) {
                    case 0:
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManager.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManager.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i4 = 3;
        this.mOnPictureInPictureModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda2
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i4;
                FragmentManager fragmentManager = this.f$0;
                switch (i22) {
                    case 0:
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z = multiWindowModeChangedInfo.isInMultiWindowMode;
                            fragmentManager.dispatchMultiWindowModeChanged(false);
                            break;
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            boolean z2 = pictureInPictureModeChangedInfo.isInPictureInPictureMode;
                            fragmentManager.dispatchPictureInPictureModeChanged(false);
                            break;
                        }
                        break;
                }
            }
        };
    }

    public static FragmentManager findFragmentManager(View view) {
        Fragment fragment;
        AppCompatActivity appCompatActivity;
        View view2 = view;
        while (true) {
            if (view2 == null) {
                fragment = null;
                break;
            }
            Object tag = view2.getTag(R.id.fragment_container_view_tag);
            fragment = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment != null) {
                break;
            }
            Object parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
        }
        if (fragment != null) {
            if (fragment.isAdded()) {
                return fragment.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + fragment + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                appCompatActivity = null;
                break;
            }
            if (context instanceof AppCompatActivity) {
                appCompatActivity = (AppCompatActivity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (appCompatActivity != null) {
            return appCompatActivity.getSupportFragmentManager();
        }
        DBUtil$$ExternalSyntheticBUOutline0.m$1(view, " is not within a subclass of FragmentActivity.", "View ");
        return null;
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
        fragment.getClass();
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
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment == fragmentManager.mPrimaryNav && isPrimaryNavigation(fragmentManager.mParent);
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
        Dispatcher dispatcher = this.mFragmentStore;
        dispatcher.makeActive(createOrGetFragmentStateManager);
        if (!fragment.mDetached) {
            dispatcher.addFragment(fragment);
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
    public final void attachController(FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks, FragmentContainer fragmentContainer, final Fragment fragment) {
        if (this.mHost != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Already attached");
            return;
        }
        this.mHost = fragmentActivity$HostCallbacks;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.mOnAttachListeners;
        if (fragment != 0) {
            copyOnWriteArrayList.add(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager.7
                @Override // androidx.fragment.app.FragmentOnAttachListener
                public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment2) {
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
            FragmentManagerViewModel fragmentManagerViewModel = fragment.mFragmentManager.mNonConfig;
            HashMap hashMap = fragmentManagerViewModel.mChildNonConfigs;
            FragmentManagerViewModel fragmentManagerViewModel2 = (FragmentManagerViewModel) hashMap.get(fragment.mWho);
            if (fragmentManagerViewModel2 == null) {
                fragmentManagerViewModel2 = new FragmentManagerViewModel(fragmentManagerViewModel.mStateAutomaticallySaved);
                hashMap.put(fragment.mWho, fragmentManagerViewModel2);
            }
            this.mNonConfig = fragmentManagerViewModel2;
        } else if (fragmentActivity$HostCallbacks != null) {
            ViewModelStore viewModelStore = fragmentActivity$HostCallbacks.this$0.getViewModelStore();
            CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
            empty.getClass();
            Dispatcher dispatcher = new Dispatcher(viewModelStore, FragmentManagerViewModel.FACTORY, empty);
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FragmentManagerViewModel.class);
            String qualifiedName = orCreateKotlinClass.getQualifiedName();
            if (qualifiedName == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
                return;
            }
            this.mNonConfig = (FragmentManagerViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
        } else {
            this.mNonConfig = new FragmentManagerViewModel(false);
        }
        this.mNonConfig.mIsStateSaved = isStateSaved();
        this.mFragmentStore.runningSyncCalls = this.mNonConfig;
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks2 = this.mHost;
        if (fragmentActivity$HostCallbacks2 != null && fragment == 0) {
            Base64Util savedStateRegistry = fragmentActivity$HostCallbacks2.getSavedStateRegistry();
            savedStateRegistry.registerSavedStateProvider("android:support:fragments", new FragmentManager$$ExternalSyntheticLambda6(i, (FragmentManagerImpl) this));
            Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey("android:support:fragments");
            if (consumeRestoredStateForKey != null) {
                restoreSaveStateInternal(consumeRestoredStateForKey);
            }
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks3 = this.mHost;
        if (fragmentActivity$HostCallbacks3 != null) {
            ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = fragmentActivity$HostCallbacks3.this$0.activityResultRegistry;
            String concat = "FragmentManager:".concat(fragment != 0 ? CameraDevices$CC.m(new StringBuilder(), fragment.mWho, ":") : "");
            final FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this;
            this.mStartActivityForResult = componentActivity$activityResultRegistry$1.register(concat.concat("StartActivityForResult"), new AuthorizationContract(6), new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.8
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i2 = i;
                    FragmentManager fragmentManager = fragmentManagerImpl;
                    switch (i2) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollLast();
                            if (launchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = launchedFragmentInfo.mWho;
                                int i3 = launchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManager.mFragmentStore.findFragmentByWho(str);
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
                            LaunchedFragmentInfo launchedFragmentInfo2 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = launchedFragmentInfo2.mWho;
                                if (fragmentManager.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo3 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = launchedFragmentInfo3.mWho;
                                int i5 = launchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManager.mFragmentStore.findFragmentByWho(str3);
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
            this.mStartIntentSenderForResult = componentActivity$activityResultRegistry$1.register(concat.concat("StartIntentSenderForResult"), new AuthorizationContract(7), new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.8
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i22 = i2;
                    FragmentManager fragmentManager = fragmentManagerImpl;
                    switch (i22) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollLast();
                            if (launchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = launchedFragmentInfo.mWho;
                                int i3 = launchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManager.mFragmentStore.findFragmentByWho(str);
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
                            LaunchedFragmentInfo launchedFragmentInfo2 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = launchedFragmentInfo2.mWho;
                                if (fragmentManager.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo3 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = launchedFragmentInfo3.mWho;
                                int i5 = launchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManager.mFragmentStore.findFragmentByWho(str3);
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
            this.mRequestPermissions = componentActivity$activityResultRegistry$1.register(concat.concat("RequestPermissions"), new AuthorizationContract(4), new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.8
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    int i22 = i3;
                    FragmentManager fragmentManager = fragmentManagerImpl;
                    switch (i22) {
                        case 0:
                            ActivityResult activityResult = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollLast();
                            if (launchedFragmentInfo == null) {
                                Log.w("FragmentManager", "No Activities were started for result for " + this);
                                break;
                            } else {
                                String str = launchedFragmentInfo.mWho;
                                int i32 = launchedFragmentInfo.mRequestCode;
                                Fragment findFragmentByWho = fragmentManager.mFragmentStore.findFragmentByWho(str);
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
                            LaunchedFragmentInfo launchedFragmentInfo2 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo2 == null) {
                                Log.w("FragmentManager", "No permissions were requested for " + this);
                                break;
                            } else {
                                String str2 = launchedFragmentInfo2.mWho;
                                if (fragmentManager.mFragmentStore.findFragmentByWho(str2) == null) {
                                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                                    break;
                                }
                            }
                            break;
                        default:
                            ActivityResult activityResult2 = (ActivityResult) obj;
                            LaunchedFragmentInfo launchedFragmentInfo3 = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                            if (launchedFragmentInfo3 == null) {
                                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                                break;
                            } else {
                                String str3 = launchedFragmentInfo3.mWho;
                                int i5 = launchedFragmentInfo3.mRequestCode;
                                Fragment findFragmentByWho2 = fragmentManager.mFragmentStore.findFragmentByWho(str3);
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
            fragmentActivity$HostCallbacks4.addOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks5 = this.mHost;
        if (fragmentActivity$HostCallbacks5 != null) {
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks5.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda2 = this.mOnTrimMemoryListener;
            fragmentManager$$ExternalSyntheticLambda2.getClass();
            appCompatActivity.onTrimMemoryListeners.add(fragmentManager$$ExternalSyntheticLambda2);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks6 = this.mHost;
        if (fragmentActivity$HostCallbacks6 != null) {
            AppCompatActivity appCompatActivity2 = fragmentActivity$HostCallbacks6.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda22 = this.mOnMultiWindowModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda22.getClass();
            appCompatActivity2.onMultiWindowModeChangedListeners.add(fragmentManager$$ExternalSyntheticLambda22);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks7 = this.mHost;
        if (fragmentActivity$HostCallbacks7 != null) {
            AppCompatActivity appCompatActivity3 = fragmentActivity$HostCallbacks7.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda23 = this.mOnPictureInPictureModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda23.getClass();
            appCompatActivity3.onPictureInPictureModeChangedListeners.add(fragmentManager$$ExternalSyntheticLambda23);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks8 = this.mHost;
        if (fragmentActivity$HostCallbacks8 == null || fragment != 0) {
            return;
        }
        AppCompatActivity appCompatActivity4 = fragmentActivity$HostCallbacks8.this$0;
        AnonymousClass2 anonymousClass2 = this.mMenuProvider;
        anonymousClass2.getClass();
        MenuHostHelper menuHostHelper = appCompatActivity4.menuHostHelper;
        ((CopyOnWriteArrayList) menuHostHelper.mMenuProviders).add(anonymousClass2);
        ((Runnable) menuHostHelper.mOnInvalidateMenuCallback).run();
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
        Dispatcher dispatcher = this.mFragmentStore;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) dispatcher.readyAsyncCalls).get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, dispatcher, fragment);
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
            Dispatcher dispatcher = this.mFragmentStore;
            synchronized (((ArrayList) dispatcher.executorServiceOrNull)) {
                ((ArrayList) dispatcher.executorServiceOrNull).remove(fragment);
            }
            fragment.mAdded = false;
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            setVisibleRemovingFragment(fragment);
        }
    }

    public final void dispatchConfigurationChanged(boolean z) {
        if (z && this.mHost != null) {
            throwException(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.mCalled = true;
                if (z) {
                    fragment.mChildFragmentManager.dispatchConfigurationChanged(true);
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
        boolean z = true;
        this.mDestroyed = true;
        execPendingActions(true);
        endAnimatingAwayFragments();
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        Dispatcher dispatcher = this.mFragmentStore;
        if (fragmentActivity$HostCallbacks != null) {
            z = ((FragmentManagerViewModel) dispatcher.runningSyncCalls).mHasBeenCleared;
        } else {
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks.context;
            if (ImageAnalysis$$ExternalSyntheticLambda3.m(appCompatActivity)) {
                z = true ^ appCompatActivity.isChangingConfigurations();
            }
        }
        if (z) {
            Iterator it = this.mBackStackStates.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((BackStackState) it.next()).mFragments.iterator();
                while (it2.hasNext()) {
                    ((FragmentManagerViewModel) dispatcher.runningSyncCalls).clearNonConfigState((String) it2.next(), false);
                }
            }
        }
        dispatchStateChange(-1);
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks2 = this.mHost;
        if (fragmentActivity$HostCallbacks2 != null) {
            AppCompatActivity appCompatActivity2 = fragmentActivity$HostCallbacks2.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda2 = this.mOnTrimMemoryListener;
            fragmentManager$$ExternalSyntheticLambda2.getClass();
            appCompatActivity2.onTrimMemoryListeners.remove(fragmentManager$$ExternalSyntheticLambda2);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks3 = this.mHost;
        if (fragmentActivity$HostCallbacks3 != null) {
            fragmentActivity$HostCallbacks3.removeOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks4 = this.mHost;
        if (fragmentActivity$HostCallbacks4 != null) {
            AppCompatActivity appCompatActivity3 = fragmentActivity$HostCallbacks4.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda22 = this.mOnMultiWindowModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda22.getClass();
            appCompatActivity3.onMultiWindowModeChangedListeners.remove(fragmentManager$$ExternalSyntheticLambda22);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks5 = this.mHost;
        if (fragmentActivity$HostCallbacks5 != null) {
            AppCompatActivity appCompatActivity4 = fragmentActivity$HostCallbacks5.this$0;
            FragmentManager$$ExternalSyntheticLambda2 fragmentManager$$ExternalSyntheticLambda23 = this.mOnPictureInPictureModeChangedListener;
            fragmentManager$$ExternalSyntheticLambda23.getClass();
            appCompatActivity4.onPictureInPictureModeChangedListeners.remove(fragmentManager$$ExternalSyntheticLambda23);
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks6 = this.mHost;
        if (fragmentActivity$HostCallbacks6 != null && this.mParent == null) {
            AppCompatActivity appCompatActivity5 = fragmentActivity$HostCallbacks6.this$0;
            AnonymousClass2 anonymousClass2 = this.mMenuProvider;
            anonymousClass2.getClass();
            appCompatActivity5.menuHostHelper.removeMenuProvider(anonymousClass2);
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
                fragment.mCalled = true;
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
            for (FragmentStateManager fragmentStateManager : ((HashMap) this.mFragmentStore.readyAsyncCalls).values()) {
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
        String m = ViewSizeResolver.CC.m(str, "    ");
        Dispatcher dispatcher = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) dispatcher.executorServiceOrNull;
        String m2 = ViewSizeResolver.CC.m(str, "    ");
        HashMap hashMap = (HashMap) dispatcher.readyAsyncCalls;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : hashMap.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    printWriter.println(fragment);
                    fragment.getClass();
                    printWriter.print(m2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(fragment.mFragmentId));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(fragment.mContainerId));
                    printWriter.print(" mTag=");
                    printWriter.println(fragment.mTag);
                    printWriter.print(m2);
                    printWriter.print("mState=");
                    printWriter.print(fragment.mState);
                    printWriter.print(" mWho=");
                    printWriter.print(fragment.mWho);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(fragment.mBackStackNesting);
                    printWriter.print(m2);
                    printWriter.print("mAdded=");
                    printWriter.print(fragment.mAdded);
                    printWriter.print(" mRemoving=");
                    printWriter.print(fragment.mRemoving);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(fragment.mFromLayout);
                    printWriter.print(" mInLayout=");
                    printWriter.println(fragment.mInLayout);
                    printWriter.print(m2);
                    printWriter.print("mHidden=");
                    printWriter.print(fragment.mHidden);
                    printWriter.print(" mDetached=");
                    printWriter.print(fragment.mDetached);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(fragment.mMenuVisible);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(m2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(fragment.mRetainInstance);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(fragment.mUserVisibleHint);
                    if (fragment.mFragmentManager != null) {
                        printWriter.print(m2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(fragment.mFragmentManager);
                    }
                    if (fragment.mHost != null) {
                        printWriter.print(m2);
                        printWriter.print("mHost=");
                        printWriter.println(fragment.mHost);
                    }
                    if (fragment.mParentFragment != null) {
                        printWriter.print(m2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(fragment.mParentFragment);
                    }
                    if (fragment.mArguments != null) {
                        printWriter.print(m2);
                        printWriter.print("mArguments=");
                        printWriter.println(fragment.mArguments);
                    }
                    if (fragment.mSavedFragmentState != null) {
                        printWriter.print(m2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(fragment.mSavedFragmentState);
                    }
                    if (fragment.mSavedViewState != null) {
                        printWriter.print(m2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(fragment.mSavedViewState);
                    }
                    if (fragment.mSavedViewRegistryState != null) {
                        printWriter.print(m2);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(fragment.mSavedViewRegistryState);
                    }
                    Object targetFragment = fragment.getTargetFragment(false);
                    if (targetFragment != null) {
                        printWriter.print(m2);
                        printWriter.print("mTarget=");
                        printWriter.print(targetFragment);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(fragment.mTargetRequestCode);
                    }
                    printWriter.print(m2);
                    printWriter.print("mPopDirection=");
                    Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
                    printWriter.println(animationInfo == null ? false : animationInfo.mIsPop);
                    Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                    if ((animationInfo2 == null ? 0 : animationInfo2.mEnterAnim) != 0) {
                        printWriter.print(m2);
                        printWriter.print("getEnterAnim=");
                        Fragment.AnimationInfo animationInfo3 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo3 == null ? 0 : animationInfo3.mEnterAnim);
                    }
                    Fragment.AnimationInfo animationInfo4 = fragment.mAnimationInfo;
                    if ((animationInfo4 == null ? 0 : animationInfo4.mExitAnim) != 0) {
                        printWriter.print(m2);
                        printWriter.print("getExitAnim=");
                        Fragment.AnimationInfo animationInfo5 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo5 == null ? 0 : animationInfo5.mExitAnim);
                    }
                    Fragment.AnimationInfo animationInfo6 = fragment.mAnimationInfo;
                    if ((animationInfo6 == null ? 0 : animationInfo6.mPopEnterAnim) != 0) {
                        printWriter.print(m2);
                        printWriter.print("getPopEnterAnim=");
                        Fragment.AnimationInfo animationInfo7 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo7 == null ? 0 : animationInfo7.mPopEnterAnim);
                    }
                    Fragment.AnimationInfo animationInfo8 = fragment.mAnimationInfo;
                    if ((animationInfo8 == null ? 0 : animationInfo8.mPopExitAnim) != 0) {
                        printWriter.print(m2);
                        printWriter.print("getPopExitAnim=");
                        Fragment.AnimationInfo animationInfo9 = fragment.mAnimationInfo;
                        printWriter.println(animationInfo9 == null ? 0 : animationInfo9.mPopExitAnim);
                    }
                    if (fragment.mContainer != null) {
                        printWriter.print(m2);
                        printWriter.print("mContainer=");
                        printWriter.println(fragment.mContainer);
                    }
                    if (fragment.mView != null) {
                        printWriter.print(m2);
                        printWriter.print("mView=");
                        printWriter.println(fragment.mView);
                    }
                    if (fragment.getContext() != null) {
                        LoaderManager.getInstance(fragment).dump(m2, printWriter);
                    }
                    printWriter.print(m2);
                    printWriter.println("Child " + fragment.mChildFragmentManager + ":");
                    fragment.mChildFragmentManager.dump(m2.concat("  "), fileDescriptor, printWriter, strArr);
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
                backStackRecord.dump(m, printWriter, true);
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
                        Object obj = (OpGenerator) this.mPendingActions.get(i4);
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

    public final void enqueueAction(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.mHost == null) {
                if (this.mDestroyed) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("FragmentManager has been destroyed");
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("FragmentManager has not been attached to a host.");
                    return;
                }
            }
            if (isStateSaved()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can not perform this action after onSaveInstanceState");
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
                    this.mPendingActions.add(opGenerator);
                    scheduleCommit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ensureExecReady(boolean z) {
        if (this.mExecutingActions) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("FragmentManager is already executing transactions");
            return;
        }
        if (this.mHost == null) {
            if (this.mDestroyed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("FragmentManager has been destroyed");
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("FragmentManager has not been attached to a host.");
                return;
            }
        }
        if (Looper.myLooper() != this.mHost.handler.getLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Must be called from main thread of fragment host");
            return;
        }
        if (!z && isStateSaved()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can not perform this action after onSaveInstanceState");
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
                            z2 |= ((OpGenerator) arrayList.get(i)).generateOps(arrayList2, arrayList3);
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
        ((HashMap) this.mFragmentStore.readyAsyncCalls).values().removeAll(Collections.singleton(null));
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
            ((HashMap) this.mFragmentStore.readyAsyncCalls).values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            cleanupExec();
            throw th;
        }
    }

    public final void executeOpsTogether(int i, int i2, ArrayList arrayList, ArrayList arrayList2) {
        Object obj;
        String str;
        ArrayList arrayList3;
        boolean z;
        int i3;
        boolean z2;
        ArrayList arrayList4;
        boolean z3;
        int i4;
        int i5;
        int i6 = i;
        Dispatcher dispatcher = this.mFragmentStore;
        ArrayList arrayList5 = this.mBackStackChangeListeners;
        boolean z4 = ((BackStackRecord) arrayList.get(i6)).mReorderingAllowed;
        ArrayList arrayList6 = this.mTmpAddedFragments;
        if (arrayList6 == null) {
            this.mTmpAddedFragments = new ArrayList();
        } else {
            arrayList6.clear();
        }
        this.mTmpAddedFragments.addAll(dispatcher.getFragments());
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
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
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
                        if (i11 != 2) {
                            if (i11 == 3 || i11 == 6) {
                                z3 = z5;
                                arrayList7.remove(fragmentTransaction$Op2.mFragment);
                                Fragment fragment2 = fragmentTransaction$Op2.mFragment;
                                if (fragment2 == fragment) {
                                    arrayList9.add(i10, new FragmentTransaction$Op(9, fragment2));
                                    i10++;
                                    arrayList4 = arrayList5;
                                    fragment = null;
                                } else {
                                    arrayList4 = arrayList5;
                                }
                            } else if (i11 == 7) {
                                i13 = 1;
                                z3 = z5;
                                arrayList4 = arrayList5;
                            } else if (i11 != 8) {
                                arrayList4 = arrayList5;
                                z3 = z5;
                            } else {
                                z3 = z5;
                                arrayList9.add(i10, new FragmentTransaction$Op(9, fragment, 0));
                                fragmentTransaction$Op2.mFromExpandedOp = true;
                                i10++;
                                arrayList4 = arrayList5;
                                fragment = fragmentTransaction$Op2.mFragment;
                            }
                            i13 = 1;
                        } else {
                            z3 = z5;
                            Fragment fragment3 = fragmentTransaction$Op2.mFragment;
                            int i14 = fragment3.mContainerId;
                            int size2 = arrayList7.size() - 1;
                            boolean z7 = false;
                            while (size2 >= 0) {
                                int i15 = size2;
                                Fragment fragment4 = (Fragment) arrayList7.get(size2);
                                ArrayList arrayList10 = arrayList5;
                                if (fragment4.mContainerId != i14) {
                                    i4 = i14;
                                } else if (fragment4 == fragment3) {
                                    i4 = i14;
                                    z7 = true;
                                } else {
                                    if (fragment4 == fragment) {
                                        i4 = i14;
                                        arrayList9.add(i10, new FragmentTransaction$Op(9, fragment4, 0));
                                        i10++;
                                        i5 = 0;
                                        fragment = null;
                                    } else {
                                        i4 = i14;
                                        i5 = 0;
                                    }
                                    FragmentTransaction$Op fragmentTransaction$Op3 = new FragmentTransaction$Op(3, fragment4, i5);
                                    fragmentTransaction$Op3.mEnterAnim = fragmentTransaction$Op2.mEnterAnim;
                                    fragmentTransaction$Op3.mPopEnterAnim = fragmentTransaction$Op2.mPopEnterAnim;
                                    fragmentTransaction$Op3.mExitAnim = fragmentTransaction$Op2.mExitAnim;
                                    fragmentTransaction$Op3.mPopExitAnim = fragmentTransaction$Op2.mPopExitAnim;
                                    arrayList9.add(i10, fragmentTransaction$Op3);
                                    arrayList7.remove(fragment4);
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
                                arrayList7.add(fragment3);
                            }
                        }
                        i10 += i13;
                        z4 = z6;
                        i7 = i12;
                        z5 = z3;
                        arrayList5 = arrayList4;
                    } else {
                        arrayList4 = arrayList5;
                        z3 = z5;
                    }
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
                        dispatcher.makeActive(createOrGetFragmentStateManager(fragment5));
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
                FragmentManager fragmentManager = backStackRecord2.mManager;
                ArrayList arrayList12 = backStackRecord2.mOps;
                for (int size3 = arrayList12.size() - 1; size3 >= 0; size3--) {
                    FragmentTransaction$Op fragmentTransaction$Op4 = (FragmentTransaction$Op) arrayList12.get(size3);
                    Fragment fragment6 = fragmentTransaction$Op4.mFragment;
                    if (fragment6 != null) {
                        fragment6.mBeingSaved = backStackRecord2.mBeingSaved;
                        if (fragment6.mAnimationInfo != null) {
                            fragment6.ensureAnimationInfo().mIsPop = true;
                        }
                        int i18 = backStackRecord2.mTransition;
                        int i19 = 8194;
                        int i20 = 4097;
                        if (i18 != 4097) {
                            if (i18 != 8194) {
                                i20 = 4100;
                                if (i18 != 8197) {
                                    i19 = 4099;
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
                            fragmentManager.setExitAnimationOrder(fragment6, true);
                            fragmentManager.removeFragment(fragment6);
                        case 2:
                        default:
                            DBUtil$$ExternalSyntheticBUOutline0.m(str2, fragmentTransaction$Op4.mCmd);
                            return;
                        case 3:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManager.addFragment(fragment6);
                        case 4:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManager.getClass();
                            showFragment(fragment6);
                        case 5:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManager.setExitAnimationOrder(fragment6, true);
                            fragmentManager.hideFragment(fragment6);
                        case 6:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManager.attachFragment(fragment6);
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            fragment6.setAnimations(fragmentTransaction$Op4.mEnterAnim, fragmentTransaction$Op4.mExitAnim, fragmentTransaction$Op4.mPopEnterAnim, fragmentTransaction$Op4.mPopExitAnim);
                            fragmentManager.setExitAnimationOrder(fragment6, true);
                            fragmentManager.detachFragment(fragment6);
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            fragmentManager.setPrimaryNavigationFragment(null);
                        case 9:
                            fragmentManager.setPrimaryNavigationFragment(fragment6);
                        case 10:
                            fragmentTransaction$Op4.mCurrentMaxState = fragment6.mMaxState;
                            fragmentManager.setMaxLifecycle(fragment6, fragmentTransaction$Op4.mOldMaxState);
                    }
                }
            } else {
                backStackRecord2.bumpBackStackNesting(1);
                FragmentManager fragmentManager2 = backStackRecord2.mManager;
                ArrayList arrayList13 = backStackRecord2.mOps;
                int size4 = arrayList13.size();
                int i21 = 0;
                while (i21 < size4) {
                    FragmentTransaction$Op fragmentTransaction$Op5 = (FragmentTransaction$Op) arrayList13.get(i21);
                    Fragment fragment7 = fragmentTransaction$Op5.mFragment;
                    if (fragment7 != null) {
                        fragment7.mBeingSaved = backStackRecord2.mBeingSaved;
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
                            fragmentManager2.setExitAnimationOrder(fragment7, false);
                            fragmentManager2.addFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 2:
                        default:
                            DBUtil$$ExternalSyntheticBUOutline0.m(str2, fragmentTransaction$Op5.mCmd);
                            return;
                        case 3:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManager2.removeFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 4:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManager2.hideFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 5:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManager2.setExitAnimationOrder(fragment7, false);
                            showFragment(fragment7);
                            i21++;
                            str2 = str;
                        case 6:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManager2.detachFragment(fragment7);
                            i21++;
                            str2 = str;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            str = str2;
                            fragment7.setAnimations(fragmentTransaction$Op5.mEnterAnim, fragmentTransaction$Op5.mExitAnim, fragmentTransaction$Op5.mPopEnterAnim, fragmentTransaction$Op5.mPopExitAnim);
                            fragmentManager2.setExitAnimationOrder(fragment7, false);
                            fragmentManager2.attachFragment(fragment7);
                            i21++;
                            str2 = str;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            fragmentManager2.setPrimaryNavigationFragment(fragment7);
                            str = str2;
                            i21++;
                            str2 = str;
                        case 9:
                            fragmentManager2.setPrimaryNavigationFragment(null);
                            str = str2;
                            i21++;
                            str2 = str;
                        case 10:
                            fragmentTransaction$Op5.mOldMaxState = fragment7.mMaxState;
                            fragmentManager2.setMaxLifecycle(fragment7, fragmentTransaction$Op5.mCurrentMaxState);
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
                    OnBackStackChangedListener onBackStackChangedListener = (OnBackStackChangedListener) it3.next();
                    Iterator it4 = linkedHashSet.iterator();
                    while (it4.hasNext()) {
                        onBackStackChangedListener.onBackStackChangeStarted((Fragment) it4.next(), booleanValue2);
                    }
                }
                Iterator it5 = arrayList11.iterator();
                while (it5.hasNext()) {
                    OnBackStackChangedListener onBackStackChangedListener2 = (OnBackStackChangedListener) it5.next();
                    Iterator it6 = linkedHashSet.iterator();
                    while (it6.hasNext()) {
                        onBackStackChangedListener2.onBackStackChangeCommitted((Fragment) it6.next(), booleanValue2);
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
                                if (specialEffectsController$FragmentStateManagerOperation.finalState == 2 || c == 2) {
                                }
                            }
                            if (specialEffectsController$FragmentStateManagerOperation.finalState == 2) {
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
        if (z9) {
            for (int i25 = 0; i25 < arrayList11.size(); i25++) {
                ((OnBackStackChangedListener) arrayList11.get(i25)).onBackStackChanged();
            }
        }
    }

    public final int findBackStackIndex(int i, String str, boolean z) {
        if (this.mBackStack.isEmpty()) {
            return -1;
        }
        if (str == null && i < 0) {
            if (z) {
                return 0;
            }
            return this.mBackStack.size() - 1;
        }
        int size = this.mBackStack.size() - 1;
        while (size >= 0) {
            BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(size);
            if ((str != null && str.equals(backStackRecord.mName)) || (i >= 0 && i == backStackRecord.mIndex)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z) {
            if (size == this.mBackStack.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStack.get(size - 1);
            if ((str == null || !str.equals(backStackRecord2.mName)) && (i < 0 || i != backStackRecord2.mIndex)) {
                break;
            }
            size--;
        }
        return size;
    }

    public final Fragment findFragmentById(int i) {
        Dispatcher dispatcher = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) dispatcher.executorServiceOrNull;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : ((HashMap) dispatcher.readyAsyncCalls).values()) {
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
        Dispatcher dispatcher = this.mFragmentStore;
        ArrayList arrayList = (ArrayList) dispatcher.executorServiceOrNull;
        if (str != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (FragmentStateManager fragmentStateManager : ((HashMap) dispatcher.readyAsyncCalls).values()) {
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

    public final int getBackStackEntryCount() {
        return this.mBackStack.size() + (this.mTransitioningOp != null ? 1 : 0);
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

    public final AnonymousClass3 getFragmentFactory() {
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getFragmentFactory() : this.mHostFragmentFactory;
    }

    public final Lock getSpecialEffectsControllerFactory() {
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No activity");
            return;
        }
        if (z || i != this.mCurState) {
            this.mCurState = i;
            Dispatcher dispatcher = this.mFragmentStore;
            HashMap hashMap = (HashMap) dispatcher.readyAsyncCalls;
            Iterator it = ((ArrayList) dispatcher.executorServiceOrNull).iterator();
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
                        if (fragment.mBeingSaved && !((HashMap) dispatcher.runningAsyncCalls).containsKey(fragment.mWho)) {
                            dispatcher.setSavedState(fragment.mWho, fragmentStateManager2.saveState());
                        }
                        dispatcher.makeInactive(fragmentStateManager2);
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

    public final void onContainerAvailable(FragmentContainerView fragmentContainerView) {
        View view;
        Iterator it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it.next();
            Fragment fragment = fragmentStateManager.mFragment;
            if (fragment.mContainerId == fragmentContainerView.getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = fragmentContainerView;
                fragmentStateManager.addViewToContainer();
                fragmentStateManager.moveToExpectedState();
            }
        }
    }

    public final boolean popBackStackImmediate(int i, String str, int i2) {
        execPendingActions(false);
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i < 0 && str == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean popBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, str, i, i2);
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
        ((HashMap) this.mFragmentStore.readyAsyncCalls).values().removeAll(Collections.singleton(null));
        return popBackStackState;
    }

    public final boolean popBackStackState(ArrayList arrayList, ArrayList arrayList2, String str, int i, int i2) {
        int findBackStackIndex = findBackStackIndex(i, str, (i2 & 1) != 0);
        if (findBackStackIndex < 0) {
            return false;
        }
        for (int size = this.mBackStack.size() - 1; size >= findBackStackIndex; size--) {
            arrayList.add((BackStackRecord) this.mBackStack.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void removeFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && isInBackStack) {
            return;
        }
        Dispatcher dispatcher = this.mFragmentStore;
        synchronized (((ArrayList) dispatcher.executorServiceOrNull)) {
            ((ArrayList) dispatcher.executorServiceOrNull).remove(fragment);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Internal error with the back stack records");
            return;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((BackStackRecord) arrayList.get(i)).mReorderingAllowed) {
                if (i2 != i) {
                    executeOpsTogether(i2, i, arrayList, arrayList2);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((BackStackRecord) arrayList.get(i2)).mReorderingAllowed) {
                        i2++;
                    }
                }
                executeOpsTogether(i, i2, arrayList, arrayList2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            executeOpsTogether(i2, size, arrayList, arrayList2);
        }
    }

    public final void restoreSaveStateInternal(Bundle bundle) {
        WeakCache weakCache;
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
        Dispatcher dispatcher = this.mFragmentStore;
        HashMap hashMap2 = (HashMap) dispatcher.runningAsyncCalls;
        HashMap hashMap3 = (HashMap) dispatcher.readyAsyncCalls;
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
            weakCache = this.mLifecycleCallbacksDispatcher;
            if (!hasNext) {
                break;
            }
            Bundle savedState = dispatcher.setSavedState((String) it.next(), null);
            if (savedState != null) {
                Fragment fragment = (Fragment) this.mNonConfig.mRetainedFragments.get(((FragmentState) savedState.getParcelable("state")).mWho);
                if (fragment != null) {
                    if (isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    fragmentStateManager = new FragmentStateManager(weakCache, dispatcher, fragment, savedState);
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
                dispatcher.makeActive(fragmentStateManager);
                fragmentStateManager.mFragmentManagerState = this.mCurState;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.mNonConfig;
        fragmentManagerViewModel.getClass();
        Iterator it2 = new ArrayList(fragmentManagerViewModel.mRetainedFragments.values()).iterator();
        while (it2.hasNext()) {
            Fragment fragment3 = (Fragment) it2.next();
            if (hashMap3.get(fragment3.mWho) == null) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + fragmentManagerState.mActive);
                }
                this.mNonConfig.removeRetainedFragment(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(weakCache, dispatcher, fragment3);
                fragmentStateManager2.mFragmentManagerState = 1;
                fragmentStateManager2.moveToExpectedState();
                fragment3.mRemoving = true;
                fragmentStateManager2.moveToExpectedState();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.mAdded;
        ((ArrayList) dispatcher.executorServiceOrNull).clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                Fragment findActiveFragment = dispatcher.findActiveFragment(str3);
                if (findActiveFragment == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("No instantiated fragment for (", str3, ")"));
                    return;
                }
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + findActiveFragment);
                }
                dispatcher.addFragment(findActiveFragment);
            }
        }
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
            int i = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.mBackStack;
                if (i >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecordState backStackRecordState = backStackRecordStateArr[i];
                ArrayList arrayList2 = backStackRecordState.mFragmentWhos;
                BackStackRecord backStackRecord = new BackStackRecord(this);
                backStackRecordState.fillInBackStackRecord(backStackRecord);
                backStackRecord.mIndex = backStackRecordState.mIndex;
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    String str4 = (String) arrayList2.get(i2);
                    if (str4 != null) {
                        ((FragmentTransaction$Op) backStackRecord.mOps.get(i2)).mFragment = dispatcher.findActiveFragment(str4);
                    }
                }
                backStackRecord.bumpBackStackNesting(1);
                if (isLoggingEnabled(2)) {
                    StringBuilder m30m = CameraDevices$CC.m30m(i, "restoreAllState: back stack #", " (index ");
                    m30m.append(backStackRecord.mIndex);
                    m30m.append("): ");
                    m30m.append(backStackRecord);
                    Log.v("FragmentManager", m30m.toString());
                    PrintWriter printWriter = new PrintWriter(new LogWriter());
                    backStackRecord.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.mBackStack.add(backStackRecord);
                i++;
            }
        } else {
            this.mBackStack = new ArrayList();
        }
        this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
        String str5 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str5 != null) {
            Fragment findActiveFragment2 = dispatcher.findActiveFragment(str5);
            this.mPrimaryNav = findActiveFragment2;
            dispatchParentPrimaryNavigationFragmentChanged(findActiveFragment2);
        }
        ArrayList arrayList3 = fragmentManagerState.mBackStackStateKeys;
        if (arrayList3 != null) {
            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                this.mBackStackStates.put((String) arrayList3.get(i3), (BackStackState) fragmentManagerState.mBackStackStates.get(i3));
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
        Dispatcher dispatcher = this.mFragmentStore;
        dispatcher.getClass();
        HashMap hashMap = (HashMap) dispatcher.readyAsyncCalls;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (FragmentStateManager fragmentStateManager : hashMap.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.mFragment;
                dispatcher.setSavedState(fragment.mWho, fragmentStateManager.saveState());
                arrayList2.add(fragment.mWho);
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragment.mSavedFragmentState);
                }
            }
        }
        HashMap hashMap2 = (HashMap) this.mFragmentStore.runningAsyncCalls;
        if (!hashMap2.isEmpty()) {
            Dispatcher dispatcher2 = this.mFragmentStore;
            synchronized (((ArrayList) dispatcher2.executorServiceOrNull)) {
                try {
                    if (((ArrayList) dispatcher2.executorServiceOrNull).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) dispatcher2.executorServiceOrNull).size());
                        Iterator it = ((ArrayList) dispatcher2.executorServiceOrNull).iterator();
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
                        StringBuilder m30m = CameraDevices$CC.m30m(i, "saveAllState: adding back stack #", ": ");
                        m30m.append(this.mBackStack.get(i));
                        Log.v("FragmentManager", m30m.toString());
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
                bundle.putBundle(CameraDevices$CC.m("result_", str), (Bundle) this.mResults.get(str));
            }
            for (String str2 : hashMap2.keySet()) {
                bundle.putBundle(CameraDevices$CC.m("fragment_", str2), (Bundle) hashMap2.get(str2));
            }
        } else if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle;
        }
        return bundle;
    }

    public final Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) this.mFragmentStore.readyAsyncCalls).get(fragment.mWho);
        if (fragmentStateManager != null) {
            Fragment fragment2 = fragmentStateManager.mFragment;
            fragment2.getClass();
            if (fragment2 == fragment) {
                if (fragment2.mState > -1) {
                    return new Fragment.SavedState(fragmentStateManager.saveState());
                }
                return null;
            }
        }
        throwException(new IllegalStateException(Modifier.CC.m("Fragment ", fragment, " is not currently in the FragmentManager")));
        throw null;
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

    public final void setFragmentResultListener(String str, LifecycleOwner lifecycleOwner, FragmentResultListener fragmentResultListener) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (((LifecycleRegistry) lifecycle).state == Lifecycle.State.DESTROYED) {
            return;
        }
        AnonymousClass6 anonymousClass6 = new AnonymousClass6(this, str, fragmentResultListener, lifecycle);
        LifecycleAwareResultListener lifecycleAwareResultListener = (LifecycleAwareResultListener) this.mResultListeners.put(str, new LifecycleAwareResultListener(lifecycle, fragmentResultListener, anonymousClass6));
        if (lifecycleAwareResultListener != null) {
            lifecycleAwareResultListener.mLifecycle.removeObserver(lifecycleAwareResultListener.mObserver);
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Setting FragmentResultListener with key " + str + " lifecycleOwner " + lifecycle + " and listener " + fragmentResultListener);
        }
        lifecycle.addObserver(anonymousClass6);
    }

    public final void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment == this.mFragmentStore.findActiveFragment(fragment.mWho) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m$1("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment != null) {
            if (fragment != this.mFragmentStore.findActiveFragment(fragment.mWho) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                Regex$$ExternalSyntheticBUOutline0.m$1("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
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

    public final void throwException(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter());
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            try {
                dump("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            fragmentActivity$HostCallbacks.this$0.dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
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
                boolean z = getBackStackEntryCount() > 0 && isPrimaryNavigation(this.mParent);
                if (isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z);
                }
                this.mOnBackPressedCallback.setEnabled(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    public final class AnonymousClass6 implements LifecycleEventObserver {
        public final /* synthetic */ int $r8$classId = 0;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ Object val$lifecycle;
        public final /* synthetic */ Object val$listener;
        public final /* synthetic */ Object val$requestKey;

        public AnonymousClass6(ContextScope contextScope, BroadcastFrameClock broadcastFrameClock, Recomposer recomposer, Ref$ObjectRef ref$ObjectRef) {
            this.val$requestKey = contextScope;
            this.val$listener = broadcastFrameClock;
            this.val$lifecycle = recomposer;
            this.this$0 = ref$ObjectRef;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Bundle bundle;
            switch (this.$r8$classId) {
                case 0:
                    FragmentManager fragmentManager = (FragmentManager) this.this$0;
                    Map map = fragmentManager.mResults;
                    String str = (String) this.val$requestKey;
                    if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) map.get(str)) != null) {
                        ((FragmentResultListener) this.val$listener).onFragmentResult(str, bundle);
                        map.remove(str);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Clearing fragment result with key ".concat(str));
                        }
                    }
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        ((Lifecycle) this.val$lifecycle).removeObserver(this);
                        fragmentManager.mResultListeners.remove(str);
                        return;
                    }
                    return;
                default:
                    switch (WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
                        case 1:
                            JobKt.launch$default((ContextScope) this.val$requestKey, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1((Ref$ObjectRef) this.this$0, (Recomposer) this.val$lifecycle, lifecycleOwner, this, (Continuation) null, 10), 1);
                            return;
                        case 2:
                            BroadcastFrameClock broadcastFrameClock = (BroadcastFrameClock) this.val$listener;
                            if (broadcastFrameClock != null) {
                                Latch latch = (Latch) broadcastFrameClock.queue;
                                synchronized (latch.lock) {
                                    try {
                                        if (!latch.isOpen()) {
                                            ArrayList arrayList = (ArrayList) latch.awaiters;
                                            latch.awaiters = (ArrayList) latch.spareList;
                                            latch.spareList = arrayList;
                                            latch._isOpen = true;
                                            int size = arrayList.size();
                                            for (int i = 0; i < size; i++) {
                                                ((Continuation) arrayList.get(i)).resumeWith(Unit.INSTANCE);
                                            }
                                            arrayList.clear();
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                            ((Recomposer) this.val$lifecycle).resumeCompositionFrameClock();
                            return;
                        case 3:
                            ((Recomposer) this.val$lifecycle).pauseCompositionFrameClock();
                            return;
                        case 4:
                            ((Recomposer) this.val$lifecycle).cancel();
                            return;
                        case 5:
                        case 6:
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            return;
                        default:
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return;
                    }
            }
        }

        public AnonymousClass6(FragmentManager fragmentManager, String str, FragmentResultListener fragmentResultListener, Lifecycle lifecycle) {
            this.this$0 = fragmentManager;
            this.val$requestKey = str;
            this.val$listener = fragmentResultListener;
            this.val$lifecycle = lifecycle;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.FragmentManager$2, reason: invalid class name */
    public final class AnonymousClass2 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
            int i = this.$r8$classId;
            char c = 1;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((FragmentManager) obj).dispatchCreateOptionsMenu();
                    break;
                case 1:
                    menu.getClass();
                    menuInflater.getClass();
                    menuInflater.inflate(R.menu.unread_widget_option, menu);
                    break;
                case 2:
                    menu.getClass();
                    menuInflater.getClass();
                    menuInflater.inflate(R.menu.folder_settings_option, menu);
                    MenuItem findItem = menu.findItem(R.id.clear_local_folder);
                    int i2 = FolderSettingsFragment.$r8$clinit;
                    FolderSettingsViewModel viewModel = ((FolderSettingsFragment) obj).getViewModel();
                    findItem.setVisible((viewModel.account == null || viewModel.folderId == 0) ? false : true);
                    break;
                case 3:
                    menu.getClass();
                    menuInflater.getClass();
                    menuInflater.inflate(R.menu.folder_list_option, menu);
                    ManageFoldersFragment manageFoldersFragment = (ManageFoldersFragment) obj;
                    MenuItem findItem2 = menu.findItem(R.id.filter_folders);
                    View actionView = findItem2.getActionView();
                    actionView.getClass();
                    SearchView searchView = (SearchView) actionView;
                    searchView.setMaxWidth(Integer.MAX_VALUE);
                    searchView.setQueryHint(manageFoldersFragment.getString(R.string.folder_list_filter_hint));
                    searchView.setOnQueryTextListener(new ConnectionPool(7, manageFoldersFragment));
                    findItem2.setOnActionExpandListener(new GeneralSettingsActivity$onCreateOptionsMenu$2(c == true ? 1 : 0, manageFoldersFragment));
                    break;
                case 4:
                    menu.getClass();
                    menuInflater.getClass();
                    if (((LegacyMessageListFragment) obj).isActive) {
                        menuInflater.inflate(R.menu.message_list_option_menu, menu);
                        break;
                    }
                    break;
                case 5:
                    menu.getClass();
                    menuInflater.getClass();
                    if (((MessageListFragment) obj).isActive) {
                        menuInflater.inflate(R.menu.new_message_list_option_menu, menu);
                        break;
                    }
                    break;
                case 6:
                    menu.getClass();
                    menuInflater.getClass();
                    if (((MessageViewFragment) obj).isActive) {
                        menuInflater.inflate(R.menu.message_view_option_menu, menu);
                        break;
                    }
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    menu.getClass();
                    menuInflater.getClass();
                    menuInflater.inflate(R.menu.account_settings_option, menu);
                    break;
                default:
                    menu.getClass();
                    menuInflater.getClass();
                    if (Intrinsics.areEqual(((GeneralSettingsFragment) obj).rootKey, "debug_preferences")) {
                        menuInflater.inflate(R.menu.debug_settings_option, menu);
                        break;
                    }
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0450  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onMenuItemSelected(android.view.MenuItem r19) {
            /*
                Method dump skipped, instructions count: 2606
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.AnonymousClass2.onMenuItemSelected(android.view.MenuItem):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0116  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01ba  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0266  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x028c  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0290  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0233  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x02b5  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x019b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onPrepareMenu(android.view.Menu r17) {
            /*
                Method dump skipped, instructions count: 1534
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.AnonymousClass2.onPrepareMenu(android.view.Menu):void");
        }

        private final /* synthetic */ void onMenuClosed$app$k9mail$feature$widget$unread$UnreadWidgetConfigurationFragment$configureMenuHost$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$managefolders$FolderSettingsFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$managefolders$ManageFoldersFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$messagelist$LegacyMessageListFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$messagelist$MessageListFragment$onViewCreated$2(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$messageview$MessageViewFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$settings$account$AccountSettingsFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onMenuClosed$com$fsck$k9$ui$settings$general$GeneralSettingsFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onPrepareMenu$app$k9mail$feature$widget$unread$UnreadWidgetConfigurationFragment$configureMenuHost$1(Menu menu) {
        }

        private final /* synthetic */ void onPrepareMenu$com$fsck$k9$ui$managefolders$FolderSettingsFragment$onViewCreated$1(Menu menu) {
        }

        private final /* synthetic */ void onPrepareMenu$com$fsck$k9$ui$settings$account$AccountSettingsFragment$onViewCreated$1(Menu menu) {
        }
    }

    public final boolean popBackStackImmediate() {
        return popBackStackImmediate(-1, null, 0);
    }
}
