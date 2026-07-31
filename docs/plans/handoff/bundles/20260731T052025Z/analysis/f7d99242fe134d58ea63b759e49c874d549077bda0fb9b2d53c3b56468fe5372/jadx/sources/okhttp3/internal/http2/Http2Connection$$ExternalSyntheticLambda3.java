package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Http2Connection$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda3(PlainStringParserOperation plainStringParserOperation, String str, int i, int i2) {
        this.f$0 = plainStringParserOperation;
        this.f$2 = str;
        this.f$1 = i;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) this.f$0;
                int i = this.f$1;
                Buffer buffer = (Buffer) this.f$2;
                int i2 = this.f$3;
                try {
                    http2Connection.pushObserver.getClass();
                    buffer.skip(i2);
                    http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
                    synchronized (http2Connection) {
                        http2Connection.currentPushRequests.remove(Integer.valueOf(i));
                    }
                } catch (IOException unused) {
                }
                return Unit.INSTANCE;
            default:
                PlainStringParserOperation plainStringParserOperation = (PlainStringParserOperation) this.f$0;
                String str = (String) this.f$2;
                int i3 = this.f$1;
                return "Expected " + plainStringParserOperation.string + " but got " + str.subSequence(i3, this.f$3 + i3 + 1).toString();
        }
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda3(Http2Connection http2Connection, int i, Buffer buffer, int i2, boolean z) {
        this.f$0 = http2Connection;
        this.f$1 = i;
        this.f$2 = buffer;
        this.f$3 = i2;
    }
}
