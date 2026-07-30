package defpackage;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class M9 {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f2128do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2129do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2130do;

    public M9(Context context, String str) {
        this.f2129do = context;
        this.f2130do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m1396do() {
        this.f2129do.deleteFile(this.f2130do);
    }
}
