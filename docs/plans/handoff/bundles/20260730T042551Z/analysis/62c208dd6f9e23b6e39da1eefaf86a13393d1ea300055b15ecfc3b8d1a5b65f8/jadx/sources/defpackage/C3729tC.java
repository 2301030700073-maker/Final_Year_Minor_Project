package defpackage;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayDeque;

@KeepForSdk
/* renamed from: tC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3729tC {

    /* renamed from: do, reason: not valid java name */
    public static C3729tC f15632do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f15634do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f15633do = null;

    /* renamed from: if, reason: not valid java name */
    public Boolean f15636if = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f15635do = new ArrayDeque();

    /* renamed from: do, reason: not valid java name */
    public static synchronized C3729tC m8222do() {
        C3729tC c3729tC;
        synchronized (C3729tC.class) {
            if (f15632do == null) {
                f15632do = new C3729tC();
            }
            c3729tC = f15632do;
        }
        return c3729tC;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m8223for(Context context) {
        if (this.f15633do == null) {
            this.f15633do = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        this.f15633do.booleanValue();
        return this.f15633do.booleanValue();
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m8224if(Context context) {
        if (this.f15636if == null) {
            this.f15636if = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        this.f15633do.booleanValue();
        return this.f15636if.booleanValue();
    }
}
