package com.android.contacts.util;

import android.os.AsyncTask;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class WeakAsyncTask<Params, Progress, Result, WeakTarget> extends AsyncTask<Params, Progress, Result> {
    protected WeakReference<WeakTarget> mTarget;

    protected abstract Result doInBackground(WeakTarget weaktarget, Params... paramsArr);

    protected abstract void onPostExecute(WeakTarget weaktarget, Result result);

    protected abstract void onPreExecute(WeakTarget weaktarget);

    public WeakAsyncTask(WeakTarget weaktarget) {
        this.mTarget = new WeakReference<>(weaktarget);
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        WeakTarget weaktarget = this.mTarget.get();
        if (weaktarget != null) {
            onPreExecute(weaktarget);
        }
    }

    @Override // android.os.AsyncTask
    protected final Result doInBackground(Params... paramsArr) {
        WeakTarget weaktarget = this.mTarget.get();
        if (weaktarget != null) {
            return doInBackground(weaktarget, paramsArr);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Result result) {
        WeakTarget weaktarget = this.mTarget.get();
        if (weaktarget != null) {
            onPostExecute(weaktarget, result);
        }
    }
}
