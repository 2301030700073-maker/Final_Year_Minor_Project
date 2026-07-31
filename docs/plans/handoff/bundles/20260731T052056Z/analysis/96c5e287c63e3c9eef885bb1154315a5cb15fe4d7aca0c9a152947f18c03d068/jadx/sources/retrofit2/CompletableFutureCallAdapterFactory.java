package retrofit2;

import com.google.gson.internal.ConstructorConstructor$5;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.CallAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompletableFutureCallAdapterFactory extends CallAdapter.Factory {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CallCancelCompletableFuture extends CompletableFuture {
        public final OkHttpCall call;

        public CallCancelCompletableFuture(OkHttpCall okHttpCall) {
            this.call = okHttpCall;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (z) {
                this.call.cancel();
            }
            return super.cancel(z);
        }
    }

    @Override // retrofit2.CallAdapter.Factory
    public final CallAdapter get(Type type, Annotation[] annotationArr) {
        if (Utils.getRawType(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
            return null;
        }
        Type parameterUpperBound = Utils.getParameterUpperBound(0, (ParameterizedType) type);
        if (Utils.getRawType(parameterUpperBound) != Response.class) {
            return new ConstructorConstructor$5(2, parameterUpperBound);
        }
        if (parameterUpperBound instanceof ParameterizedType) {
            return new ConstructorConstructor$5(3, Utils.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        return null;
    }
}
