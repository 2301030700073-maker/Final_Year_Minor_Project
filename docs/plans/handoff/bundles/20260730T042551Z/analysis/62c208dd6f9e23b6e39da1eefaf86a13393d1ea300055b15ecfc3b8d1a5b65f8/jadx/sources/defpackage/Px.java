package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Random;

/* loaded from: classes.dex */
public final /* synthetic */ class Px implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2843do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2844for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2845if;

    public /* synthetic */ Px(int i, Object obj, Object obj2) {
        this.f2844for = i;
        this.f2843do = obj;
        this.f2845if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2844for;
        Object obj = this.f2845if;
        Object obj2 = this.f2843do;
        switch (i) {
            case 0:
                Context context = (Context) obj;
                ((ProfileInstallerInitializer) obj2).getClass();
                (Build.VERSION.SDK_INT >= 28 ? ProfileInstallerInitializer.Cif.m4292do(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new RunnableC2617d9(context, 1), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
            default:
                ((C0445Qb) obj2).m1974do((InterfaceC3200kD) obj);
                break;
        }
    }
}
