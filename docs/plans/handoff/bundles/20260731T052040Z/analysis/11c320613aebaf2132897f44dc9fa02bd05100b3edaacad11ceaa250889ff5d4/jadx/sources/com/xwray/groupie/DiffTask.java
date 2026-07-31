package com.xwray.groupie;

import android.os.AsyncTask;
import androidx.recyclerview.widget.DiffUtil;
import java.lang.ref.WeakReference;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiffTask extends AsyncTask {
    public final WeakReference asyncListDiffer;
    public Exception backgroundException = null;
    public final DiffCallback diffCallback;
    public final WeakReference onAsyncUpdateListener;
    public final int runGeneration;

    public DiffTask(AsyncDiffUtil asyncDiffUtil, DiffCallback diffCallback, int i, FeedFragment$$ExternalSyntheticLambda1 feedFragment$$ExternalSyntheticLambda1) {
        this.diffCallback = diffCallback;
        this.asyncListDiffer = new WeakReference(asyncDiffUtil);
        this.runGeneration = i;
        this.onAsyncUpdateListener = new WeakReference(feedFragment$$ExternalSyntheticLambda1);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        try {
            return DiffUtil.calculateDiff(this.diffCallback, false);
        } catch (Exception e) {
            this.backgroundException = e;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        DiffUtil.DiffResult diffResult = (DiffUtil.DiffResult) obj;
        Exception exc = this.backgroundException;
        if (exc != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) exc);
            return;
        }
        AsyncDiffUtil asyncDiffUtil = (AsyncDiffUtil) this.asyncListDiffer.get();
        if (diffResult == null || asyncDiffUtil == null) {
            return;
        }
        ConnectionPool connectionPool = asyncDiffUtil.asyncDiffUtilCallback;
        if (this.runGeneration == asyncDiffUtil.maxScheduledGeneration) {
            ((GroupAdapter) connectionPool.delegate).setNewGroups(asyncDiffUtil.groups);
            diffResult.dispatchUpdatesTo(connectionPool);
            WeakReference weakReference = this.onAsyncUpdateListener;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((FeedFragment$$ExternalSyntheticLambda1) weakReference.get()).onUpdateComplete();
        }
    }
}
