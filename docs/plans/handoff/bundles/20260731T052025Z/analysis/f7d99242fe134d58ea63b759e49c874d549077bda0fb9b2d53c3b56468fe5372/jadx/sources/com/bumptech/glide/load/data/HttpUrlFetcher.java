package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import kotlin.io.FileSystemException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HttpUrlFetcher implements DataFetcher {
    public final GlideUrl glideUrl;
    public volatile boolean isCancelled;
    public InputStream stream;
    public final int timeout;
    public HttpURLConnection urlConnection;

    public HttpUrlFetcher(GlideUrl glideUrl, int i) {
        this.glideUrl = glideUrl;
        this.timeout = i;
    }

    public static int getHttpStatusCodeOrInvalid(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
        this.isCancelled = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cleanup() {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.urlConnection = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final int getDataSource() {
        return 2;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void loadData(Priority priority, DataFetcher.DataCallback dataCallback) {
        GlideUrl glideUrl = this.glideUrl;
        int i = LogTime.$r8$clinit;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                dataCallback.onDataReady(loadDataWithRedirects(glideUrl.toURL(), 0, null, glideUrl.headers.getHeaders()));
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.getElapsedMillis(elapsedRealtimeNanos));
                }
            } catch (IOException e) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e);
                }
                dataCallback.onLoadFailed(e);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.getElapsedMillis(elapsedRealtimeNanos));
                }
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.getElapsedMillis(elapsedRealtimeNanos));
            }
            throw th;
        }
    }

    public final InputStream loadDataWithRedirects(URL url, int i, URL url2, Map map) {
        if (i >= 5) {
            throw new FileSystemException("Too many (> 5) redirects!", -1, (IOException) null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new FileSystemException("In re-direct loop", -1, (IOException) null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i2 = this.timeout;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i2);
            httpURLConnection.setReadTimeout(i2);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.urlConnection = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.stream = this.urlConnection.getInputStream();
                if (this.isCancelled) {
                    return null;
                }
                int httpStatusCodeOrInvalid = getHttpStatusCodeOrInvalid(this.urlConnection);
                int i3 = httpStatusCodeOrInvalid / 100;
                if (i3 == 2) {
                    HttpURLConnection httpURLConnection2 = this.urlConnection;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.stream = new ContentLengthInputStream(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.stream = httpURLConnection2.getInputStream();
                        }
                        return this.stream;
                    } catch (IOException e) {
                        throw new FileSystemException("Failed to obtain InputStream", getHttpStatusCodeOrInvalid(httpURLConnection2), e);
                    }
                }
                if (i3 != 3) {
                    if (httpStatusCodeOrInvalid == -1) {
                        throw new FileSystemException("Http request failed", httpStatusCodeOrInvalid, (IOException) null);
                    }
                    try {
                        throw new FileSystemException(this.urlConnection.getResponseMessage(), httpStatusCodeOrInvalid, (IOException) null);
                    } catch (IOException e2) {
                        throw new FileSystemException("Failed to get a response message", httpStatusCodeOrInvalid, e2);
                    }
                }
                String headerField = this.urlConnection.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new FileSystemException("Received empty or null redirect url", httpStatusCodeOrInvalid, (IOException) null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    cleanup();
                    return loadDataWithRedirects(url3, i + 1, url, map);
                } catch (MalformedURLException e3) {
                    throw new FileSystemException(CameraDevices$CC.m("Bad redirect url: ", headerField), httpStatusCodeOrInvalid, e3);
                }
            } catch (IOException e4) {
                throw new FileSystemException("Failed to connect or obtain data", getHttpStatusCodeOrInvalid(this.urlConnection), e4);
            }
        } catch (IOException e5) {
            throw new FileSystemException("URL.openConnection threw", 0, e5);
        }
    }
}
