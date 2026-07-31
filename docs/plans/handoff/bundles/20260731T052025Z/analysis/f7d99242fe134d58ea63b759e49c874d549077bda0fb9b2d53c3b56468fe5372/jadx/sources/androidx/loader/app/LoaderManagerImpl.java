package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.core.util.DebugUtils;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.AsyncTaskLoader;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoaderManagerImpl extends LoaderManager {
    public final LifecycleOwner mLifecycleOwner;
    public final LoaderViewModel mLoaderViewModel;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoaderInfo extends MutableLiveData {
        public final Bundle mArgs;
        public final int mId;
        public LifecycleOwner mLifecycleOwner;
        public final AsyncTaskLoader mLoader;
        public LoaderObserver mObserver;
        public AsyncTaskLoader mPriorLoader;

        public LoaderInfo(int i, Bundle bundle, AsyncTaskLoader asyncTaskLoader, AsyncTaskLoader asyncTaskLoader2) {
            this.mId = i;
            this.mArgs = bundle;
            this.mLoader = asyncTaskLoader;
            this.mPriorLoader = asyncTaskLoader2;
            if (asyncTaskLoader.mListener != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("There is already a listener registered");
                throw null;
            }
            asyncTaskLoader.mListener = this;
            asyncTaskLoader.mId = i;
        }

        public final AsyncTaskLoader destroy(boolean z) {
            AsyncTaskLoader asyncTaskLoader = this.mLoader;
            asyncTaskLoader.cancelLoad();
            asyncTaskLoader.mAbandoned = true;
            asyncTaskLoader.onAbandon();
            LoaderObserver loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z && loaderObserver.mDeliveredData) {
                    loaderObserver.mCallback.onLoaderReset(loaderObserver.mLoader);
                }
            }
            LoaderInfo loaderInfo = asyncTaskLoader.mListener;
            if (loaderInfo == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No listener register");
                return null;
            }
            if (loaderInfo != this) {
                UriKt$$ExternalSyntheticBUOutline0.m("Attempting to unregister the wrong listener");
                return null;
            }
            asyncTaskLoader.mListener = null;
            if ((loaderObserver == null || loaderObserver.mDeliveredData) && !z) {
                return asyncTaskLoader;
            }
            asyncTaskLoader.mReset = true;
            asyncTaskLoader.mStarted = false;
            asyncTaskLoader.mAbandoned = false;
            asyncTaskLoader.mContentChanged = false;
            asyncTaskLoader.mProcessingChange = false;
            return this.mPriorLoader;
        }

        public final void markForRedelivery() {
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            LoaderObserver loaderObserver = this.mObserver;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(lifecycleOwner, loaderObserver);
        }

        @Override // androidx.lifecycle.LiveData
        public final void onActive() {
            this.mLoader.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        public final void onInactive() {
            this.mLoader.mStarted = false;
        }

        @Override // androidx.lifecycle.LiveData
        public final void removeObserver(Observer observer) {
            super.removeObserver(observer);
            this.mLifecycleOwner = null;
            this.mObserver = null;
        }

        @Override // androidx.lifecycle.LiveData
        public final void setValue(Object obj) {
            super.setValue(obj);
            AsyncTaskLoader asyncTaskLoader = this.mPriorLoader;
            if (asyncTaskLoader != null) {
                asyncTaskLoader.mReset = true;
                asyncTaskLoader.mStarted = false;
                asyncTaskLoader.mAbandoned = false;
                asyncTaskLoader.mContentChanged = false;
                asyncTaskLoader.mProcessingChange = false;
                this.mPriorLoader = null;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoaderObserver implements Observer {
        public final LoaderManager.LoaderCallbacks mCallback;
        public boolean mDeliveredData = false;
        public final AsyncTaskLoader mLoader;

        public LoaderObserver(AsyncTaskLoader asyncTaskLoader, LoaderManager.LoaderCallbacks loaderCallbacks) {
            this.mLoader = asyncTaskLoader;
            this.mCallback = loaderCallbacks;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            this.mCallback.onLoadFinished(this.mLoader, obj);
            this.mDeliveredData = true;
        }

        public final String toString() {
            return this.mCallback.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class LoaderViewModel extends ViewModel {
        public static final FragmentManagerViewModel.AnonymousClass1 FACTORY = new FragmentManagerViewModel.AnonymousClass1(3);
        public final SparseArrayCompat mLoaders = new SparseArrayCompat(0);
        public boolean mCreatingLoader = false;

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            SparseArrayCompat sparseArrayCompat = this.mLoaders;
            int size = sparseArrayCompat.size();
            for (int i = 0; i < size; i++) {
                ((LoaderInfo) sparseArrayCompat.valueAt(i)).destroy(true);
            }
            int i2 = sparseArrayCompat.size;
            Object[] objArr = sparseArrayCompat.values;
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = null;
            }
            sparseArrayCompat.size = 0;
            sparseArrayCompat.garbage = false;
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        viewModelStore.getClass();
        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
        empty.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, LoaderViewModel.FACTORY, empty);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LoaderViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName != null) {
            this.mLoaderViewModel = (LoaderViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
            throw null;
        }
    }

    public final AsyncTaskLoader createAndInstallLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loaderCallbacks, AsyncTaskLoader asyncTaskLoader) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        try {
            loaderViewModel.mCreatingLoader = true;
            AsyncTaskLoader onCreateLoader = loaderCallbacks.onCreateLoader(i, bundle);
            if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + onCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i, bundle, onCreateLoader, asyncTaskLoader);
            loaderViewModel.mLoaders.put(i, loaderInfo);
            loaderViewModel.mCreatingLoader = false;
            AsyncTaskLoader asyncTaskLoader2 = loaderInfo.mLoader;
            LoaderObserver loaderObserver = new LoaderObserver(asyncTaskLoader2, loaderCallbacks);
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            loaderInfo.observe(lifecycleOwner, loaderObserver);
            LoaderObserver loaderObserver2 = loaderInfo.mObserver;
            if (loaderObserver2 != null) {
                loaderInfo.removeObserver(loaderObserver2);
            }
            loaderInfo.mLifecycleOwner = lifecycleOwner;
            loaderInfo.mObserver = loaderObserver;
            return asyncTaskLoader2;
        } catch (Throwable th) {
            loaderViewModel.mCreatingLoader = false;
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    public final void destroyLoader(int i) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        boolean z = loaderViewModel.mCreatingLoader;
        SparseArrayCompat sparseArrayCompat = loaderViewModel.mLoaders;
        if (z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called while creating a loader");
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("destroyLoader must be called on the main thread");
            return;
        }
        LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.get(i);
        if (loaderInfo != null) {
            loaderInfo.destroy(true);
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.size, i, sparseArrayCompat.keys);
            if (binarySearch >= 0) {
                Object[] objArr = sparseArrayCompat.values;
                Object obj = objArr[binarySearch];
                Object obj2 = ArraySetKt.DELETED$1;
                if (obj != obj2) {
                    objArr[binarySearch] = obj2;
                    sparseArrayCompat.garbage = true;
                }
            }
        }
    }

    public final void dump(String str, PrintWriter printWriter) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        if (loaderViewModel.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String concat = str.concat("    ");
            for (int i = 0; i < loaderViewModel.mLoaders.size(); i++) {
                LoaderInfo loaderInfo = (LoaderInfo) loaderViewModel.mLoaders.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(loaderViewModel.mLoaders.keyAt(i));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                printWriter.print(concat);
                printWriter.print("mId=");
                printWriter.print(loaderInfo.mId);
                printWriter.print(" mArgs=");
                printWriter.println(loaderInfo.mArgs);
                printWriter.print(concat);
                printWriter.print("mLoader=");
                printWriter.println(loaderInfo.mLoader);
                AsyncTaskLoader asyncTaskLoader = loaderInfo.mLoader;
                String concat2 = concat.concat("  ");
                asyncTaskLoader.getClass();
                printWriter.print(concat2);
                printWriter.print("mId=");
                printWriter.print(asyncTaskLoader.mId);
                printWriter.print(" mListener=");
                printWriter.println(asyncTaskLoader.mListener);
                if (asyncTaskLoader.mStarted || asyncTaskLoader.mContentChanged || asyncTaskLoader.mProcessingChange) {
                    printWriter.print(concat2);
                    printWriter.print("mStarted=");
                    printWriter.print(asyncTaskLoader.mStarted);
                    printWriter.print(" mContentChanged=");
                    printWriter.print(asyncTaskLoader.mContentChanged);
                    printWriter.print(" mProcessingChange=");
                    printWriter.println(asyncTaskLoader.mProcessingChange);
                }
                if (asyncTaskLoader.mAbandoned || asyncTaskLoader.mReset) {
                    printWriter.print(concat2);
                    printWriter.print("mAbandoned=");
                    printWriter.print(asyncTaskLoader.mAbandoned);
                    printWriter.print(" mReset=");
                    printWriter.println(asyncTaskLoader.mReset);
                }
                if (asyncTaskLoader.mTask != null) {
                    printWriter.print(concat2);
                    printWriter.print("mTask=");
                    printWriter.print(asyncTaskLoader.mTask);
                    printWriter.print(" waiting=");
                    asyncTaskLoader.mTask.getClass();
                    printWriter.println(false);
                }
                if (asyncTaskLoader.mCancellingTask != null) {
                    printWriter.print(concat2);
                    printWriter.print("mCancellingTask=");
                    printWriter.print(asyncTaskLoader.mCancellingTask);
                    printWriter.print(" waiting=");
                    asyncTaskLoader.mCancellingTask.getClass();
                    printWriter.println(false);
                }
                if (loaderInfo.mObserver != null) {
                    printWriter.print(concat);
                    printWriter.print("mCallbacks=");
                    printWriter.println(loaderInfo.mObserver);
                    LoaderObserver loaderObserver = loaderInfo.mObserver;
                    String concat3 = concat.concat("  ");
                    loaderObserver.getClass();
                    printWriter.print(concat3);
                    printWriter.print("mDeliveredData=");
                    printWriter.println(loaderObserver.mDeliveredData);
                }
                printWriter.print(concat);
                printWriter.print("mData=");
                AsyncTaskLoader asyncTaskLoader2 = loaderInfo.mLoader;
                Object value = loaderInfo.getValue();
                asyncTaskLoader2.getClass();
                StringBuilder sb = new StringBuilder(64);
                DebugUtils.buildShortClassTag(value, sb);
                sb.append("}");
                printWriter.println(sb.toString());
                printWriter.print(concat);
                printWriter.print("mStarted=");
                printWriter.println(loaderInfo.mActiveCount > 0);
            }
        }
    }

    public final AsyncTaskLoader getLoader(int i) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        if (loaderViewModel.mCreatingLoader) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called while creating a loader");
            return null;
        }
        LoaderInfo loaderInfo = (LoaderInfo) loaderViewModel.mLoaders.get(i);
        if (loaderInfo != null) {
            return loaderInfo.mLoader;
        }
        return null;
    }

    public final AsyncTaskLoader initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loaderCallbacks) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        if (loaderViewModel.mCreatingLoader) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called while creating a loader");
            return null;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("initLoader must be called on the main thread");
            return null;
        }
        LoaderInfo loaderInfo = (LoaderInfo) loaderViewModel.mLoaders.get(i);
        if (loaderInfo == null) {
            return createAndInstallLoader(i, bundle, loaderCallbacks, null);
        }
        AsyncTaskLoader asyncTaskLoader = loaderInfo.mLoader;
        LoaderObserver loaderObserver = new LoaderObserver(asyncTaskLoader, loaderCallbacks);
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        loaderInfo.observe(lifecycleOwner, loaderObserver);
        LoaderObserver loaderObserver2 = loaderInfo.mObserver;
        if (loaderObserver2 != null) {
            loaderInfo.removeObserver(loaderObserver2);
        }
        loaderInfo.mLifecycleOwner = lifecycleOwner;
        loaderInfo.mObserver = loaderObserver;
        return asyncTaskLoader;
    }

    @Override // androidx.loader.app.LoaderManager
    public final AsyncTaskLoader restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loaderCallbacks) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        if (loaderViewModel.mCreatingLoader) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called while creating a loader");
            return null;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            LoaderInfo loaderInfo = (LoaderInfo) loaderViewModel.mLoaders.get(i);
            return createAndInstallLoader(i, bundle, loaderCallbacks, loaderInfo != null ? loaderInfo.destroy(false) : null);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("restartLoader must be called on the main thread");
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }
}
