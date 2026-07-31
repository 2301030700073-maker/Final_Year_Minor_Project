package org.schabi.newpipe.player.datasource;

import android.net.Uri;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.android.exoplayer2.upstream.BaseDataSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.HttpUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.Maps;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeHttpDataSource extends BaseDataSource implements HttpDataSource {
    public static final byte[] POST_BODY = {120, 0};
    public long bytesRead;
    public long bytesToRead;
    public final int connectTimeoutMillis;
    public HttpURLConnection connection;
    public DataSpec dataSpec;
    public final HttpDataSource.RequestProperties defaultRequestProperties;
    public InputStream inputStream;
    public boolean opened;
    public final boolean rangeParameterEnabled;
    public final int readTimeoutMillis;
    public long requestNumber;
    public final HttpDataSource.RequestProperties requestProperties;
    public int responseCode;
    public final boolean rnParameterEnabled;

    public YoutubeHttpDataSource(int i, int i2, boolean z, boolean z2, HttpDataSource.RequestProperties requestProperties) {
        super(true);
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.rangeParameterEnabled = z;
        this.rnParameterEnabled = z2;
        this.defaultRequestProperties = requestProperties;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.requestNumber = 0L;
    }

    public static void maybeTerminateInputStream(HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = Util.SDK_INT) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public final void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public final void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void close() {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j = this.bytesToRead;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.bytesRead;
                }
                maybeTerminateInputStream(this.connection, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2000, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    public final void closeConnectionQuietly() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("YoutubeHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.connection = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public final int getResponseCode() {
        int i;
        if (this.connection == null || (i = this.responseCode) <= 0) {
            return -1;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.upstream.BaseDataSource, com.google.android.exoplayer2.upstream.DataSource
    public final Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? RegularImmutableMap.EMPTY : new NullFilteringHeadersMap(httpURLConnection.getHeaderFields());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final HttpURLConnection makeConnection(URL url, long j, long j2, boolean z, boolean z2, Map map) {
        String buildRangeRequestHeader;
        String sb;
        String url2 = url.toString();
        boolean startsWith = url.getPath().startsWith("/videoplayback");
        if (startsWith && this.rnParameterEnabled && !url2.contains("&rn=")) {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(url2, "&rn=");
            m.append(this.requestNumber);
            url2 = m.toString();
            this.requestNumber++;
        }
        boolean z3 = this.rangeParameterEnabled;
        if (z3 && startsWith) {
            if (j == 0 && j2 == -1) {
                sb = null;
            } else {
                StringBuilder m2 = Modifier.CC.m(j, "&range=", "-");
                if (j2 != -1) {
                    m2.append((j + j2) - 1);
                }
                sb = m2.toString();
            }
            if (sb != null) {
                url2 = Owner.CC.m$1(url2, sb);
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url2).openConnection();
        httpURLConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnection.setReadTimeout(this.readTimeoutMillis);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (!z3 && (buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2)) != null) {
            httpURLConnection.setRequestProperty("Range", buildRangeRequestHeader);
        }
        if (Parser.isMatch(url2, YoutubeParsingHelper.C_WEB_PATTERN) || Parser.isMatch(url2, YoutubeParsingHelper.C_WEB_EMBEDDED_PLAYER_PATTERN)) {
            httpURLConnection.setRequestProperty("Origin", "https://www.youtube.com");
            httpURLConnection.setRequestProperty("Referer", "https://www.youtube.com");
            httpURLConnection.setRequestProperty("Sec-Fetch-Dest", "empty");
            httpURLConnection.setRequestProperty("Sec-Fetch-Mode", "cors");
            httpURLConnection.setRequestProperty("Sec-Fetch-Site", "cross-site");
        }
        httpURLConnection.setRequestProperty("TE", "trailers");
        if (Parser.isMatch(url2, YoutubeParsingHelper.C_ANDROID_PATTERN)) {
            httpURLConnection.setRequestProperty("User-Agent", YoutubeParsingHelper.getAndroidUserAgent(null));
        } else if (Parser.isMatch(url2, YoutubeParsingHelper.C_IOS_PATTERN)) {
            httpURLConnection.setRequestProperty("User-Agent", YoutubeParsingHelper.getIosUserAgent());
        } else if (Parser.isMatch(url2, YoutubeParsingHelper.C_VISIONOS_PATTERN)) {
            httpURLConnection.setRequestProperty("User-Agent", YoutubeParsingHelper.getVisionOsUserAgent(null));
        } else {
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0");
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setFixedLengthStreamingMode(2);
        httpURLConnection.connect();
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(POST_BODY);
        outputStream.close();
        return httpURLConnection;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final long open(DataSpec dataSpec) {
        byte[] bArr;
        this.dataSpec = dataSpec;
        long j = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            DataSpec dataSpec2 = this.dataSpec;
            HttpURLConnection makeConnection = makeConnection(new URL(dataSpec2.uri.toString()), dataSpec2.position, dataSpec2.length, dataSpec2.isFlagSet(1), true, dataSpec2.httpRequestHeaders);
            this.connection = makeConnection;
            this.responseCode = makeConnection.getResponseCode();
            String responseMessage = makeConnection.getResponseMessage();
            int i = this.responseCode;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = makeConnection.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(makeConnection.getHeaderField("Content-Range"))) {
                        this.opened = true;
                        transferStarted(dataSpec);
                        long j2 = dataSpec.length;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = makeConnection.getErrorStream();
                try {
                    bArr = errorStream != null ? Util.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArr = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr2 = bArr;
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new DataSourceException(2008) : null, headerFields, this.dataSpec, bArr2);
            }
            makeConnection.getContentType();
            if (!this.rangeParameterEnabled && this.responseCode == 200) {
                long j3 = dataSpec.position;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(makeConnection.getHeaderField("Content-Encoding"));
            if (equalsIgnoreCase) {
                this.bytesToRead = dataSpec.length;
            } else {
                long j4 = dataSpec.length;
                if (j4 != -1) {
                    this.bytesToRead = j4;
                } else {
                    long contentLength = HttpUtil.getContentLength(makeConnection.getHeaderField("Content-Length"), makeConnection.getHeaderField("Content-Range"));
                    this.bytesToRead = contentLength != -1 ? contentLength - j : -1L;
                }
            }
            try {
                this.inputStream = makeConnection.getInputStream();
                if (equalsIgnoreCase) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                transferStarted(dataSpec);
                try {
                    skipFully(j, this.dataSpec);
                    return this.bytesToRead;
                } catch (IOException e) {
                    closeConnectionQuietly();
                    if (e instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e, this.dataSpec, 2000, 1);
                }
            } catch (IOException e2) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException(e2, this.dataSpec, 2000, 1);
            }
        } catch (IOException e3) {
            closeConnectionQuietly();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e3, this.dataSpec, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.bytesToRead;
            if (j != -1) {
                long j2 = j - this.bytesRead;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
            if (read != -1) {
                this.bytesRead += read;
                bytesTransferred(read);
                return read;
            }
            return -1;
        } catch (IOException e) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public final void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    public final void skipFully(long j, DataSpec dataSpec) {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, 0, (int) Math.min(j, 4096L));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (read == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j -= read;
            bytesTransferred(read);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NullFilteringHeadersMap extends ForwardingMap {
        public final Map headers;

        public NullFilteringHeadersMap(Map map) {
            this.headers = map;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // java.util.Map
        public final boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // com.google.common.collect.ForwardingObject
        public final Object delegate() {
            return this.headers;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set entrySet() {
            return Maps.filter(super.entrySet(), new YoutubeHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0(1));
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Object get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // java.util.Map
        public final int hashCode() {
            return super.standardHashCode();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean isEmpty() {
            return super.isEmpty() || (super.size() == 1 && super.containsKey(null));
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set keySet() {
            return Maps.filter(super.keySet(), new YoutubeHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0(0));
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Map delegate() {
            return this.headers;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class Factory implements HttpDataSource.Factory {
        public boolean rangeParameterEnabled;
        public boolean rnParameterEnabled;
        public final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        public final int connectTimeoutMs = 8000;
        public final int readTimeoutMs = 8000;

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public final DataSource createDataSource() {
            return new YoutubeHttpDataSource(this.connectTimeoutMs, this.readTimeoutMs, this.rangeParameterEnabled, this.rnParameterEnabled, this.defaultRequestProperties);
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public final HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public final HttpDataSource createDataSource() {
            return new YoutubeHttpDataSource(this.connectTimeoutMs, this.readTimeoutMs, this.rangeParameterEnabled, this.rnParameterEnabled, this.defaultRequestProperties);
        }
    }
}
