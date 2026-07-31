package okhttp3.internal.http2;

import androidx.compose.foundation.pager.DefaultPagerState;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.newpipe.app.screen.about.AboutScreenKt$AboutScreenContent$3$1$2$1$1$1$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Http2Connection$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(int i, DefaultPagerState defaultPagerState, CoroutineScope coroutineScope) {
        this.f$0 = coroutineScope;
        this.f$2 = defaultPagerState;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) obj2;
                try {
                    http2Connection.writer.rstStream(i2, (ErrorCode) obj);
                    break;
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                    break;
                }
            default:
                JobKt.launch$default((CoroutineScope) obj2, null, null, new AboutScreenKt$AboutScreenContent$3$1$2$1$1$1$1((DefaultPagerState) obj, i2, null), 3);
                break;
        }
        return unit;
        return unit;
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(Http2Connection http2Connection, int i, ErrorCode errorCode) {
        this.f$0 = http2Connection;
        this.f$1 = i;
        this.f$2 = errorCode;
    }
}
