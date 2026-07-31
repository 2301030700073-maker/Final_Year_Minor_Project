package okhttp3;

import java.io.IOException;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Callback {
    void onFailure(RealCall realCall, IOException iOException);

    void onResponse(RealCall realCall, Response response);
}
