package defpackage;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.GraphRequest;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: Jl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AsyncTaskC0302Jl extends AsyncTask<Void, Void, List<? extends C0346Ll>> {

    /* renamed from: do, reason: not valid java name */
    public final C0324Kl f1684do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Exception f1685do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpURLConnection f1686do;

    public AsyncTaskC0302Jl(C0324Kl c0324Kl) {
        C0173Do.m401try(c0324Kl, "requests");
        this.f1686do = null;
        this.f1684do = c0324Kl;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1058do(List<C0346Ll> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                C0173Do.m401try(list, "result");
                super.onPostExecute(list);
                Exception exc = this.f1685do;
                if (exc != null) {
                    Utility utility = Utility.INSTANCE;
                    String format = String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1));
                    C0173Do.m399new(format, "java.lang.String.format(format, *args)");
                    Utility.logd("Jl", format);
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.os.AsyncTask
    public final List<? extends C0346Ll> doInBackground(Void[] voidArr) {
        ArrayList m5291new;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                Void[] voidArr2 = voidArr;
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return null;
                    }
                    try {
                        C0173Do.m401try(voidArr2, NativeProtocol.WEB_DIALOG_PARAMS);
                        try {
                            HttpURLConnection httpURLConnection = this.f1686do;
                            C0324Kl c0324Kl = this.f1684do;
                            if (httpURLConnection == null) {
                                c0324Kl.getClass();
                                String str = GraphRequest.f9271for;
                                m5291new = GraphRequest.Cfor.m5288for(c0324Kl);
                            } else {
                                String str2 = GraphRequest.f9271for;
                                m5291new = GraphRequest.Cfor.m5291new(c0324Kl, httpURLConnection);
                            }
                            return m5291new;
                        } catch (Exception e) {
                            this.f1685do = e;
                            return null;
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                        return null;
                    }
                } catch (Throwable th2) {
                    CrashShieldHandler.handleThrowable(th2, this);
                    return null;
                }
            } catch (Throwable th3) {
                CrashShieldHandler.handleThrowable(th3, this);
                return null;
            }
        } catch (Throwable th4) {
            CrashShieldHandler.handleThrowable(th4, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(List<? extends C0346Ll> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                m1058do(list);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        C0324Kl c0324Kl = this.f1684do;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                super.onPreExecute();
                C3756th c3756th = C3756th.f15751do;
                if (c0324Kl.f1874do == null) {
                    c0324Kl.f1874do = Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper());
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final String toString() {
        String str = "{RequestAsyncTask:  connection: " + this.f1686do + ", requests: " + this.f1684do + "}";
        C0173Do.m399new(str, "StringBuilder()\n        .append(\"{RequestAsyncTask: \")\n        .append(\" connection: \")\n        .append(connection)\n        .append(\", requests: \")\n        .append(requests)\n        .append(\"}\")\n        .toString()");
        return str;
    }
}
