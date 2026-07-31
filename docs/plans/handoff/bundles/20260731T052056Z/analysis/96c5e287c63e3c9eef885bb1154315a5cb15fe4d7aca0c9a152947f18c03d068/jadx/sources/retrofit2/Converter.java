package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Converter {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Factory {
        public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }

        public abstract Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit);
    }

    Object convert(Object obj);
}
