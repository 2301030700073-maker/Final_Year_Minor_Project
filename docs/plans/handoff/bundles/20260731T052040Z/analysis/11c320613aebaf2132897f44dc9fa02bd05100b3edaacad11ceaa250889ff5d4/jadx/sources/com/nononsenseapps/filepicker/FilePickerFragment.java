package com.nononsenseapps.filepicker;

import android.net.Uri;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.core.content.FileProvider;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.loader.content.AsyncTaskLoader$LoadTask;
import coil3.decode.StaticImageDecoderKt;
import java.io.File;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import us.shandian.giga.ui.fragment.MissionsFragment$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FilePickerFragment extends AbstractFilePickerFragment<File> {
    public File mRequestedPath = null;
    public final ActivityResultLauncher requestPermissionLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(2), new MissionsFragment$$ExternalSyntheticLambda0(this, 1));

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.nononsenseapps.filepicker.FilePickerFragment$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public AnonymousClass2 fileObserver;
        public boolean mAbandoned;
        public volatile AsyncTaskLoader$LoadTask mCancellingTask;
        public boolean mContentChanged;
        public final Executor mExecutor;
        public LoaderManagerImpl.LoaderInfo mListener;
        public boolean mReset;
        public boolean mStarted;
        public volatile AsyncTaskLoader$LoadTask mTask;

        public AnonymousClass1(FragmentActivity fragmentActivity) {
            ThreadPoolExecutor threadPoolExecutor = AsyncTaskLoader$LoadTask.THREAD_POOL_EXECUTOR;
            this.mStarted = false;
            this.mAbandoned = false;
            this.mReset = true;
            this.mContentChanged = false;
            fragmentActivity.getApplicationContext();
            this.mExecutor = threadPoolExecutor;
        }

        public final void cancelLoad() {
            if (this.mTask != null) {
                if (!this.mStarted) {
                    this.mContentChanged = true;
                }
                AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = this.mCancellingTask;
                AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask2 = this.mTask;
                if (asyncTaskLoader$LoadTask != null) {
                    asyncTaskLoader$LoadTask2.getClass();
                    this.mTask = null;
                    return;
                }
                asyncTaskLoader$LoadTask2.getClass();
                AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask3 = this.mTask;
                asyncTaskLoader$LoadTask3.mCancelled.set(true);
                if (asyncTaskLoader$LoadTask3.mFuture.cancel(false)) {
                    this.mCancellingTask = this.mTask;
                }
                this.mTask = null;
            }
        }

        public final void executePendingTask() {
            if (this.mCancellingTask != null || this.mTask == null) {
                return;
            }
            this.mTask.getClass();
            AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = this.mTask;
            Executor executor = this.mExecutor;
            if (asyncTaskLoader$LoadTask.mStatus == 1) {
                asyncTaskLoader$LoadTask.mStatus = 2;
                asyncTaskLoader$LoadTask.mWorker.getClass();
                executor.execute(asyncTaskLoader$LoadTask.mFuture);
                return;
            }
            int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(asyncTaskLoader$LoadTask.mStatus);
            if (ordinal == 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot execute task: the task is already running.");
            } else if (ordinal != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("We should never reach this state");
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00aa, code lost:
        
            if (r9 == (-1)) goto L45;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.SortedList onLoadInBackground() {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.nononsenseapps.filepicker.FilePickerFragment.AnonymousClass1.onLoadInBackground():androidx.recyclerview.widget.SortedList");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            Jsoup.buildShortClassTag(this, sb);
            sb.append(" id=");
            sb.append(0);
            sb.append("}");
            return sb.toString();
        }
    }

    public static int compareFiles(File file, File file2) {
        if (file.isDirectory() && !file2.isDirectory()) {
            return -1;
        }
        if (!file2.isDirectory() || file.isDirectory()) {
            return file.getName().compareToIgnoreCase(file2.getName());
        }
        return 1;
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final String getFullPath(Object obj) {
        return ((File) obj).getPath();
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final AnonymousClass1 getLoader() {
        return new AnonymousClass1(getActivity());
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final String getName(Object obj) {
        return ((File) obj).getName();
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final File getParent(Object obj) {
        File file = (File) obj;
        return (file.getPath().equals(new File("/").getPath()) || file.getParentFile() == null) ? file : file.getParentFile();
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final File getPath(String str) {
        return new File(str);
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final File getRoot() {
        return new File("/");
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final void handlePermission(Object obj) {
        this.mRequestedPath = (File) obj;
        this.requestPermissionLauncher.launch("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final boolean hasPermission(Object obj) {
        return StaticImageDecoderKt.checkSelfPermission(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final boolean isDir(Object obj) {
        return ((File) obj).isDirectory();
    }

    public boolean isItemVisible(File file) {
        int i;
        if (file.isHidden()) {
            return false;
        }
        if (isDir(file) || (i = this.mode) == 0 || i == 2) {
            return true;
        }
        return i == 3 && this.allowExistingFile;
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final void onNewFolder(String str) {
        File file = new File((File) this.mCurrentPath, str);
        if (file.mkdir()) {
            refresh(file);
        } else {
            Toast.makeText(getActivity(), R.string.nnf_create_folder_error, 0).show();
        }
    }

    @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
    public final Uri toUri(Object obj) {
        return FileProvider.getUriForFile(getContext(), getContext().getApplicationContext().getPackageName() + ".provider", (File) obj);
    }
}
