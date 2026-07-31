package okhttp3;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.url._UrlKt;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HttpUrl {
    public final String fragment;
    public final String host;
    public final String password;
    public final int port;
    public final List queryNamesAndValues;
    public final String scheme;
    public final String url;
    public final String username;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public String encodedFragment;
        public ArrayList encodedQueryNamesAndValues;
        public String host;
        public String scheme;
        public String encodedUsername = "";
        public String encodedPassword = "";
        public int port = -1;
        public final ArrayList encodedPathSegments = Jsoup.mutableListOf("");

        public static ArrayList toQueryNamesAndValues(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int indexOf$default = StringsKt.indexOf$default('&', i, 4, (CharSequence) str);
                if (indexOf$default == -1) {
                    indexOf$default = str.length();
                }
                int indexOf$default2 = StringsKt.indexOf$default('=', i, 4, (CharSequence) str);
                if (indexOf$default2 == -1 || indexOf$default2 > indexOf$default) {
                    arrayList.add(str.substring(i, indexOf$default));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i, indexOf$default2));
                    arrayList.add(str.substring(indexOf$default2 + 1, indexOf$default));
                }
                i = indexOf$default + 1;
            }
            return arrayList;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("scheme == null");
                return null;
            }
            String percentDecode$default = _UrlKt.percentDecode$default(0, this.encodedUsername, 0, 7);
            String percentDecode$default2 = _UrlKt.percentDecode$default(0, this.encodedPassword, 0, 7);
            String str2 = this.host;
            if (str2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("host == null");
                return null;
            }
            int effectivePort = effectivePort();
            ArrayList arrayList2 = this.encodedPathSegments;
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(_UrlKt.percentDecode$default(0, (String) it.next(), 0, 7));
            }
            ArrayList<String> arrayList4 = this.encodedQueryNamesAndValues;
            if (arrayList4 != null) {
                arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList4, 10));
                for (String str3 : arrayList4) {
                    arrayList.add(str3 != null ? _UrlKt.percentDecode$default(0, str3, 0, 3) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, percentDecode$default, percentDecode$default2, str2, effectivePort, arrayList, str4 != null ? _UrlKt.percentDecode$default(0, str4, 0, 7) : null, toString());
        }

        public final int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            String str = this.scheme;
            str.getClass();
            if (str.equals("http")) {
                return 80;
            }
            return str.equals("https") ? 443 : -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:146:0x01f7, code lost:
        
            if (r7 < 65536) goto L123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:216:0x0072, code lost:
        
            if (r13 == ':') goto L37;
         */
        /* JADX WARN: Removed duplicated region for block: B:124:0x01b9  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x01dd  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x032b  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x020b  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x01d5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:173:0x013b  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0136  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void parse$okhttp(okhttp3.HttpUrl r18, java.lang.String r19) {
            /*
                Method dump skipped, instructions count: 850
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.parse$okhttp(okhttp3.HttpUrl, java.lang.String):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0089, code lost:
        
            if (r1 != r3) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, ArrayList arrayList, String str5, String str6) {
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i;
        this.queryNamesAndValues = arrayList;
        this.fragment = str5;
        this.url = str6;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return str.substring(StringsKt.indexOf$default(':', length, 4, (CharSequence) str) + 1, StringsKt.indexOf$default('@', 0, 6, (CharSequence) str));
    }

    public final String encodedPath() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default('/', length, 4, (CharSequence) str);
        return str.substring(indexOf$default, _UtilCommonKt.delimiterOffset(indexOf$default, str.length(), str, "?#"));
    }

    public final ArrayList encodedPathSegments() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default('/', length, 4, (CharSequence) str);
        int delimiterOffset = _UtilCommonKt.delimiterOffset(indexOf$default, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf$default < delimiterOffset) {
            int i = indexOf$default + 1;
            int delimiterOffset2 = _UtilCommonKt.delimiterOffset(str, '/', i, delimiterOffset);
            arrayList.add(str.substring(i, delimiterOffset2));
            indexOf$default = delimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default('?', 0, 6, (CharSequence) str) + 1;
        return str.substring(indexOf$default, _UtilCommonKt.delimiterOffset(str, '#', indexOf$default, str.length()));
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return str.substring(length, _UtilCommonKt.delimiterOffset(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public final int hashCode() {
        return this.url.hashCode();
    }

    public final String redact() {
        Builder builder;
        try {
            builder = new Builder();
            builder.parse$okhttp(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        builder.getClass();
        builder.encodedUsername = _UrlKt.canonicalize$default("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", Token.EXPORT);
        builder.encodedPassword = _UrlKt.canonicalize$default("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", Token.EXPORT);
        return builder.build().url;
    }

    public final String toString() {
        return this.url;
    }

    public final URI uri() {
        String substring;
        Builder builder = new Builder();
        String str = this.scheme;
        builder.scheme = str;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        str.getClass();
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.port;
        builder.port = i2 != i ? i2 : -1;
        ArrayList arrayList = builder.encodedPathSegments;
        arrayList.clear();
        arrayList.addAll(encodedPathSegments());
        String encodedQuery = encodedQuery();
        builder.encodedQueryNamesAndValues = encodedQuery != null ? Builder.toQueryNamesAndValues(_UrlKt.canonicalize$default(encodedQuery, 0, 0, " \"'<>#", 83)) : null;
        if (this.fragment == null) {
            substring = null;
        } else {
            String str2 = this.url;
            substring = str2.substring(StringsKt.indexOf$default('#', 0, 6, (CharSequence) str2) + 1);
        }
        builder.encodedFragment = substring;
        String str3 = builder.host;
        builder.host = str3 != null ? new Regex("[\"<>^`{|}]").replace(str3, "") : null;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(i3, _UrlKt.canonicalize$default((String) arrayList.get(i3), 0, 0, "[]", 99));
        }
        ArrayList arrayList2 = builder.encodedQueryNamesAndValues;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String str4 = (String) arrayList2.get(i4);
                arrayList2.set(i4, str4 != null ? _UrlKt.canonicalize$default(str4, 0, 0, "\\^`{|}", 67) : null);
            }
        }
        String str5 = builder.encodedFragment;
        builder.encodedFragment = str5 != null ? _UrlKt.canonicalize$default(str5, 0, 0, " \"#<>\\^`{|}", 35) : null;
        String builder2 = builder.toString();
        try {
            return new URI(builder2);
        } catch (URISyntaxException e) {
            try {
                URI create = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(builder2, ""));
                create.getClass();
                return create;
            } catch (Exception unused) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
                return null;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion implements TrailersSource {
        public static final Companion NONE = new Companion();
        public static final Companion NO_COOKIES = new Companion();
        public static final Companion SYSTEM = new Companion();

        public static final CipherSuite access$init(Companion companion, String str) {
            CipherSuite cipherSuite = new CipherSuite(str);
            CipherSuite.INSTANCES.put(str, cipherSuite);
            return cipherSuite;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static TlsVersion forJavaName(String str) {
            str.getClass();
            int hashCode = str.hashCode();
            if (hashCode != 79201641) {
                if (hashCode != 79923350) {
                    switch (hashCode) {
                        case -503070503:
                            if (str.equals("TLSv1.1")) {
                                return TlsVersion.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (str.equals("TLSv1.2")) {
                                return TlsVersion.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (str.equals("TLSv1.3")) {
                                return TlsVersion.TLS_1_3;
                            }
                            break;
                    }
                } else if (str.equals("TLSv1")) {
                    return TlsVersion.TLS_1_0;
                }
            } else if (str.equals("SSLv3")) {
                return TlsVersion.SSL_3_0;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unexpected TLS version: ".concat(str));
            return null;
        }

        public static Protocol get(String str) {
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            String str8;
            Protocol protocol = Protocol.HTTP_1_0;
            str2 = protocol.protocol;
            if (str.equals(str2)) {
                return protocol;
            }
            Protocol protocol2 = Protocol.HTTP_1_1;
            str3 = protocol2.protocol;
            if (str.equals(str3)) {
                return protocol2;
            }
            Protocol protocol3 = Protocol.H2_PRIOR_KNOWLEDGE;
            str4 = protocol3.protocol;
            if (str.equals(str4)) {
                return protocol3;
            }
            Protocol protocol4 = Protocol.HTTP_2;
            str5 = protocol4.protocol;
            if (str.equals(str5)) {
                return protocol4;
            }
            Protocol protocol5 = Protocol.SPDY_3;
            str6 = protocol5.protocol;
            if (str.equals(str6)) {
                return protocol5;
            }
            Protocol protocol6 = Protocol.QUIC;
            str7 = protocol6.protocol;
            if (str.equals(str7)) {
                return protocol6;
            }
            Protocol protocol7 = Protocol.HTTP_3;
            str8 = protocol7.protocol;
            if (StringsKt__StringsJVMKt.startsWith(str, str8, false)) {
                return protocol7;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Unexpected protocol: ".concat(str));
            return null;
        }

        /* renamed from: forJavaName, reason: collision with other method in class */
        public synchronized CipherSuite m710forJavaName(String str) {
            CipherSuite cipherSuite;
            String concat;
            try {
                str.getClass();
                LinkedHashMap linkedHashMap = CipherSuite.INSTANCES;
                cipherSuite = (CipherSuite) linkedHashMap.get(str);
                if (cipherSuite == null) {
                    if (StringsKt__StringsJVMKt.startsWith(str, "TLS_", false)) {
                        concat = "SSL_".concat(str.substring(4));
                    } else {
                        concat = StringsKt__StringsJVMKt.startsWith(str, "SSL_", false) ? "TLS_".concat(str.substring(4)) : str;
                    }
                    cipherSuite = (CipherSuite) linkedHashMap.get(concat);
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(str);
                    }
                    linkedHashMap.put(str, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
            return cipherSuite;
        }
    }
}
