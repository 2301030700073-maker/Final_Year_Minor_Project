package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;
    private static final int DEFAULT_POOL_SIZE = 4096;
    private static final int SLOW_REQUEST_THRESHOLD_MS = 3000;
    private final BaseHttpStack mBaseHttpStack;

    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    @Deprecated
    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack, ByteArrayPool pool) {
        this.mHttpStack = httpStack;
        this.mBaseHttpStack = new AdaptedHttpStack(httpStack);
        this.mPool = pool;
    }

    public BasicNetwork(BaseHttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack httpStack, ByteArrayPool pool) {
        this.mBaseHttpStack = httpStack;
        this.mHttpStack = httpStack;
        this.mPool = pool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0183 A[SYNTHETIC] */
    @Override // com.android.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.volley.NetworkResponse performRequest(com.android.volley.Request<?> r30) throws com.android.volley.VolleyError {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.BasicNetwork.performRequest(com.android.volley.Request):com.android.volley.NetworkResponse");
    }

    private void logSlowRequests(long requestLifetime, Request<?> request, byte[] responseContents, int statusCode) {
        if (DEBUG || requestLifetime > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(requestLifetime);
            objArr[2] = responseContents != null ? Integer.valueOf(responseContents.length) : "null";
            objArr[3] = Integer.valueOf(statusCode);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void attemptRetryOnException(String logPrefix, Request<?> request, VolleyError exception) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int oldTimeout = request.getTimeoutMs();
        try {
            retryPolicy.retry(exception);
            request.addMarker(String.format("%s-retry [timeout=%s]", logPrefix, Integer.valueOf(oldTimeout)));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", logPrefix, Integer.valueOf(oldTimeout)));
            throw e;
        }
    }

    private Map<String, String> getCacheHeaders(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        Map<String, String> headers = new HashMap<>();
        if (entry.etag != null) {
            headers.put("If-None-Match", entry.etag);
        }
        if (entry.lastModified > 0) {
            headers.put("If-Modified-Since", HttpHeaderParser.formatEpochAsRfc1123(entry.lastModified));
        }
        return headers;
    }

    protected void logError(String what, String url, long start) {
        long now = SystemClock.elapsedRealtime();
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", what, Long.valueOf(now - start), url);
    }

    private byte[] inputStreamToBytes(InputStream in, int contentLength) throws IOException, ServerError {
        PoolingByteArrayOutputStream bytes = new PoolingByteArrayOutputStream(this.mPool, contentLength);
        try {
            if (in == null) {
                throw new ServerError();
            }
            byte[] buffer = this.mPool.getBuf(1024);
            while (true) {
                int count = in.read(buffer);
                if (count == -1) {
                    break;
                }
                bytes.write(buffer, 0, count);
            }
            byte[] byteArray = bytes.toByteArray();
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(buffer);
            bytes.close();
            return byteArray;
        } catch (Throwable th) {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(null);
            bytes.close();
            throw th;
        }
    }

    @Deprecated
    protected static Map<String, String> convertHeaders(Header[] headers) {
        Map<String, String> result = new TreeMap<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headers.length; i++) {
            result.put(headers[i].getName(), headers[i].getValue());
        }
        return result;
    }

    private static List<Header> combineHeaders(List<Header> responseHeaders, Cache.Entry entry) {
        Set<String> headerNamesFromNetworkResponse = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
        if (!responseHeaders.isEmpty()) {
            Iterator<Header> it = responseHeaders.iterator();
            while (it.hasNext()) {
                headerNamesFromNetworkResponse.add(it.next().getName());
            }
        }
        List<Header> combinedHeaders = new ArrayList<>(responseHeaders);
        if (entry.allResponseHeaders != null) {
            if (!entry.allResponseHeaders.isEmpty()) {
                for (Header header : entry.allResponseHeaders) {
                    if (!headerNamesFromNetworkResponse.contains(header.getName())) {
                        combinedHeaders.add(header);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> header2 : entry.responseHeaders.entrySet()) {
                if (!headerNamesFromNetworkResponse.contains(header2.getKey())) {
                    combinedHeaders.add(new Header(header2.getKey(), header2.getValue()));
                }
            }
        }
        return combinedHeaders;
    }
}
