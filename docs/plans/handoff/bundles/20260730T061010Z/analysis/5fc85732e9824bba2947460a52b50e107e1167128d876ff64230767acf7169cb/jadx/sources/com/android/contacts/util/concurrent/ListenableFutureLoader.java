package com.android.contacts.util.concurrent;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ListenableFutureLoader<D> extends Loader<D> {
    private ListenableFuture<D> mFuture;
    private D mLoadedData;
    private final LocalBroadcastManager mLocalBroadcastManager;
    private BroadcastReceiver mReceiver;
    private final IntentFilter mReloadFilter;
    private final Executor mUiExecutor;

    protected boolean isSameData(D d, D d2) {
        return false;
    }

    protected abstract ListenableFuture<D> loadData();

    public ListenableFutureLoader(Context context, IntentFilter intentFilter) {
        super(context);
        this.mUiExecutor = ContactsExecutors.newUiThreadExecutor();
        this.mReloadFilter = intentFilter;
        this.mLocalBroadcastManager = LocalBroadcastManager.getInstance(context);
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        if (this.mReloadFilter != null && this.mReceiver == null) {
            ForceLoadReceiver forceLoadReceiver = new ForceLoadReceiver();
            this.mReceiver = forceLoadReceiver;
            this.mLocalBroadcastManager.registerReceiver(forceLoadReceiver, this.mReloadFilter);
        }
        D d = this.mLoadedData;
        if (d != null) {
            deliverResult(d);
        }
        if (this.mFuture == null) {
            takeContentChanged();
            forceLoad();
        } else if (takeContentChanged()) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    protected void onForceLoad() {
        ListenableFuture<D> loadData = loadData();
        this.mFuture = loadData;
        Futures.addCallback(loadData, new FutureCallback<D>() { // from class: com.android.contacts.util.concurrent.ListenableFutureLoader.1
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
            
                if (r0.isSameData(r0.mLoadedData, r3) == false) goto L6;
             */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.FutureCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onSuccess(D r3) {
                /*
                    r2 = this;
                    com.android.contacts.util.concurrent.ListenableFutureLoader r0 = com.android.contacts.util.concurrent.ListenableFutureLoader.this
                    java.lang.Object r0 = com.android.contacts.util.concurrent.ListenableFutureLoader.access$000(r0)
                    if (r0 == 0) goto L14
                    com.android.contacts.util.concurrent.ListenableFutureLoader r0 = com.android.contacts.util.concurrent.ListenableFutureLoader.this
                    java.lang.Object r1 = com.android.contacts.util.concurrent.ListenableFutureLoader.access$000(r0)
                    boolean r0 = r0.isSameData(r1, r3)
                    if (r0 != 0) goto L19
                L14:
                    com.android.contacts.util.concurrent.ListenableFutureLoader r0 = com.android.contacts.util.concurrent.ListenableFutureLoader.this
                    r0.deliverResult(r3)
                L19:
                    com.android.contacts.util.concurrent.ListenableFutureLoader r0 = com.android.contacts.util.concurrent.ListenableFutureLoader.this
                    com.android.contacts.util.concurrent.ListenableFutureLoader.access$002(r0, r3)
                    com.android.contacts.util.concurrent.ListenableFutureLoader r3 = com.android.contacts.util.concurrent.ListenableFutureLoader.this
                    r3.commitContentChanged()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.concurrent.ListenableFutureLoader.AnonymousClass1.onSuccess(java.lang.Object):void");
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                if (th instanceof CancellationException) {
                    Log.i("FutureLoader", "Loading cancelled", th);
                    ListenableFutureLoader.this.rollbackContentChanged();
                } else {
                    Log.e("FutureLoader", "Loading failed", th);
                }
            }
        }, this.mUiExecutor);
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        ListenableFuture<D> listenableFuture = this.mFuture;
        if (listenableFuture != null) {
            listenableFuture.cancel(false);
            this.mFuture = null;
        }
    }

    @Override // android.content.Loader
    protected void onReset() {
        this.mFuture = null;
        this.mLoadedData = null;
        BroadcastReceiver broadcastReceiver = this.mReceiver;
        if (broadcastReceiver != null) {
            this.mLocalBroadcastManager.unregisterReceiver(broadcastReceiver);
        }
    }

    public class ForceLoadReceiver extends BroadcastReceiver {
        public ForceLoadReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ListenableFutureLoader.this.onContentChanged();
        }
    }
}
