package io.ktor.http;

import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Url.kt */
/* loaded from: classes.dex */
public final class Url {
    public static final Companion Companion = new Companion(null);
    private final Lazy encodedFragment$delegate;
    private final Lazy encodedPassword$delegate;
    private final Lazy encodedPath$delegate;
    private final Lazy encodedPathAndQuery$delegate;
    private final Lazy encodedQuery$delegate;
    private final Lazy encodedUser$delegate;
    private final String fragment;
    private final String host;
    private final Parameters parameters;
    private final String password;
    private final List pathSegments;
    private final URLProtocol protocol;
    private final int specifiedPort;
    private final boolean trailingQuery;
    private final String urlString;
    private final String user;

    public Url(URLProtocol protocol, String host, int i, List pathSegments, Parameters parameters, String fragment, String str, String str2, boolean z, String urlString) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        this.protocol = protocol;
        this.host = host;
        this.specifiedPort = i;
        this.pathSegments = pathSegments;
        this.parameters = parameters;
        this.fragment = fragment;
        this.user = str;
        this.password = str2;
        this.trailingQuery = z;
        this.urlString = urlString;
        if ((i < 0 || i >= 65536) && i != 0) {
            throw new IllegalArgumentException("port must be between 0 and 65535, or 0 if not set");
        }
        this.encodedPath$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedPath$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                String str5;
                String str6;
                if (Url.this.getPathSegments().isEmpty()) {
                    return "";
                }
                str3 = Url.this.urlString;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str3, '/', Url.this.getProtocol().getName().length() + 3, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    return "";
                }
                str4 = Url.this.urlString;
                int indexOfAny$default = StringsKt.indexOfAny$default(str4, new char[]{'?', '#'}, indexOf$default, false, 4, null);
                if (indexOfAny$default == -1) {
                    str6 = Url.this.urlString;
                    String substring = str6.substring(indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                    return substring;
                }
                str5 = Url.this.urlString;
                String substring2 = str5.substring(indexOf$default, indexOfAny$default);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring2;
            }
        });
        this.encodedQuery$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedQuery$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                String str5;
                String str6;
                str3 = Url.this.urlString;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str3, '?', 0, false, 6, (Object) null) + 1;
                if (indexOf$default != 0) {
                    str4 = Url.this.urlString;
                    int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str4, '#', indexOf$default, false, 4, (Object) null);
                    if (indexOf$default2 == -1) {
                        str6 = Url.this.urlString;
                        String substring = str6.substring(indexOf$default);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        return substring;
                    }
                    str5 = Url.this.urlString;
                    String substring2 = str5.substring(indexOf$default, indexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring2;
                }
                return "";
            }
        });
        this.encodedPathAndQuery$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedPathAndQuery$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                String str5;
                String str6;
                str3 = Url.this.urlString;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str3, '/', Url.this.getProtocol().getName().length() + 3, false, 4, (Object) null);
                if (indexOf$default != -1) {
                    str4 = Url.this.urlString;
                    int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str4, '#', indexOf$default, false, 4, (Object) null);
                    if (indexOf$default2 == -1) {
                        str6 = Url.this.urlString;
                        String substring = str6.substring(indexOf$default);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        return substring;
                    }
                    str5 = Url.this.urlString;
                    String substring2 = str5.substring(indexOf$default, indexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring2;
                }
                return "";
            }
        });
        this.encodedUser$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedUser$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                if (Url.this.getUser() == null) {
                    return null;
                }
                if (Url.this.getUser().length() == 0) {
                    return "";
                }
                int length = Url.this.getProtocol().getName().length() + 3;
                str3 = Url.this.urlString;
                int indexOfAny$default = StringsKt.indexOfAny$default(str3, new char[]{CoreConstants.COLON_CHAR, '@'}, length, false, 4, null);
                str4 = Url.this.urlString;
                String substring = str4.substring(length, indexOfAny$default);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring;
            }
        });
        this.encodedPassword$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedPassword$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                String str5;
                if (Url.this.getPassword() == null) {
                    return null;
                }
                if (Url.this.getPassword().length() == 0) {
                    return "";
                }
                str3 = Url.this.urlString;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str3, CoreConstants.COLON_CHAR, Url.this.getProtocol().getName().length() + 3, false, 4, (Object) null) + 1;
                str4 = Url.this.urlString;
                int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str4, '@', 0, false, 6, (Object) null);
                str5 = Url.this.urlString;
                String substring = str5.substring(indexOf$default, indexOf$default2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring;
            }
        });
        this.encodedFragment$delegate = LazyKt.lazy(new Function0() { // from class: io.ktor.http.Url$encodedFragment$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String str3;
                String str4;
                str3 = Url.this.urlString;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str3, '#', 0, false, 6, (Object) null) + 1;
                if (indexOf$default != 0) {
                    str4 = Url.this.urlString;
                    String substring = str4.substring(indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                    return substring;
                }
                return "";
            }
        });
    }

    public final URLProtocol getProtocol() {
        return this.protocol;
    }

    public final String getHost() {
        return this.host;
    }

    public final int getSpecifiedPort() {
        return this.specifiedPort;
    }

    public final List getPathSegments() {
        return this.pathSegments;
    }

    public final String getUser() {
        return this.user;
    }

    public final String getPassword() {
        return this.password;
    }

    public final boolean getTrailingQuery() {
        return this.trailingQuery;
    }

    public final int getPort() {
        Integer valueOf = Integer.valueOf(this.specifiedPort);
        if (valueOf.intValue() == 0) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : this.protocol.getDefaultPort();
    }

    public final String getEncodedPath() {
        return (String) this.encodedPath$delegate.getValue();
    }

    public final String getEncodedQuery() {
        return (String) this.encodedQuery$delegate.getValue();
    }

    public final String getEncodedUser() {
        return (String) this.encodedUser$delegate.getValue();
    }

    public final String getEncodedPassword() {
        return (String) this.encodedPassword$delegate.getValue();
    }

    public final String getEncodedFragment() {
        return (String) this.encodedFragment$delegate.getValue();
    }

    public String toString() {
        return this.urlString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Url.class == obj.getClass() && Intrinsics.areEqual(this.urlString, ((Url) obj).urlString);
    }

    public int hashCode() {
        return this.urlString.hashCode();
    }

    /* compiled from: Url.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
