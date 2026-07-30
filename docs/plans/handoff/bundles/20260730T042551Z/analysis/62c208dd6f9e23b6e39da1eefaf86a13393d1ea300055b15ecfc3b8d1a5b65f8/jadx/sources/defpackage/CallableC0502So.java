package defpackage;

import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;

/* renamed from: So, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0502So implements Callable<Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ JsReplyProxyBoundaryInterface f3553do;

    public CallableC0502So(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        this.f3553do = jsReplyProxyBoundaryInterface;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new C0524To(this.f3553do);
    }
}
