package retrofit2;

import java.util.ArrayList;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParameterHandler$RawPart extends Utils {
    public static final ParameterHandler$RawPart INSTANCE = new ParameterHandler$RawPart();

    @Override // retrofit2.Utils
    public final void apply(RequestBuilder requestBuilder, Object obj) {
        MultipartBody.Part part = (MultipartBody.Part) obj;
        if (part != null) {
            ((ArrayList) requestBuilder.multipartBuilder.parts).add(part);
        }
    }
}
