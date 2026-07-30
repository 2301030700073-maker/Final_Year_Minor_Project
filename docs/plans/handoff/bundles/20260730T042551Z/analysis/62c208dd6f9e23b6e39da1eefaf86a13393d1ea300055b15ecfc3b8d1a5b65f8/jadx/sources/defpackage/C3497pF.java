package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.locks.ReentrantLock;

@KeepForSdk
/* renamed from: pF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3497pF {

    /* renamed from: do, reason: not valid java name */
    public static C3497pF f14899do;

    /* renamed from: if, reason: not valid java name */
    public static final ReentrantLock f14900if = new ReentrantLock();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SharedPreferences f14901do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantLock f14902do = new ReentrantLock();

    public C3497pF(Context context) {
        this.f14901do = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    /* renamed from: do, reason: not valid java name */
    public static C3497pF m7790do(Context context) {
        Preconditions.checkNotNull(context);
        ReentrantLock reentrantLock = f14900if;
        reentrantLock.lock();
        try {
            if (f14899do == null) {
                f14899do = new C3497pF(context.getApplicationContext());
            }
            return f14899do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static final String m7791new(String str, String str2) {
        return Creturn.m7982new(str, CertificateUtil.DELIMITER, str2);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7792for(String str) {
        ReentrantLock reentrantLock = this.f14902do;
        reentrantLock.lock();
        try {
            this.f14901do.edit().remove(str).apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final String m7793if(String str) {
        ReentrantLock reentrantLock = this.f14902do;
        reentrantLock.lock();
        try {
            return this.f14901do.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
