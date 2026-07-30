package defpackage;

import com.facebook.internal.LockOnGetVariable;
import java.io.FileOutputStream;
import java.util.concurrent.Callable;

/* renamed from: Nq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC0394Nq implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2440do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2441do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2442if;

    public /* synthetic */ CallableC0394Nq(int i, Object obj, Object obj2) {
        this.f2440do = i;
        this.f2441do = obj;
        this.f2442if = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void m5429_init_$lambda0;
        switch (this.f2440do) {
            case 0:
                m5429_init_$lambda0 = LockOnGetVariable.m5429_init_$lambda0((LockOnGetVariable) this.f2441do, (Callable) this.f2442if);
                return m5429_init_$lambda0;
            default:
                D9 d9 = (D9) this.f2441do;
                E9 e9 = (E9) this.f2442if;
                M9 m9 = d9.f517do;
                synchronized (m9) {
                    FileOutputStream openFileOutput = m9.f2129do.openFileOutput(m9.f2130do, 0);
                    try {
                        openFileOutput.write(e9.toString().getBytes("UTF-8"));
                    } finally {
                        openFileOutput.close();
                    }
                }
                return null;
        }
    }
}
