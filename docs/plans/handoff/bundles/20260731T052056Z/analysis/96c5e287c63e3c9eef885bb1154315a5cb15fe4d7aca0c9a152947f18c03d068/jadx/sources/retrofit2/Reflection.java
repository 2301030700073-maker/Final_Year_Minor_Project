package retrofit2;

import android.os.Build;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.ResponseBody$Companion$asResponseBody$1;
import okio.Buffer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Reflection implements Converter {
    public static final Reflection INSTANCE = new Reflection(1);
    public static final Reflection INSTANCE$1 = new Reflection(2);
    public static final Reflection INSTANCE$2 = new Reflection(3);
    public static final Reflection INSTANCE$3 = new Reflection(4);
    public static final Reflection INSTANCE$4 = new Reflection(5);
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Android24 extends Reflection {
        @Override // retrofit2.Reflection
        public final Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
            if (Build.VERSION.SDK_INT >= 26) {
                return DefaultMethodSupport.invoke(method, cls, obj, objArr);
            }
            Gson$$ExternalSyntheticBUOutline0.m("Calling default methods on API 24 and 25 is not supported");
            return null;
        }

        @Override // retrofit2.Reflection
        public final boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Java8 extends Reflection {
        @Override // retrofit2.Reflection
        public final String describeMethodParameter(int i, Method method) {
            Parameter parameter = method.getParameters()[i];
            if (!parameter.isNamePresent()) {
                return super.describeMethodParameter(i, method);
            }
            return "parameter '" + parameter.getName() + '\'';
        }

        @Override // retrofit2.Reflection
        public final Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
            return DefaultMethodSupport.invoke(method, cls, obj, objArr);
        }

        @Override // retrofit2.Reflection
        public final boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }
    }

    public /* synthetic */ Reflection(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // retrofit2.Converter
    public Object convert(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                ResponseBody responseBody = (ResponseBody) obj;
                try {
                    Buffer buffer = new Buffer();
                    responseBody.source().readAll(buffer);
                    ResponseBody$Companion$asResponseBody$1 responseBody$Companion$asResponseBody$1 = new ResponseBody$Companion$asResponseBody$1(responseBody.contentType(), responseBody.contentLength(), buffer);
                    responseBody.close();
                    return responseBody$Companion$asResponseBody$1;
                } catch (Throwable th) {
                    responseBody.close();
                    throw th;
                }
            case 2:
                return (RequestBody) obj;
            case 3:
                return (ResponseBody) obj;
            case 4:
                ((ResponseBody) obj).close();
                return Unit.INSTANCE;
            default:
                ((ResponseBody) obj).close();
                return null;
        }
    }

    public List createDefaultCallAdapterFactories(Executor executor) {
        return Collections.singletonList(new DefaultCallAdapterFactory(executor));
    }

    public List createDefaultConverterFactories() {
        return Collections.EMPTY_LIST;
    }

    public String describeMethodParameter(int i, Method method) {
        return "parameter #" + (i + 1);
    }

    public Object invokeDefaultMethod(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    public boolean isDefaultMethod(Method method) {
        return false;
    }
}
