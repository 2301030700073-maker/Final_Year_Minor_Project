package okhttp3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.backend.api.SyncConfig;
import com.fsck.k9.backend.api.SyncListener;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.store.imap.ImapMessage;
import com.fsck.k9.mailstore.K9BackendFolder;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.url._UrlKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return str.substring(StringsKt.indexOf$default(str, ':', length, 4) + 1, StringsKt.indexOf$default(str, '@', 0, 6));
    }

    public final String encodedPath() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default(str, '/', length, 4);
        return str.substring(indexOf$default, _UtilCommonKt.delimiterOffset(indexOf$default, str.length(), str, "?#"));
    }

    public final ArrayList encodedPathSegments() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default(str, '/', length, 4);
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
        int indexOf$default = StringsKt.indexOf$default(str, '?', 0, 6) + 1;
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

    public final Builder newBuilder() {
        Builder builder = new Builder();
        ArrayList arrayList = (ArrayList) builder.encodedPathSegments;
        String str = this.scheme;
        builder.scheme = str;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        str.getClass();
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.port;
        builder.port = i2 != i ? i2 : -1;
        arrayList.clear();
        arrayList.addAll(encodedPathSegments());
        String encodedQuery = encodedQuery();
        String str2 = null;
        builder.encodedQueryNamesAndValues = encodedQuery != null ? Builder.toQueryNamesAndValues(_UrlKt.canonicalize$default(0, 0, 83, encodedQuery, " \"'<>#", true)) : null;
        if (this.fragment != null) {
            String str3 = this.url;
            str2 = str3.substring(StringsKt.indexOf$default(str3, '#', 0, 6) + 1);
        }
        builder.encodedFragment = str2;
        return builder;
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
        builder.encodedUsername = _UrlKt.canonicalize$default(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#", false);
        builder.encodedPassword = _UrlKt.canonicalize$default(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#", false);
        return builder.build().url;
    }

    public final String toString() {
        return this.url;
    }

    public final URI uri() {
        String str;
        Builder newBuilder = newBuilder();
        ArrayList arrayList = (ArrayList) newBuilder.encodedPathSegments;
        String str2 = (String) newBuilder.host;
        if (str2 != null) {
            Pattern compile = Pattern.compile("[\"<>^`{|}]");
            compile.getClass();
            str = compile.matcher(str2).replaceAll("");
            str.getClass();
        } else {
            str = null;
        }
        newBuilder.host = str;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, _UrlKt.canonicalize$default(0, 0, 99, (String) arrayList.get(i), "[]", true));
        }
        ArrayList arrayList2 = (ArrayList) newBuilder.encodedQueryNamesAndValues;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str3 = (String) arrayList2.get(i2);
                arrayList2.set(i2, str3 != null ? _UrlKt.canonicalize$default(0, 0, 67, str3, "\\^`{|}", true) : null);
            }
        }
        String str4 = (String) newBuilder.encodedFragment;
        newBuilder.encodedFragment = str4 != null ? _UrlKt.canonicalize$default(0, 0, 35, str4, " \"#<>\\^`{|}", true) : null;
        String builder = newBuilder.toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e) {
            try {
                Pattern compile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                compile2.getClass();
                String replaceAll = compile2.matcher(builder).replaceAll("");
                replaceAll.getClass();
                URI create = URI.create(replaceAll);
                create.getClass();
                return create;
            } catch (Exception unused) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public final /* synthetic */ int $r8$classId;
        public Object encodedFragment;
        public Serializable encodedPassword;
        public final Object encodedPathSegments;
        public Serializable encodedQueryNamesAndValues;
        public Object encodedUsername;
        public Object host;
        public int port;
        public String scheme;

        public Builder() {
            this.$r8$classId = 0;
            this.encodedUsername = "";
            this.encodedPassword = "";
            this.port = -1;
            this.encodedPathSegments = IntOffsetKt.mutableListOf("");
        }

        public static ArrayList toQueryNamesAndValues(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int indexOf$default = StringsKt.indexOf$default(str, '&', i, 4);
                if (indexOf$default == -1) {
                    indexOf$default = str.length();
                }
                int indexOf$default2 = StringsKt.indexOf$default(str, '=', i, 4);
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

        public void addEncodedPathSegments(String str) {
            int i = 0;
            while (true) {
                int delimiterOffset = _UtilCommonKt.delimiterOffset(i, str.length(), str, "/\\");
                Builder builder = this;
                String str2 = str;
                builder.push(str2, i, delimiterOffset, delimiterOffset < str.length(), true);
                i = delimiterOffset + 1;
                if (i > str2.length()) {
                    return;
                }
                this = builder;
                str = str2;
            }
        }

        public HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("scheme == null");
                return null;
            }
            String percentDecode$default = _UrlKt.percentDecode$default(0, 0, 7, (String) this.encodedUsername);
            String percentDecode$default2 = _UrlKt.percentDecode$default(0, 0, 7, (String) this.encodedPassword);
            String str2 = (String) this.host;
            if (str2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("host == null");
                return null;
            }
            int effectivePort = effectivePort();
            ArrayList arrayList2 = (ArrayList) this.encodedPathSegments;
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(_UrlKt.percentDecode$default(0, 0, 7, (String) it.next()));
            }
            ArrayList<String> arrayList4 = (ArrayList) this.encodedQueryNamesAndValues;
            if (arrayList4 != null) {
                arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList4, 10));
                for (String str3 : arrayList4) {
                    arrayList.add(str3 != null ? _UrlKt.percentDecode$default(0, 0, 3, str3) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = (String) this.encodedFragment;
            return new HttpUrl(str, percentDecode$default, percentDecode$default2, str2, effectivePort, arrayList, str4 != null ? _UrlKt.percentDecode$default(0, 0, 7, str4) : null, toString());
        }

        public int effectivePort() {
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

        public void host(String str) {
            str.getClass();
            String canonicalHost = _HostnamesCommonKt.toCanonicalHost(_UrlKt.percentDecode$default(0, 0, 7, str));
            if (canonicalHost != null) {
                this.host = canonicalHost;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("unexpected host: ".concat(str));
            }
        }

        public void onFetchResponse(ImapMessage imapMessage, boolean z) {
            int i = this.$r8$classId;
            Object obj = this.encodedPathSegments;
            switch (i) {
                case 1:
                    SyncListener syncListener = (SyncListener) obj;
                    ImapSync imapSync = (ImapSync) this.encodedFragment;
                    AtomicInteger atomicInteger = (AtomicInteger) this.encodedPassword;
                    String str = this.scheme;
                    try {
                        ((K9BackendFolder) this.encodedUsername).saveMessage(imapMessage, MessageDownloadState.FULL);
                        if (z) {
                            atomicInteger.incrementAndGet();
                            ((AtomicInteger) this.host).incrementAndGet();
                        }
                        String str2 = imapMessage.mUid;
                        Log.v("About to notify listeners that we got a new small message %s:%s:%s", (String) imapSync.accountName, str, str2);
                        syncListener.syncProgress(atomicInteger.get(), str, this.port);
                        str2.getClass();
                        syncListener.syncNewMessage(str, str2, ImapSync.isOldMessage(str2, (Long) this.encodedQueryNamesAndValues));
                        break;
                    } catch (Exception e) {
                        Log.e(e, "SYNC: fetch small messages", new Object[0]);
                        return;
                    }
                default:
                    AtomicInteger atomicInteger2 = (AtomicInteger) this.encodedPassword;
                    String str3 = this.scheme;
                    try {
                        if (!imapMessage.mFlags.contains(Flag.DELETED)) {
                            int i2 = ((SyncConfig) this.encodedFragment).maximumAutoDownloadMessageSize;
                            if (i2 > 0 && imapMessage.mSize > i2) {
                                ((ArrayList) obj).add(imapMessage);
                                break;
                            } else {
                                ((ArrayList) this.encodedQueryNamesAndValues).add(imapMessage);
                                break;
                            }
                        } else {
                            Log.v("Newly downloaded message %s:%s:%s was marked deleted on server, skipping", (String) ((ImapSync) this.encodedUsername).accountName, str3, imapMessage.mUid);
                            if (z) {
                                atomicInteger2.incrementAndGet();
                            }
                            ((SyncListener) this.host).syncProgress(atomicInteger2.get(), str3, this.port);
                            break;
                        }
                    } catch (Exception e2) {
                        Log.e(e2, "Error while storing downloaded message.", new Object[0]);
                    }
                    break;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:119:0x021c, code lost:
        
            if (r3 < 65536) goto L122;
         */
        /* JADX WARN: Code restructure failed: missing block: B:188:0x0077, code lost:
        
            if (r13 == ':') goto L38;
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x01ff  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x01f7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:144:0x0146  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01d9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void parse$okhttp(okhttp3.HttpUrl r25, java.lang.String r26) {
            /*
                Method dump skipped, instructions count: 781
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.parse$okhttp(okhttp3.HttpUrl, java.lang.String):void");
        }

        public void push(String str, int i, int i2, boolean z, boolean z2) {
            ArrayList arrayList = (ArrayList) this.encodedPathSegments;
            String canonicalize$default = _UrlKt.canonicalize$default(i, i2, 112, str, " \"<>^`{}|/\\?#", z2);
            if (canonicalize$default.equals(".") || canonicalize$default.equalsIgnoreCase("%2e")) {
                return;
            }
            if (canonicalize$default.equals("..") || canonicalize$default.equalsIgnoreCase("%2e.") || canonicalize$default.equalsIgnoreCase(".%2e") || canonicalize$default.equalsIgnoreCase("%2e%2e")) {
                if (((String) Modifier.CC.m(1, arrayList)).length() != 0 || arrayList.isEmpty()) {
                    arrayList.add("");
                    return;
                } else {
                    arrayList.set(arrayList.size() - 1, "");
                    return;
                }
            }
            if (((CharSequence) arrayList.get(arrayList.size() - 1)).length() == 0) {
                arrayList.set(arrayList.size() - 1, canonicalize$default);
            } else {
                arrayList.add(canonicalize$default);
            }
            if (z) {
                arrayList.add("");
            }
        }

        public void scheme(String str) {
            if (str.equalsIgnoreCase("http")) {
                this.scheme = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.scheme = "https";
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("unexpected scheme: ".concat(str));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a3, code lost:
        
            if (r1 != r3) goto L38;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 312
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public Builder(K9BackendFolder k9BackendFolder, AtomicInteger atomicInteger, AtomicInteger atomicInteger2, ImapSync imapSync, String str, SyncListener syncListener, int i, Long l) {
            this.$r8$classId = 1;
            this.encodedUsername = k9BackendFolder;
            this.encodedPassword = atomicInteger;
            this.host = atomicInteger2;
            this.encodedFragment = imapSync;
            this.scheme = str;
            this.encodedPathSegments = syncListener;
            this.port = i;
            this.encodedQueryNamesAndValues = l;
        }

        public Builder(ImapSync imapSync, String str, AtomicInteger atomicInteger, SyncListener syncListener, int i, SyncConfig syncConfig, ArrayList arrayList, ArrayList arrayList2) {
            this.$r8$classId = 2;
            this.encodedUsername = imapSync;
            this.scheme = str;
            this.encodedPassword = atomicInteger;
            this.host = syncListener;
            this.port = i;
            this.encodedFragment = syncConfig;
            this.encodedPathSegments = arrayList;
            this.encodedQueryNamesAndValues = arrayList2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            UriKt$$ExternalSyntheticBUOutline0.m("Unexpected TLS version: ".concat(str));
            return null;
        }

        public static Protocol get(String str) {
            if (str.equals("http/1.0")) {
                return Protocol.HTTP_1_0;
            }
            if (str.equals("http/1.1")) {
                return Protocol.HTTP_1_1;
            }
            if (str.equals("h2_prior_knowledge")) {
                return Protocol.H2_PRIOR_KNOWLEDGE;
            }
            if (str.equals("h2")) {
                return Protocol.HTTP_2;
            }
            if (str.equals("spdy/3.1")) {
                return Protocol.SPDY_3;
            }
            if (str.equals("quic")) {
                return Protocol.QUIC;
            }
            if (StringsKt__StringsJVMKt.startsWith(str, "h3", false)) {
                return Protocol.HTTP_3;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Unexpected protocol: ".concat(str));
            return null;
        }

        /* renamed from: forJavaName, reason: collision with other method in class */
        public synchronized CipherSuite m1049forJavaName(String str) {
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
