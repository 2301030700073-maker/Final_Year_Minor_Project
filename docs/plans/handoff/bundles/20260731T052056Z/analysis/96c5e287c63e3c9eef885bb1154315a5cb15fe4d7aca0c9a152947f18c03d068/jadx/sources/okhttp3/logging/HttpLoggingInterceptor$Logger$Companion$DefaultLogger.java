package okhttp3.logging;

import okhttp3.internal.platform.Platform;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HttpLoggingInterceptor$Logger$Companion$DefaultLogger {
    public static final HttpLoggingInterceptor$Logger$Companion$DefaultLogger DEFAULT = new HttpLoggingInterceptor$Logger$Companion$DefaultLogger();

    public final void log(String str) {
        Platform platform = Platform.platform;
        Platform.platform.log(str, 4, null);
    }
}
