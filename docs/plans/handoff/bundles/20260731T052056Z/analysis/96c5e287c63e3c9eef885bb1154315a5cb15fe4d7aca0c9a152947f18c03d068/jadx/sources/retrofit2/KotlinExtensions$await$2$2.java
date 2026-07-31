package retrofit2;

import coil3.network.okhttp.internal.CallsKt$await$2$2$onResponse$1;
import java.io.IOException;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.UnsignedKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Request;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KotlinExtensions$await$2$2 implements okhttp3.Callback, Callback {
    public final /* synthetic */ CancellableContinuationImpl $continuation;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KotlinExtensions$await$2$2(CancellableContinuationImpl cancellableContinuationImpl, int i) {
        this.$r8$classId = i;
        this.$continuation = cancellableContinuationImpl;
    }

    @Override // retrofit2.Callback
    public void onFailure(Call call, Throwable th) {
        int i = this.$r8$classId;
        CancellableContinuationImpl cancellableContinuationImpl = this.$continuation;
        switch (i) {
            case 0:
                cancellableContinuationImpl.resumeWith(new Result.Failure(th));
                break;
            case 1:
            default:
                cancellableContinuationImpl.resumeWith(new Result.Failure(th));
                break;
            case 2:
                cancellableContinuationImpl.resumeWith(new Result.Failure(th));
                break;
        }
    }

    @Override // retrofit2.Callback
    public void onResponse(Call call, Response response) {
        int i = this.$r8$classId;
        CancellableContinuationImpl cancellableContinuationImpl = this.$continuation;
        switch (i) {
            case 0:
                if (!response.rawResponse.isSuccessful) {
                    cancellableContinuationImpl.resumeWith(new Result.Failure(new HttpException(response)));
                    break;
                } else {
                    Object obj = response.body;
                    if (obj != null) {
                        cancellableContinuationImpl.resumeWith(obj);
                        break;
                    } else {
                        Request request = call.request();
                        request.getClass();
                        KClass orCreateKotlinClass = kotlin.jvm.internal.Reflection.factory.getOrCreateKotlinClass(Invocation.class);
                        Object cast = UnsignedKt.getJavaClass(orCreateKotlinClass).cast(request.tags.get(orCreateKotlinClass));
                        cast.getClass();
                        Invocation invocation = (Invocation) cast;
                        cancellableContinuationImpl.resumeWith(new Result.Failure(new KotlinNullPointerException("Response from " + invocation.service.getName() + '.' + invocation.method.getName() + " was null but response body type was declared as non-null")));
                        break;
                    }
                }
            case 1:
            default:
                cancellableContinuationImpl.resumeWith(response);
                break;
            case 2:
                if (!response.rawResponse.isSuccessful) {
                    cancellableContinuationImpl.resumeWith(new Result.Failure(new HttpException(response)));
                    break;
                } else {
                    cancellableContinuationImpl.resumeWith(response.body);
                    break;
                }
        }
    }

    @Override // okhttp3.Callback
    public void onFailure(RealCall realCall, IOException iOException) {
        this.$continuation.resumeWith(new Result.Failure(iOException));
    }

    @Override // okhttp3.Callback
    public void onResponse(RealCall realCall, okhttp3.Response response) {
        this.$continuation.resume(response, CallsKt$await$2$2$onResponse$1.INSTANCE);
    }
}
