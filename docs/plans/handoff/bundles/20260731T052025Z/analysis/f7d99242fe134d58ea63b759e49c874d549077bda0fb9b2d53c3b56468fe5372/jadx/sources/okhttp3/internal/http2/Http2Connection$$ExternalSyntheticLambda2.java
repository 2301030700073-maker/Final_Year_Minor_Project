package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.EnumDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Http2Connection$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(int i, String str, EnumDescriptor enumDescriptor) {
        this.f$1 = i;
        this.f$0 = str;
        this.f$2 = enumDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) obj2;
                try {
                    http2Connection.writer.rstStream(i2, (ErrorCode) obj);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
            default:
                String str = (String) obj2;
                EnumDescriptor enumDescriptor = (EnumDescriptor) obj;
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    serialDescriptorArr[i3] = Handshake.Companion.buildSerialDescriptor$default(str + '.' + enumDescriptor.names[i3], StructureKind$MAP.INSTANCE$3, new SerialDescriptor[0]);
                }
                return serialDescriptorArr;
        }
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(Http2Connection http2Connection, int i, ErrorCode errorCode) {
        this.f$0 = http2Connection;
        this.f$1 = i;
        this.f$2 = errorCode;
    }
}
