package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Http2Connection$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Http2Connection f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda4(Http2Connection http2Connection, int i, List list, boolean z) {
        this.$r8$classId = 2;
        this.f$0 = http2Connection;
        this.f$1 = i;
    }

    private final Object invoke$okhttp3$internal$http2$Http2Connection$$ExternalSyntheticLambda4() {
        Http2Connection http2Connection = this.f$0;
        int i = this.f$1;
        http2Connection.pushObserver.getClass();
        try {
            http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
            synchronized (http2Connection) {
                http2Connection.currentPushRequests.remove(Integer.valueOf(i));
            }
        } catch (IOException unused) {
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$okhttp3$internal$http2$Http2Connection$$ExternalSyntheticLambda5() {
        Http2Connection http2Connection = this.f$0;
        int i = this.f$1;
        http2Connection.pushObserver.getClass();
        synchronized (http2Connection) {
            http2Connection.currentPushRequests.remove(Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return invoke$okhttp3$internal$http2$Http2Connection$$ExternalSyntheticLambda4();
            case 1:
                return invoke$okhttp3$internal$http2$Http2Connection$$ExternalSyntheticLambda5();
            default:
                Http2Connection http2Connection = this.f$0;
                int i = this.f$1;
                http2Connection.pushObserver.getClass();
                try {
                    http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
                    synchronized (http2Connection) {
                        http2Connection.currentPushRequests.remove(Integer.valueOf(i));
                    }
                } catch (IOException unused) {
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda4(Http2Connection http2Connection, int i, Object obj, int i2) {
        this.$r8$classId = i2;
        this.f$0 = http2Connection;
        this.f$1 = i;
    }
}
