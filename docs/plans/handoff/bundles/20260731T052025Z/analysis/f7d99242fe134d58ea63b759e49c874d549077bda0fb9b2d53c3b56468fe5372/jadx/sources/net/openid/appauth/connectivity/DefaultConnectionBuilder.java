package net.openid.appauth.connectivity;

import android.net.Uri;
import java.net.HttpURLConnection;
import java.net.URL;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultConnectionBuilder {
    public static final DefaultConnectionBuilder INSTANCE = new DefaultConnectionBuilder();

    public static HttpURLConnection openConnection(Uri uri) {
        Okio.checkNotNull(uri, "url must not be null");
        Okio.checkArgument("only https connections are permitted", "https".equals(uri.getScheme()));
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setInstanceFollowRedirects(false);
        return httpURLConnection;
    }
}
