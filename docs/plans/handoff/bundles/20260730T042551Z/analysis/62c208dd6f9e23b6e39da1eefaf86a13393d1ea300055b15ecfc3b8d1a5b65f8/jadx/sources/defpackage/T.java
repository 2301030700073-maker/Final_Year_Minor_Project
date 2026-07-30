package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class T implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3568do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f3569if;

    public T(Object obj, Object obj2) {
        this.f3568do = obj;
        this.f3569if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Method method = U.f3796do;
            Object obj = this.f3569if;
            Object obj2 = this.f3568do;
            if (method != null) {
                method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
            } else {
                U.f3799if.invoke(obj2, obj, Boolean.FALSE);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable unused) {
        }
    }
}
