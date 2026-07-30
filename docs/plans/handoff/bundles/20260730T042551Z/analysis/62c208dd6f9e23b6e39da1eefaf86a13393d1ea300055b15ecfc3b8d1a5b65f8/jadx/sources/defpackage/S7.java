package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class S7 extends FM {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Class f3447do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f3448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Method f3449do;

    public S7(Method method, Object obj, Class cls) {
        this.f3449do = method;
        this.f3448do = obj;
        this.f3447do = cls;
    }

    @Override // defpackage.FM
    /* renamed from: if */
    public final Object mo611if() {
        return this.f3449do.invoke(this.f3448do, this.f3447do);
    }

    public final String toString() {
        return this.f3447do.getName();
    }
}
