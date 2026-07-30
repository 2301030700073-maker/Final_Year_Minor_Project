package b.b.g;

import android.content.Context;
import android.content.ContextWrapper;

/* loaded from: classes.dex */
public class X0 extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f495a = new Object();

    public static Context a(Context context) {
        if (!(context instanceof X0) && !(context.getResources() instanceof Z0)) {
            context.getResources();
            l1.a();
        }
        return context;
    }
}
