package retrofit2;

import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.UUID;
import java.util.regex.Pattern;
import kotlin.text.Regex;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RequestBuilder {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final Pattern PATH_TRAVERSAL = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    public final HttpUrl baseUrl;
    public RequestBody body;
    public MediaType contentType;
    public final FormBody.Builder formBuilder;
    public final boolean hasBody;
    public final Headers.Builder headersBuilder;
    public final String method;
    public final MultipartBody.Builder multipartBuilder;
    public String relativeUrl;
    public final Request.Builder requestBuilder = new Request.Builder(0);
    public HttpUrl.Builder urlBuilder;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ContentTypeOverridingRequestBody extends RequestBody {
        public final MediaType contentType;
        public final RequestBody delegate;

        public ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.delegate = requestBody;
            this.contentType = mediaType;
        }

        @Override // okhttp3.RequestBody
        public final long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(BufferedSink bufferedSink) {
            this.delegate.writeTo(bufferedSink);
        }
    }

    public RequestBuilder(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.method = str;
        this.baseUrl = httpUrl;
        this.relativeUrl = str2;
        this.contentType = mediaType;
        this.hasBody = z;
        if (headers != null) {
            this.headersBuilder = Jsoup.commonNewBuilder(headers);
        } else {
            this.headersBuilder = new Headers.Builder(0, (byte) 0);
        }
        if (z2) {
            this.formBuilder = new FormBody.Builder(0);
            return;
        }
        if (z3) {
            String uuid = UUID.randomUUID().toString();
            uuid.getClass();
            MultipartBody.Builder builder = new MultipartBody.Builder();
            ByteString byteString = ByteString.EMPTY;
            builder.boundary = ByteString.Companion.encodeUtf8(uuid);
            builder.type = MultipartBody.MIXED;
            builder.parts = new ArrayList();
            this.multipartBuilder = builder;
            MediaType mediaType2 = MultipartBody.FORM;
            mediaType2.getClass();
            if (mediaType2.type.equals("multipart")) {
                builder.type = mediaType2;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("multipart != ", mediaType2);
                throw null;
            }
        }
    }

    public final void addFormField(String str, String str2, boolean z) {
        FormBody.Builder builder = this.formBuilder;
        if (z) {
            builder.getClass();
            str.getClass();
            ((ArrayList) builder.names).add(_UrlKt.canonicalizeWithCharset$default(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
            ((ArrayList) builder.values).add(_UrlKt.canonicalizeWithCharset$default(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
            return;
        }
        builder.getClass();
        str.getClass();
        ((ArrayList) builder.names).add(_UrlKt.canonicalizeWithCharset$default(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
        ((ArrayList) builder.values).add(_UrlKt.canonicalizeWithCharset$default(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
    }

    public final void addHeader(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                Regex regex = MediaType.TYPE_SUBTYPE;
                this.contentType = ReadingListFragment.MultiSelectCallback.get(str2);
                return;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(Modifier.CC.m("Malformed content type: ", str2), e);
            }
        }
        Headers.Builder builder = this.headersBuilder;
        if (!z) {
            builder.add(str, str2);
            return;
        }
        builder.getClass();
        str.getClass();
        str2.getClass();
        Jsoup.headersCheckName(str);
        Jsoup.commonAddLenient(builder, str, str2);
    }

    public final void addPart(Headers headers, RequestBody requestBody) {
        MultipartBody.Builder builder = this.multipartBuilder;
        builder.getClass();
        requestBody.getClass();
        if (headers.get("Content-Type") != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unexpected header: Content-Type");
        } else if (headers.get("Content-Length") != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unexpected header: Content-Length");
        } else {
            ((ArrayList) builder.parts).add(new MultipartBody.Part(headers, requestBody));
        }
    }

    public final void addQueryParam(String str, String str2, boolean z) {
        HttpUrl.Builder builder;
        HttpUrl httpUrl = this.baseUrl;
        String str3 = this.relativeUrl;
        if (str3 != null) {
            try {
                builder = new HttpUrl.Builder(0);
                builder.parse$okhttp(httpUrl, str3);
            } catch (IllegalArgumentException unused) {
                builder = null;
            }
            this.urlBuilder = builder;
            if (builder == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(httpUrl);
                Utils$$ExternalSyntheticBUOutline0.m(sb, ", Relative: ", this.relativeUrl);
                return;
            }
            this.relativeUrl = null;
        }
        HttpUrl.Builder builder2 = this.urlBuilder;
        if (z) {
            builder2.getClass();
            str.getClass();
            ArrayList arrayList = (ArrayList) builder2.encodedQueryNamesAndValues;
            if (arrayList == null) {
                arrayList = new ArrayList();
                builder2.encodedQueryNamesAndValues = arrayList;
            }
            arrayList.add(_UrlKt.canonicalize$default(0, 0, 83, str, " \"'<>#&="));
            ArrayList arrayList2 = (ArrayList) builder2.encodedQueryNamesAndValues;
            arrayList2.getClass();
            arrayList2.add(str2 != null ? _UrlKt.canonicalize$default(0, 0, 83, str2, " \"'<>#&=") : null);
            return;
        }
        builder2.getClass();
        str.getClass();
        ArrayList arrayList3 = (ArrayList) builder2.encodedQueryNamesAndValues;
        if (arrayList3 == null) {
            arrayList3 = new ArrayList();
            builder2.encodedQueryNamesAndValues = arrayList3;
        }
        arrayList3.add(_UrlKt.canonicalize$default(0, 0, 91, str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"));
        ArrayList arrayList4 = (ArrayList) builder2.encodedQueryNamesAndValues;
        arrayList4.getClass();
        arrayList4.add(str2 != null ? _UrlKt.canonicalize$default(0, 0, 91, str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~") : null);
    }
}
