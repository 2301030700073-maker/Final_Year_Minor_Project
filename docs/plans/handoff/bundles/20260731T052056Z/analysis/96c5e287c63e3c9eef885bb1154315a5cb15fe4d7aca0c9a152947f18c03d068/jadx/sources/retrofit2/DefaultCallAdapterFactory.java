package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.CallAdapter;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultCallAdapterFactory extends CallAdapter.Factory {
    public final Executor callbackExecutor;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ExecutorCallbackCall implements Call {
        public final Executor callbackExecutor;
        public final Call delegate;

        public ExecutorCallbackCall(Executor executor, Call call) {
            this.callbackExecutor = executor;
            this.delegate = call;
        }

        @Override // retrofit2.Call
        public final void cancel() {
            this.delegate.cancel();
        }

        @Override // retrofit2.Call
        public final Call clone() {
            return new ExecutorCallbackCall(this.callbackExecutor, this.delegate.clone());
        }

        @Override // retrofit2.Call
        public final void enqueue(Callback callback) {
            this.delegate.enqueue(new OkHttpCall.AnonymousClass1(27, (Object) this, (Object) callback, false));
        }

        @Override // retrofit2.Call
        public final Response execute() {
            return this.delegate.execute();
        }

        @Override // retrofit2.Call
        public final boolean isCanceled() {
            return this.delegate.isCanceled();
        }

        @Override // retrofit2.Call
        public final Request request() {
            return this.delegate.request();
        }
    }

    public DefaultCallAdapterFactory(Executor executor) {
        this.callbackExecutor = executor;
    }

    @Override // retrofit2.CallAdapter.Factory
    public final CallAdapter get(Type type, Annotation[] annotationArr) {
        if (Utils.getRawType(type) != Call.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new OkHttpCall.AnonymousClass1(26, Utils.getParameterUpperBound(0, (ParameterizedType) type), Utils.isAnnotationPresent(annotationArr, SkipCallbackExecutor.class) ? null : this.callbackExecutor);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        return null;
    }
}
