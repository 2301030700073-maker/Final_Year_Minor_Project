package okhttp3;

import java.util.List;
import okhttp3.CipherSuite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface CookieJar {
    public static final CipherSuite.Companion NO_COOKIES = new CipherSuite.Companion();

    List loadForRequest(HttpUrl httpUrl);

    void saveFromResponse(HttpUrl httpUrl, List list);
}
