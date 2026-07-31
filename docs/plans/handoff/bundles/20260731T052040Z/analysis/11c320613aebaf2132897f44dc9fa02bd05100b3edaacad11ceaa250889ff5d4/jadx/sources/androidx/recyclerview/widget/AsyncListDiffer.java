package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentTransitionImpl;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AsyncListDiffer {
    public static final MainThreadExecutor sMainThreadExecutor = new MainThreadExecutor();
    public final CardView.AnonymousClass1 mConfig;
    public List mList;
    public int mMaxScheduledGeneration;
    public final OpReorderer mUpdateCallback;
    public final CopyOnWriteArrayList mListeners = new CopyOnWriteArrayList();
    public List mReadOnlyList = Collections.EMPTY_LIST;
    public final MainThreadExecutor mMainThreadExecutor = sMainThreadExecutor;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface ListListener {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MainThreadExecutor implements Executor {
        public final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    public AsyncListDiffer(OpReorderer opReorderer, CardView.AnonymousClass1 anonymousClass1) {
        this.mUpdateCallback = opReorderer;
        this.mConfig = anonymousClass1;
    }

    public final void onCurrentListChanged(List list, Runnable runnable) {
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ListListener listListener = (ListListener) it.next();
            ListAdapter.this.onCurrentListChanged(list, this.mReadOnlyList);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void submitList(List list, Runnable runnable) {
        int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        List list2 = this.mList;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.mReadOnlyList;
        OpReorderer opReorderer = this.mUpdateCallback;
        if (list == null) {
            int size = list2.size();
            this.mList = null;
            this.mReadOnlyList = Collections.EMPTY_LIST;
            opReorderer.onRemoved(0, size);
            onCurrentListChanged(list3, runnable);
            return;
        }
        if (list2 != null) {
            ((Executor) this.mConfig.mCardBackground).execute(new FragmentTransitionImpl.AnonymousClass1(this, list2, list, i, runnable));
            return;
        }
        this.mList = list;
        this.mReadOnlyList = DesugarCollections.unmodifiableList(list);
        opReorderer.onInserted(0, list.size());
        onCurrentListChanged(list3, runnable);
    }
}
