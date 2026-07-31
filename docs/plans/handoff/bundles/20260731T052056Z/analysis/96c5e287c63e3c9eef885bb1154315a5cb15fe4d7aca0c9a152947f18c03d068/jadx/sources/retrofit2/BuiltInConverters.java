package retrofit2;

import j$.util.Optional;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.http.Streaming;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInConverters extends Converter.Factory {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BuiltInConverters(int i) {
        this.$r8$classId = i;
    }

    @Override // retrofit2.Converter.Factory
    public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        switch (this.$r8$classId) {
            case 0:
                if (RequestBody.class.isAssignableFrom(Utils.getRawType(type))) {
                    return Reflection.INSTANCE$1;
                }
                return null;
            default:
                return super.requestBodyConverter(type, annotationArr, annotationArr2, retrofit);
        }
    }

    @Override // retrofit2.Converter.Factory
    public final Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        switch (this.$r8$classId) {
            case 0:
                if (type == ResponseBody.class) {
                    return Utils.isAnnotationPresent(annotationArr, Streaming.class) ? Reflection.INSTANCE$2 : Reflection.INSTANCE;
                }
                if (type == Void.class) {
                    return Reflection.INSTANCE$4;
                }
                if (Utils.checkForKotlinUnit && type == Unit.class) {
                    return Reflection.INSTANCE$3;
                }
                return null;
            default:
                if (Utils.getRawType(type) != Optional.class) {
                    return null;
                }
                return new OptionalConverterFactory$OptionalConverter(retrofit.responseBodyConverter(Utils.getParameterUpperBound(0, (ParameterizedType) type), annotationArr));
        }
    }
}
