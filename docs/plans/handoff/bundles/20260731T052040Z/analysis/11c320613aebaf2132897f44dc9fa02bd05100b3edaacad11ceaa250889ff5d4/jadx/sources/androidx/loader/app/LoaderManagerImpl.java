package androidx.loader.app;

import android.os.FileObserver;
import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.content.AsyncTaskLoader$LoadTask;
import com.nononsenseapps.filepicker.AbstractFilePickerFragment;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.io.File;
import java.io.PrintWriter;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LoaderManagerImpl extends LoaderManager {
    public final LifecycleOwner mLifecycleOwner;
    public final LoaderViewModel mLoaderViewModel;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LoaderInfo extends MutableLiveData {
        public LifecycleOwner mLifecycleOwner;
        public final FilePickerFragment.AnonymousClass1 mLoader;
        public LoaderObserver mObserver;
        public FilePickerFragment.AnonymousClass1 mPriorLoader;

        public LoaderInfo(FilePickerFragment.AnonymousClass1 anonymousClass1, FilePickerFragment.AnonymousClass1 anonymousClass12) {
            this.mLoader = anonymousClass1;
            this.mPriorLoader = anonymousClass12;
            if (anonymousClass1.mListener == null) {
                anonymousClass1.mListener = this;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("There is already a listener registered");
                throw null;
            }
        }

        public final FilePickerFragment.AnonymousClass1 destroy(boolean z) {
            FilePickerFragment.AnonymousClass1 anonymousClass1 = this.mLoader;
            anonymousClass1.cancelLoad();
            anonymousClass1.mAbandoned = true;
            LoaderObserver loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z && loaderObserver.mDeliveredData) {
                    loaderObserver.mCallback.isLoading = false;
                }
            }
            LoaderInfo loaderInfo = anonymousClass1.mListener;
            if (loaderInfo == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No listener register");
                return null;
            }
            if (loaderInfo != this) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Attempting to unregister the wrong listener");
                return null;
            }
            anonymousClass1.mListener = null;
            if ((loaderObserver == null || loaderObserver.mDeliveredData) && !z) {
                return anonymousClass1;
            }
            FilePickerFragment.AnonymousClass1.AnonymousClass2 anonymousClass2 = anonymousClass1.fileObserver;
            if (anonymousClass2 != null) {
                anonymousClass2.stopWatching();
                anonymousClass1.fileObserver = null;
            }
            anonymousClass1.mReset = true;
            anonymousClass1.mStarted = false;
            anonymousClass1.mAbandoned = false;
            anonymousClass1.mContentChanged = false;
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

        /* JADX WARN: Type inference failed for: r1v2, types: [android.os.FileObserver, com.nononsenseapps.filepicker.FilePickerFragment$1$2] */
        @Override // androidx.lifecycle.LiveData
        public final void onActive() {
            final FilePickerFragment.AnonymousClass1 anonymousClass1 = this.mLoader;
            anonymousClass1.mStarted = true;
            anonymousClass1.mReset = false;
            anonymousClass1.mAbandoned = false;
            FilePickerFragment filePickerFragment = FilePickerFragment.this;
            Object obj = filePickerFragment.mCurrentPath;
            if (obj == null || !((File) obj).isDirectory()) {
                filePickerFragment.mCurrentPath = new File("/");
            }
            ?? r1 = new FileObserver(((File) filePickerFragment.mCurrentPath).getPath()) { // from class: com.nononsenseapps.filepicker.FilePickerFragment.1.2
                @Override // android.os.FileObserver
                public final void onEvent(int i, String str) {
                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                    if (!anonymousClass12.mStarted) {
                        anonymousClass12.mContentChanged = true;
                        return;
                    }
                    anonymousClass12.cancelLoad();
                    anonymousClass12.mTask = new AsyncTaskLoader$LoadTask(anonymousClass12);
                    anonymousClass12.executePendingTask();
                }
            };
            anonymousClass1.fileObserver = r1;
            r1.startWatching();
            anonymousClass1.cancelLoad();
            anonymousClass1.mTask = new AsyncTaskLoader$LoadTask(anonymousClass1);
            anonymousClass1.executePendingTask();
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

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public final void setValue(Object obj) {
            super.setValue(obj);
            FilePickerFragment.AnonymousClass1 anonymousClass1 = this.mPriorLoader;
            if (anonymousClass1 != null) {
                FilePickerFragment.AnonymousClass1.AnonymousClass2 anonymousClass2 = anonymousClass1.fileObserver;
                if (anonymousClass2 != null) {
                    anonymousClass2.stopWatching();
                    anonymousClass1.fileObserver = null;
                }
                anonymousClass1.mReset = true;
                anonymousClass1.mStarted = false;
                anonymousClass1.mAbandoned = false;
                anonymousClass1.mContentChanged = false;
                this.mPriorLoader = null;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #0 : ");
            Jsoup.buildShortClassTag(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LoaderObserver implements Observer {
        public final AbstractFilePickerFragment mCallback;
        public boolean mDeliveredData = false;
        public final FilePickerFragment.AnonymousClass1 mLoader;

        public LoaderObserver(FilePickerFragment.AnonymousClass1 anonymousClass1, AbstractFilePickerFragment abstractFilePickerFragment) {
            this.mLoader = anonymousClass1;
            this.mCallback = abstractFilePickerFragment;
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class LoaderViewModel extends ViewModel {
        public static final FragmentManagerViewModel.AnonymousClass1 FACTORY = new FragmentManagerViewModel.AnonymousClass1(3);
        public final SparseArrayCompat mLoaders = new SparseArrayCompat((Object) null);
        public boolean mCreatingLoader = false;

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            SparseArrayCompat sparseArrayCompat = this.mLoaders;
            int size = sparseArrayCompat.size();
            for (int i = 0; i < size; i++) {
                ((LoaderInfo) sparseArrayCompat.valueAt(i)).destroy(true);
            }
            sparseArrayCompat.clear();
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
            throw null;
        }
    }

    public final void dump(String str, PrintWriter printWriter) {
        LoaderViewModel loaderViewModel = this.mLoaderViewModel;
        if (loaderViewModel.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < loaderViewModel.mLoaders.size(); i++) {
                LoaderInfo loaderInfo = (LoaderInfo) loaderViewModel.mLoaders.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(loaderViewModel.mLoaders.keyAt(i));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(loaderInfo.mLoader);
                FilePickerFragment.AnonymousClass1 anonymousClass1 = loaderInfo.mLoader;
                String concat = str2.concat("  ");
                anonymousClass1.getClass();
                printWriter.print(concat);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mListener=");
                printWriter.println(anonymousClass1.mListener);
                if (anonymousClass1.mStarted || anonymousClass1.mContentChanged) {
                    printWriter.print(concat);
                    printWriter.print("mStarted=");
                    printWriter.print(anonymousClass1.mStarted);
                    printWriter.print(" mContentChanged=");
                    printWriter.print(anonymousClass1.mContentChanged);
                    printWriter.print(" mProcessingChange=");
                    printWriter.println(false);
                }
                if (anonymousClass1.mAbandoned || anonymousClass1.mReset) {
                    printWriter.print(concat);
                    printWriter.print("mAbandoned=");
                    printWriter.print(anonymousClass1.mAbandoned);
                    printWriter.print(" mReset=");
                    printWriter.println(anonymousClass1.mReset);
                }
                if (anonymousClass1.mTask != null) {
                    printWriter.print(concat);
                    printWriter.print("mTask=");
                    printWriter.print(anonymousClass1.mTask);
                    printWriter.print(" waiting=");
                    anonymousClass1.mTask.getClass();
                    printWriter.println(false);
                }
                if (anonymousClass1.mCancellingTask != null) {
                    printWriter.print(concat);
                    printWriter.print("mCancellingTask=");
                    printWriter.print(anonymousClass1.mCancellingTask);
                    printWriter.print(" waiting=");
                    anonymousClass1.mCancellingTask.getClass();
                    printWriter.println(false);
                }
                if (loaderInfo.mObserver != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(loaderInfo.mObserver);
                    LoaderObserver loaderObserver = loaderInfo.mObserver;
                    String concat2 = str2.concat("  ");
                    loaderObserver.getClass();
                    printWriter.print(concat2);
                    printWriter.print("mDeliveredData=");
                    printWriter.println(loaderObserver.mDeliveredData);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                FilePickerFragment.AnonymousClass1 anonymousClass12 = loaderInfo.mLoader;
                Object obj = loaderInfo.mData;
                Object obj2 = obj != LiveData.NOT_SET ? obj : null;
                anonymousClass12.getClass();
                StringBuilder sb = new StringBuilder(64);
                Jsoup.buildShortClassTag(obj2, sb);
                sb.append("}");
                printWriter.println(sb.toString());
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(loaderInfo.mActiveCount > 0);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Jsoup.buildShortClassTag(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }
}
