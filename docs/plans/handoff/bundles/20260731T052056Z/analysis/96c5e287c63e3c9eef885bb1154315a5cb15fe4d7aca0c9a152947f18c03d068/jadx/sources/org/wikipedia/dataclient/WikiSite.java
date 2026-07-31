package org.wikipedia.dataclient;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.jsoup.Jsoup;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class WikiSite implements Parcelable {
    public static String DEFAULT_BASE_URL;
    public String languageCode;
    public Uri uri;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<WikiSite> CREATOR = new DefaultStyle.AnonymousClass1(16);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static String authorityToLanguageCode(String str) {
            List list;
            Pattern compile = Pattern.compile("\\.");
            compile.getClass();
            Matcher matcher = compile.matcher(str);
            if (matcher.find()) {
                ArrayList arrayList = new ArrayList(10);
                int i = 0;
                do {
                    arrayList.add(str.subSequence(i, matcher.start()).toString());
                    i = matcher.end();
                } while (matcher.find());
                arrayList.add(str.subSequence(i, str.length()).toString());
                list = arrayList;
            } else {
                list = Room.listOf(str.toString());
            }
            String[] strArr = (String[]) list.toArray(new String[0]);
            return strArr.length >= 3 ? (strArr.length == 3 && Intrinsics.areEqual(strArr[0], "m")) ? "" : strArr[0] : "";
        }

        public static WikiSite forLanguageCode(String str) {
            String concat;
            str.getClass();
            String str2 = WikiSite.DEFAULT_BASE_URL;
            str2.getClass();
            Uri parse = Uri.parse(str2);
            parse.getClass();
            String scheme = parse.getScheme();
            if (scheme == null || scheme.length() == 0) {
                parse = parse.buildUpon().scheme("https").build();
                parse.getClass();
            }
            if (str.length() == 0) {
                concat = "";
            } else {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String defaultLanguageCode = Jsoup.getInstance().getLanguageState().getDefaultLanguageCode(str);
                if (defaultLanguageCode == null) {
                    defaultLanguageCode = normalizeLanguageCode(str);
                }
                concat = defaultLanguageCode.concat(".");
            }
            return new WikiSite(Modifier.CC.m(concat, parse.getAuthority()), str);
        }

        public static String normalizeLanguageCode(String str) {
            str.getClass();
            int hashCode = str.hashCode();
            if (hashCode != -159135416) {
                if (hashCode != 3508) {
                    if (hashCode != 107674) {
                        if (hashCode == 120009 && str.equals("yue")) {
                            return "zh-yue";
                        }
                    } else if (str.equals("lzh")) {
                        return "zh-classical";
                    }
                } else if (str.equals("nb")) {
                    return "no";
                }
            } else if (str.equals("be-x-old")) {
                return "be-tarask";
            }
            return str;
        }

        public static boolean supportedAuthority(String str) {
            String str2 = WikiSite.DEFAULT_BASE_URL;
            str2.getClass();
            Uri parse = Uri.parse(str2);
            parse.getClass();
            String authority = parse.getAuthority();
            authority.getClass();
            return StringsKt__StringsJVMKt.endsWith(str, authority, false);
        }

        public final KSerializer serializer() {
            return WikiSite$$serializer.INSTANCE;
        }
    }

    public WikiSite(Uri uri) {
        this(uri, "");
        String path;
        Companion.getClass();
        String scheme = uri.getScheme();
        if (scheme == null || scheme.length() == 0) {
            uri = uri.buildUpon().scheme("https").build();
            uri.getClass();
        }
        String authority = uri.getAuthority();
        authority = authority == null ? "" : authority;
        if (("wikipedia.org".equals(authority) || "www.wikipedia.org".equals(authority)) && (path = uri.getPath()) != null && StringsKt__StringsJVMKt.startsWith(path, "/wiki", false)) {
            authority = "en.wikipedia.org";
        }
        String replace$default = StringsKt__StringsJVMKt.replace$default(authority, ".m.", ".");
        String path2 = uri.getPath();
        Object obj = null;
        String str = (path2 == null || (str = (String) CollectionsKt.getOrNull(StringsKt.split$default(path2, new char[]{'/'}), 1)) == null || str.equals("wiki") || str.equals("w")) ? null : str;
        String str2 = str != null ? str : "";
        this.languageCode = str2.length() == 0 ? Companion.authorityToLanguageCode(replace$default) : str2;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String defaultLanguageCode = Jsoup.getInstance().getLanguageState().getDefaultLanguageCode(this.languageCode);
        List languageVariants = Jsoup.getInstance().getLanguageState().getLanguageVariants(this.languageCode);
        if (defaultLanguageCode != null || languageVariants != null) {
            languageVariants = languageVariants == null ? Jsoup.getInstance().getLanguageState().getLanguageVariants(defaultLanguageCode) : languageVariants;
            Iterator it = ((ArrayList) ViewSizeResolver$CC.m785m()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String str3 = (String) next;
                if (languageVariants != null && languageVariants.contains(str3)) {
                    obj = next;
                    break;
                }
            }
            String str4 = (String) obj;
            this.languageCode = str4 == null ? this.languageCode : str4;
        }
        if (Intrinsics.areEqual(this.languageCode, "commons")) {
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            this.languageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        }
        if (StringsKt.contains(replace$default, "wikipedia.org", false) && subdomain().length() > 0) {
            replace$default = subdomain().concat(".wikipedia.org");
        }
        Uri build = new Uri.Builder().scheme(uri.getScheme()).encodedAuthority(replace$default).build();
        build.getClass();
        this.uri = build;
    }

    public final String authority() {
        String authority = this.uri.getAuthority();
        return authority == null ? "" : authority;
    }

    public final String dbName() {
        Uri uri = this.uri;
        String authority = uri.getAuthority();
        if (authority == null) {
            authority = "";
        }
        String str = "wikidata";
        if (!StringsKt.contains(authority, "wikidata", false)) {
            String authority2 = uri.getAuthority();
            str = "commons";
            if (!StringsKt.contains(authority2 != null ? authority2 : "", "commons", false)) {
                String subdomain = subdomain();
                Pattern compile = Pattern.compile("-");
                compile.getClass();
                str = compile.matcher(subdomain).replaceAll("_");
                str.getClass();
            }
        }
        return str.concat("wiki");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WikiSite)) {
            return false;
        }
        WikiSite wikiSite = (WikiSite) obj;
        return Intrinsics.areEqual(this.uri, wikiSite.uri) && Intrinsics.areEqual(this.languageCode, wikiSite.languageCode);
    }

    public final int hashCode() {
        return this.languageCode.hashCode() + (this.uri.hashCode() * 31);
    }

    public final String scheme() {
        String scheme = this.uri.getScheme();
        if (scheme == null) {
            scheme = "";
        }
        return scheme.length() == 0 ? "https" : scheme;
    }

    public final String subdomain() {
        Companion companion = Companion;
        String str = this.languageCode;
        companion.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String defaultLanguageCode = Jsoup.getInstance().getLanguageState().getDefaultLanguageCode(str);
        return defaultLanguageCode == null ? Companion.normalizeLanguageCode(str) : defaultLanguageCode;
    }

    public final String toString() {
        return "WikiSite(uri=" + this.uri + ", languageCode=" + this.languageCode + ")";
    }

    public final String url() {
        String uri = this.uri.toString();
        uri.getClass();
        return uri;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeParcelable(this.uri, i);
        parcel.writeString(this.languageCode);
    }

    public WikiSite(Uri uri, String str) {
        uri.getClass();
        str.getClass();
        this.uri = uri;
        this.languageCode = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WikiSite(String str, String str2) {
        this(str);
        str.getClass();
        str2.getClass();
        this.languageCode = str2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WikiSite(java.lang.String r3) {
        /*
            r2 = this;
            r3.getClass()
            java.lang.String r0 = "http"
            r1 = 0
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r3, r0, r1)
            if (r0 == 0) goto L11
            android.net.Uri r3 = android.net.Uri.parse(r3)
            goto L2e
        L11:
            java.lang.String r0 = "//"
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r3, r0, r1)
            if (r0 == 0) goto L24
            java.lang.String r0 = "https:"
            java.lang.String r3 = r0.concat(r3)
            android.net.Uri r3 = android.net.Uri.parse(r3)
            goto L2e
        L24:
            java.lang.String r0 = "https://"
            java.lang.String r3 = r0.concat(r3)
            android.net.Uri r3 = android.net.Uri.parse(r3)
        L2e:
            r3.getClass()
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.WikiSite.<init>(java.lang.String):void");
    }
}
