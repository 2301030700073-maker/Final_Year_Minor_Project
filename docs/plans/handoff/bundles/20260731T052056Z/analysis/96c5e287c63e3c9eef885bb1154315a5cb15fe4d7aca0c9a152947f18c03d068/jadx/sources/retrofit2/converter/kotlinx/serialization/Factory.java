package retrofit2.converter.kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.ResultKt;
import kotlinx.serialization.json.Json;
import okhttp3.MediaType;
import org.wikipedia.page.shareafact.ShareHandler;
import retrofit2.Converter;
import retrofit2.OkHttpCall;
import retrofit2.OptionalConverterFactory$OptionalConverter;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Factory extends Converter.Factory {
    public final MediaType contentType;
    public final OptionalConverterFactory$OptionalConverter serializer;

    public Factory(MediaType mediaType, OptionalConverterFactory$OptionalConverter optionalConverterFactory$OptionalConverter) {
        this.contentType = mediaType;
        this.serializer = optionalConverterFactory$OptionalConverter;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        type.getClass();
        annotationArr2.getClass();
        OptionalConverterFactory$OptionalConverter optionalConverterFactory$OptionalConverter = this.serializer;
        return new ShareHandler(this.contentType, ResultKt.serializer(((Json) optionalConverterFactory$OptionalConverter.delegate).serializersModule, type), optionalConverterFactory$OptionalConverter, 4);
    }

    @Override // retrofit2.Converter.Factory
    public final Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        annotationArr.getClass();
        OptionalConverterFactory$OptionalConverter optionalConverterFactory$OptionalConverter = this.serializer;
        return new OkHttpCall.AnonymousClass1(28, ResultKt.serializer(((Json) optionalConverterFactory$OptionalConverter.delegate).serializersModule, type), optionalConverterFactory$OptionalConverter);
    }
}
