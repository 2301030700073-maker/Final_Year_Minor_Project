package retrofit2;

import okhttp3.Request;
import okio.Okio__OkioKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParameterHandler$Tag extends Utils {
    public final Class cls;

    public ParameterHandler$Tag(Class cls) {
        this.cls = cls;
    }

    @Override // retrofit2.Utils
    public final void apply(RequestBuilder requestBuilder, Object obj) {
        Request.Builder builder = requestBuilder.requestBuilder;
        Class cls = this.cls;
        cls.getClass();
        builder.tags = ((Okio__OkioKt) builder.tags).plus(kotlin.jvm.internal.Reflection.factory.getOrCreateKotlinClass(cls), obj);
    }
}
