package com.facebook.internal;

import android.net.Uri;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.EnumC0658Zq;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public final class ImageResponseCache {
    public static final ImageResponseCache INSTANCE = new ImageResponseCache();
    private static final String TAG = "ImageResponseCache";
    private static FileLruCache imageCache;

    public static final class BufferedHttpInputStream extends BufferedInputStream {
        private HttpURLConnection connection;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            C0173Do.m401try(httpURLConnection, "connection");
            this.connection = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            Utility utility = Utility.INSTANCE;
            Utility.disconnectQuietly(this.connection);
        }

        public final HttpURLConnection getConnection() {
            return this.connection;
        }

        public final void setConnection(HttpURLConnection httpURLConnection) {
            C0173Do.m401try(httpURLConnection, "<set-?>");
            this.connection = httpURLConnection;
        }
    }

    private ImageResponseCache() {
    }

    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            Logger.Companion companion = Logger.Companion;
            EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
            String str = TAG;
            C0173Do.m399new(str, "TAG");
            companion.log(enumC0658Zq, 5, str, C0173Do.m397goto(e.getMessage(), "clearCache failed "));
        }
    }

    public static final synchronized FileLruCache getCache() {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            if (imageCache == null) {
                String str = TAG;
                C0173Do.m399new(str, "TAG");
                imageCache = new FileLruCache(str, new FileLruCache.Limits());
            }
            fileLruCache = imageCache;
            if (fileLruCache == null) {
                C0173Do.m400this("imageCache");
                throw null;
            }
        }
        return fileLruCache;
    }

    public static final InputStream getCachedImageStream(Uri uri) {
        if (uri == null || !INSTANCE.isCDNURL(uri)) {
            return null;
        }
        try {
            FileLruCache cache = getCache();
            String uri2 = uri.toString();
            C0173Do.m399new(uri2, "uri.toString()");
            return FileLruCache.get$default(cache, uri2, null, 2, null);
        } catch (IOException e) {
            Logger.Companion companion = Logger.Companion;
            EnumC0658Zq enumC0658Zq = EnumC0658Zq.CACHE;
            String str = TAG;
            C0173Do.m399new(str, "TAG");
            companion.log(enumC0658Zq, 5, str, e.toString());
            return null;
        }
    }

    public static final InputStream interceptAndCacheImageStream(HttpURLConnection httpURLConnection) {
        C0173Do.m401try(httpURLConnection, "connection");
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        Uri parse = Uri.parse(httpURLConnection.getURL().toString());
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            if (!INSTANCE.isCDNURL(parse)) {
                return inputStream;
            }
            FileLruCache cache = getCache();
            String uri = parse.toString();
            C0173Do.m399new(uri, "uri.toString()");
            return cache.interceptAndPut(uri, new BufferedHttpInputStream(inputStream, httpURLConnection));
        } catch (IOException unused) {
            return inputStream;
        }
    }

    private final boolean isCDNURL(Uri uri) {
        String host;
        if (uri == null || (host = uri.getHost()) == null) {
            return false;
        }
        if (C0173Do.m394do(host, "fbcdn.net") || host.endsWith(".fbcdn.net")) {
            return true;
        }
        return BF.j(host, "fbcdn") && host.endsWith(".akamaihd.net");
    }

    public final String getTAG() {
        return TAG;
    }
}
