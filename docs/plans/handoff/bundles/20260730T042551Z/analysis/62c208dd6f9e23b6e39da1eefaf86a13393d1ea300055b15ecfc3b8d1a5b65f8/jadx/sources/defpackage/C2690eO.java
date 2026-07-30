package defpackage;

import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;

/* renamed from: eO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2690eO {

    /* renamed from: do, reason: not valid java name */
    public final String f12673do;

    public C2690eO(String str) {
        this.f12673do = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6560new(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException unused) {
                "Unable to format ".concat(String.valueOf(str2));
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return Creturn.m7982new(str, " : ", str2);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6561do(RemoteException remoteException, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            m6560new(this.f12673do, str, objArr);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6562for(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            m6560new(this.f12673do, str, objArr);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6563if(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            m6560new(this.f12673do, str, objArr);
        }
    }
}
