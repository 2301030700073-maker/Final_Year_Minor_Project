package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class T7 extends FM {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f3599do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Class f3600do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Method f3601do;

    public T7(Method method, Class cls, int i) {
        this.f3601do = method;
        this.f3600do = cls;
        this.f3599do = i;
    }

    @Override // defpackage.FM
    /* renamed from: if */
    public final Object mo611if() {
        return this.f3601do.invoke(null, this.f3600do, Integer.valueOf(this.f3599do));
    }

    public final String toString() {
        return this.f3600do.getName();
    }
}
