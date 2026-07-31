package retrofit2;

import j$.util.Optional;
import okhttp3.ResponseBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OptionalConverterFactory$OptionalConverter implements Converter {
    public final Object delegate;

    @Override // retrofit2.Converter
    public Object convert(Object obj) {
        return Optional.ofNullable(((Converter) this.delegate).convert((ResponseBody) obj));
    }
}
