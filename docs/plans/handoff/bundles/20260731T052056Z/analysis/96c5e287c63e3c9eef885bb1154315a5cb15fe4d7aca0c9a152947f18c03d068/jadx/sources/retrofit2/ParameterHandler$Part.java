package retrofit2;

import androidx.compose.animation.core.Animation;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.RequestBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParameterHandler$Part extends Utils {
    public final /* synthetic */ int $r8$classId = 0;
    public final Converter converter;
    public final Object headers;
    public final Method method;
    public final int p;

    public ParameterHandler$Part(Method method, int i, Headers headers, Converter converter) {
        this.method = method;
        this.p = i;
        this.headers = headers;
        this.converter = converter;
    }

    @Override // retrofit2.Utils
    public final void apply(RequestBuilder requestBuilder, Object obj) {
        int i = this.$r8$classId;
        Converter converter = this.converter;
        Object obj2 = this.headers;
        Method method = this.method;
        int i2 = this.p;
        switch (i) {
            case 0:
                if (obj == null) {
                    return;
                }
                try {
                    requestBuilder.addPart((Headers) obj2, (RequestBody) converter.convert(obj));
                    return;
                } catch (IOException e) {
                    throw Utils.parameterError(method, i2, "Unable to convert " + obj + " to RequestBody", e);
                }
            default:
                Map map = (Map) obj;
                if (map == null) {
                    throw Utils.parameterError(method, i2, "Part map was null.", new Object[0]);
                }
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw Utils.parameterError(method, i2, "Part map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        throw Utils.parameterError(method, i2, Animation.CC.m("Part map contained null value for key '", str, "'."), new Object[0]);
                    }
                    String[] strArr = {"Content-Disposition", Animation.CC.m("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", (String) obj2};
                    Headers headers = Headers.EMPTY;
                    requestBuilder.addPart(Headers.Companion.of(strArr), (RequestBody) converter.convert(value));
                }
                return;
        }
    }

    public ParameterHandler$Part(Method method, int i, Converter converter, String str) {
        this.method = method;
        this.p = i;
        this.converter = converter;
        this.headers = str;
    }
}
