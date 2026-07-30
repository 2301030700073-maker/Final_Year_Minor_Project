package com.android.contacts.list;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.compat.ProviderStatusCompat;
import com.android.contactsbind.FeedbackHelper;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ProviderStatusWatcher extends ContentObserver {
    private static final String[] PROJECTION = {"status"};
    private static ProviderStatusWatcher sInstance;
    private final Context mContext;
    private final Handler mHandler;
    private final ArrayList<ProviderStatusListener> mListeners;
    private LoaderTask mLoaderTask;
    private Integer mProviderStatus;
    private final Object mSignal;
    private final Runnable mStartLoadingRunnable;
    private int mStartRequestedCount;

    public interface ProviderStatusListener {
        void onProviderStatusChange();
    }

    public static synchronized ProviderStatusWatcher getInstance(Context context) {
        ProviderStatusWatcher providerStatusWatcher;
        synchronized (ProviderStatusWatcher.class) {
            if (sInstance == null) {
                sInstance = new ProviderStatusWatcher(context);
            }
            providerStatusWatcher = sInstance;
        }
        return providerStatusWatcher;
    }

    private ProviderStatusWatcher(Context context) {
        super(null);
        this.mHandler = new Handler();
        this.mSignal = new Object();
        this.mListeners = Lists.newArrayList();
        this.mStartLoadingRunnable = new Runnable() { // from class: com.android.contacts.list.ProviderStatusWatcher.1
            @Override // java.lang.Runnable
            public void run() {
                ProviderStatusWatcher.this.startLoading();
            }
        };
        this.mContext = context;
    }

    public void addListener(ProviderStatusListener providerStatusListener) {
        this.mListeners.add(providerStatusListener);
    }

    public void removeListener(ProviderStatusListener providerStatusListener) {
        this.mListeners.remove(providerStatusListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListeners() {
        if (isStarted()) {
            Iterator<ProviderStatusListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onProviderStatusChange();
            }
        }
    }

    private boolean isStarted() {
        return this.mStartRequestedCount > 0;
    }

    public void start() {
        int i = this.mStartRequestedCount + 1;
        this.mStartRequestedCount = i;
        if (i == 1) {
            this.mContext.getContentResolver().registerContentObserver(ContactsContract.ProviderStatus.CONTENT_URI, false, this);
            startLoading();
        }
    }

    public void stop() {
        if (!isStarted()) {
            Log.e("ProviderStatusWatcher", "Already stopped");
            return;
        }
        int i = this.mStartRequestedCount - 1;
        this.mStartRequestedCount = i;
        if (i == 0) {
            this.mHandler.removeCallbacks(this.mStartLoadingRunnable);
            this.mContext.getContentResolver().unregisterContentObserver(this);
        }
    }

    public int getProviderStatus() {
        waitForLoaded();
        Integer num = this.mProviderStatus;
        if (num == null) {
            return ProviderStatusCompat.STATUS_BUSY;
        }
        return num.intValue();
    }

    private void waitForLoaded() {
        if (this.mProviderStatus == null) {
            if (this.mLoaderTask == null) {
                startLoading();
            }
            synchronized (this.mSignal) {
                try {
                    this.mSignal.wait(1000L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoading() {
        if (this.mLoaderTask != null) {
            return;
        }
        LoaderTask loaderTask = new LoaderTask();
        this.mLoaderTask = loaderTask;
        loaderTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private class LoaderTask extends AsyncTask<Void, Void, Boolean> {
        private LoaderTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            Boolean bool = Boolean.FALSE;
            try {
                try {
                    Cursor query = ProviderStatusWatcher.this.mContext.getContentResolver().query(ContactsContract.ProviderStatus.CONTENT_URI, ProviderStatusWatcher.PROJECTION, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                ProviderStatusWatcher.this.mProviderStatus = Integer.valueOf(query.getInt(0));
                                Boolean bool2 = Boolean.TRUE;
                                synchronized (ProviderStatusWatcher.this.mSignal) {
                                    ProviderStatusWatcher.this.mSignal.notifyAll();
                                }
                                return bool2;
                            }
                            query.close();
                        } finally {
                            query.close();
                        }
                    }
                    synchronized (ProviderStatusWatcher.this.mSignal) {
                        ProviderStatusWatcher.this.mSignal.notifyAll();
                    }
                    return bool;
                } catch (SecurityException e) {
                    FeedbackHelper.sendFeedback(ProviderStatusWatcher.this.mContext, "ProviderStatusWatcher", "Security exception when querying provider status", e);
                    synchronized (ProviderStatusWatcher.this.mSignal) {
                        ProviderStatusWatcher.this.mSignal.notifyAll();
                        return bool;
                    }
                }
            } catch (Throwable th) {
                synchronized (ProviderStatusWatcher.this.mSignal) {
                    ProviderStatusWatcher.this.mSignal.notifyAll();
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Boolean bool) {
            cleanUp();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            cleanUp();
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            ProviderStatusWatcher.this.notifyListeners();
        }

        private void cleanUp() {
            ProviderStatusWatcher.this.mLoaderTask = null;
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        if (ContactsContract.ProviderStatus.CONTENT_URI.equals(uri)) {
            Log.i("ProviderStatusWatcher", "Provider status changed.");
            this.mHandler.removeCallbacks(this.mStartLoadingRunnable);
            this.mHandler.post(this.mStartLoadingRunnable);
        }
    }
}
