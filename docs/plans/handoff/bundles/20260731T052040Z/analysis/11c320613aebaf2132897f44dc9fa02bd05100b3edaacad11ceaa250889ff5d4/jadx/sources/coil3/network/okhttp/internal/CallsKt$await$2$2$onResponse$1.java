package coil3.network.okhttp.internal;

import com.android.tools.r8.RecordTag;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import okhttp3.Response;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CallsKt$await$2$2$onResponse$1 implements Function3 {
    public static final CallsKt$await$2$2$onResponse$1 INSTANCE = new CallsKt$await$2$2$onResponse$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        try {
            RecordTag.m((Response) obj2);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
