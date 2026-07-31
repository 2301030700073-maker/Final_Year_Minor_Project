package coil3.network;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeDupeConcurrentRequestStrategy implements ConcurrentRequestStrategy {
    private final Map<String, Request> concurrentRequests = new LinkedHashMap();
    private final Object lock = new Object();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Request {
        private boolean hasSucceeded;
        private boolean isClosed;
        private int observerCount;
        private final Channel channel = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, null, 6);
        private final Object lock = new Object();

        public final Request acquire() {
            synchronized (this.lock) {
                this.observerCount++;
            }
            return this;
        }

        public final Channel getChannel() {
            return this.channel;
        }

        public final void markSucceeded() {
            synchronized (this.lock) {
                this.hasSucceeded = true;
            }
        }

        public final void release(Function0 function0) {
            synchronized (this.lock) {
                try {
                    int i = this.observerCount - 1;
                    this.observerCount = i;
                    if (i > 0) {
                        if (this.hasSucceeded) {
                        }
                    }
                    if (!this.isClosed) {
                        this.channel.close(null);
                        function0.invoke();
                        this.isClosed = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit apply$lambda$2(DeDupeConcurrentRequestStrategy deDupeConcurrentRequestStrategy, String str) {
        synchronized (deDupeConcurrentRequestStrategy.lock) {
            deDupeConcurrentRequestStrategy.concurrentRequests.remove(str);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|1|(5:(2:3|(8:5|6|7|(1:(1:(6:11|12|13|14|15|16)(2:22|23))(1:24))(4:37|5e|45|(1:47))|25|26|(4:29|14|15|16)|28))|25|26|(0)|28)|55|6|7|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008e, code lost:
    
        if (r2.mo1013receiveCatchingJP2dKIU(r0) == r1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0036, code lost:
    
        r12 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r10v3 */
    @Override // coil3.network.ConcurrentRequestStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply(java.lang.String r10, kotlin.jvm.functions.Function1 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.DeDupeConcurrentRequestStrategy.apply(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
