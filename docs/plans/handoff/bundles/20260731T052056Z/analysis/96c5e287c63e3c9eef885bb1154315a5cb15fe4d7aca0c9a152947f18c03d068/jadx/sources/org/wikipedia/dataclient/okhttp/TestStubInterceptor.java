package org.wikipedia.dataclient.okhttp;

import androidx.compose.animation.core.Animation;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.ExceptionsKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;
import okio.OutputStreamSink;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Timeout;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TestStubInterceptor implements Interceptor {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TestStubInterceptor(int i) {
        this.$r8$classId = i;
    }

    public static Response getCacheWritingResponse(Request request, Response response, String str, String str2) {
        String hex;
        Throwable th;
        final String header = response.header("Content-Type", "*/*");
        header.getClass();
        String header2 = response.header("Content-Length", "-1");
        header2.getClass();
        final long parseLong = Long.parseLong(header2);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String absolutePath = Jsoup.getInstance().getFilesDir().getAbsolutePath();
        String str3 = File.separator;
        String str4 = absolutePath + str3 + "offline_files";
        new File(str4).mkdirs();
        HttpUrl httpUrl = request.url;
        String str5 = httpUrl.url;
        if (StringsKt__StringsJVMKt.startsWith(header, "image", false)) {
            StringUtil stringUtil = StringUtil.INSTANCE;
            ByteString byteString = ByteString.EMPTY;
            hex = ByteString.Companion.encodeUtf8(str5).digest$okio("MD5").hex();
        } else {
            StringUtil stringUtil2 = StringUtil.INSTANCE;
            ByteString byteString2 = ByteString.EMPTY;
            hex = ByteString.Companion.encodeUtf8(str + ":" + str5).digest$okio("MD5").hex();
        }
        String m = Animation.CC.m(str4, str3, hex);
        File file = new File(m.concat(".0"));
        File file2 = new File(m.concat(".1"));
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
            try {
                outputStreamWriter.write(httpUrl + "\n");
                outputStreamWriter.write(request.method + "\n");
                outputStreamWriter.write(response.protocol + "\n");
                outputStreamWriter.write(response.code + "\n");
                outputStreamWriter.write(response.message + "\n");
                Headers headers = response.headers;
                Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                comparator.getClass();
                TreeSet treeSet = new TreeSet(comparator);
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    treeSet.add(Jsoup.commonName(headers, i));
                }
                Set unmodifiableSet = DesugarCollections.unmodifiableSet(treeSet);
                unmodifiableSet.getClass();
                Iterator it = unmodifiableSet.iterator();
                while (true) {
                    th = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    String str6 = (String) it.next();
                    outputStreamWriter.write(str6 + ": " + response.header(str6, null) + "\n");
                }
                outputStreamWriter.flush();
                try {
                    outputStreamWriter.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
                th = th3;
            }
            if (th != null) {
                throw th;
            }
            try {
                RealBufferedSink realBufferedSink = new RealBufferedSink(new OutputStreamSink(new FileOutputStream(file2, false), new Timeout()));
                ResponseBody responseBody = response.body;
                if (responseBody == null) {
                    return response;
                }
                final OfflineCacheInterceptor$CacheWritingSource offlineCacheInterceptor$CacheWritingSource = new OfflineCacheInterceptor$CacheWritingSource(responseBody.source(), realBufferedSink, new OfflineObject(0, 0, httpUrl.url, str, m, ""), str2);
                Response.Builder newBuilder = response.newBuilder();
                newBuilder.body = new ResponseBody(offlineCacheInterceptor$CacheWritingSource, header, parseLong) { // from class: org.wikipedia.dataclient.okhttp.OfflineCacheInterceptor$CacheWritingResponseBody
                    public final long contentLength;
                    public final String contentType;
                    public final OfflineCacheInterceptor$CacheWritingSource source;

                    {
                        this.source = offlineCacheInterceptor$CacheWritingSource;
                        this.contentType = header;
                        this.contentLength = parseLong;
                    }

                    @Override // okhttp3.ResponseBody
                    public final long contentLength() {
                        return this.contentLength;
                    }

                    @Override // okhttp3.ResponseBody
                    public final MediaType contentType() {
                        String str7 = this.contentType;
                        Regex regex = MediaType.TYPE_SUBTYPE;
                        try {
                            return ReadingListFragment.MultiSelectCallback.get(str7);
                        } catch (IllegalArgumentException unused) {
                            return null;
                        }
                    }

                    @Override // okhttp3.ResponseBody
                    public final BufferedSource source() {
                        return new RealBufferedSource(this.source);
                    }
                };
                return newBuilder.build();
            } catch (IOException e) {
                L.e(e);
                return response;
            }
        } catch (IOException e2) {
            L.e(e2);
            return response;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:86|87|88|89|90|(7:92|(1:94)|95|(2:96|(3:100|(3:102|103|104)(1:106)|105))|107|108|(3:110|111|112)(1:113))|121|95|(2:96|(2:118|119)(4:98|100|(0)(0)|105))|107|108|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x024e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x024f, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x023a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0283 A[Catch: IOException -> 0x0284, TRY_LEAVE, TryCatch #2 {IOException -> 0x0284, blocks: (B:88:0x0201, B:113:0x0283, B:128:0x027d, B:90:0x0210, B:92:0x022c, B:95:0x0238, B:96:0x023a, B:98:0x0241, B:100:0x0251, B:125:0x0278), top: B:87:0x0201, inners: #1, #5 }] */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.internal.http.RealInterceptorChain r13) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.okhttp.TestStubInterceptor.intercept(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }
}
