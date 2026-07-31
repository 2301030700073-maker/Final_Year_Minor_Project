package retrofit2;

import kotlin.ExceptionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HttpServiceMethod {
    public final OkHttpClient callFactory;
    public final RequestFactory requestFactory;
    public final Converter responseConverter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CallAdapted extends HttpServiceMethod {
        public final /* synthetic */ int $r8$classId;
        public final CallAdapter callAdapter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CallAdapted(RequestFactory requestFactory, OkHttpClient okHttpClient, Converter converter, CallAdapter callAdapter, int i) {
            super(requestFactory, okHttpClient, converter);
            this.$r8$classId = i;
            this.callAdapter = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        public final Object adapt(OkHttpCall okHttpCall, Object[] objArr) {
            int i = this.$r8$classId;
            CallAdapter callAdapter = this.callAdapter;
            switch (i) {
                case 0:
                    return callAdapter.adapt(okHttpCall);
                default:
                    Call call = (Call) callAdapter.adapt(okHttpCall);
                    Continuation continuation = (Continuation) objArr[objArr.length - 1];
                    try {
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
                        cancellableContinuationImpl.initCancellability();
                        cancellableContinuationImpl.invokeOnCancellation(new KotlinExtensions$await$2$1(call, 2));
                        call.enqueue(new KotlinExtensions$await$2$2(cancellableContinuationImpl, 3));
                        return cancellableContinuationImpl.getResult();
                    } catch (Exception e) {
                        return Utils.suspendAndThrow(e, continuation);
                    }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SuspendForBody extends HttpServiceMethod {
        public final CallAdapter callAdapter;
        public final boolean isUnit;

        public SuspendForBody(RequestFactory requestFactory, OkHttpClient okHttpClient, Converter converter, CallAdapter callAdapter, boolean z) {
            super(requestFactory, okHttpClient, converter);
            this.callAdapter = callAdapter;
            this.isUnit = z;
        }

        @Override // retrofit2.HttpServiceMethod
        public final Object adapt(OkHttpCall okHttpCall, Object[] objArr) {
            Call call = (Call) this.callAdapter.adapt(okHttpCall);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                try {
                    if (!this.isUnit) {
                        return Utils.await(call, continuation);
                    }
                    try {
                        call.getClass();
                        return Utils.awaitNullable(call, continuation);
                    } catch (LinkageError e) {
                        throw e;
                    } catch (ThreadDeath e2) {
                        throw e2;
                    }
                } catch (Throwable th) {
                    return Utils.suspendAndThrow(th, continuation);
                }
            } catch (LinkageError | ThreadDeath | VirtualMachineError e3) {
                throw e3;
            }
        }
    }

    public HttpServiceMethod(RequestFactory requestFactory, OkHttpClient okHttpClient, Converter converter) {
        this.requestFactory = requestFactory;
        this.callFactory = okHttpClient;
        this.responseConverter = converter;
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x08f8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static retrofit2.HttpServiceMethod parseAnnotations(retrofit2.Retrofit r28, java.lang.Class r29, final java.lang.reflect.Method r30) {
        /*
            Method dump skipped, instructions count: 2849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.HttpServiceMethod.parseAnnotations(retrofit2.Retrofit, java.lang.Class, java.lang.reflect.Method):retrofit2.HttpServiceMethod");
    }

    public abstract Object adapt(OkHttpCall okHttpCall, Object[] objArr);
}
