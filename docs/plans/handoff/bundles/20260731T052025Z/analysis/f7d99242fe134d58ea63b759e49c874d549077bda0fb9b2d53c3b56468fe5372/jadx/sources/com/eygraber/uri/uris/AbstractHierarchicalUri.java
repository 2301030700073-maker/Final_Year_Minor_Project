package com.eygraber.uri.uris;

import androidx.room.util.DBUtil;
import com.eygraber.uri.Uri;
import com.eygraber.uri.UriCodec;
import com.eygraber.uri.parts.Part;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.CharRange;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractHierarchicalUri implements Uri {
    public final SynchronizedLazyImpl _userInfo$delegate;

    public AbstractHierarchicalUri() {
        final int i = 0;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i2 = i;
                int i3 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i2) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i3 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i3);
                }
            }
        });
        final int i2 = 1;
        this._userInfo$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i22 = i2;
                int i3 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i3 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i3);
                }
            }
        });
        final int i3 = 2;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i22 = i3;
                int i32 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i32 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i32);
                }
            }
        });
        final int i4 = 3;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i22 = i4;
                int i32 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i32 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i32);
                }
            }
        });
        final int i5 = 4;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i22 = i5;
                int i32 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i32 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i32);
                }
            }
        });
        final int i6 = 5;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.AbstractHierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ AbstractHierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int findPortSeparator;
                int i22 = i6;
                int i32 = -1;
                AbstractHierarchicalUri abstractHierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        List pathSegments = abstractHierarchicalUri.getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return null;
                        }
                        return (String) CollectionsKt.last(pathSegments);
                    case 1:
                        String encodedAuthority = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority == null) {
                            Part.EmptyPart emptyPart = Part.NULL;
                            return DBUtil.fromEncoded(null);
                        }
                        int lastIndexOf$default = StringsKt.lastIndexOf$default(encodedAuthority, '@', 0, 6);
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(lastIndexOf$default != -1 ? encodedAuthority.substring(0, lastIndexOf$default) : null);
                    case 2:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getDecoded();
                    case 3:
                        return ((Part) abstractHierarchicalUri._userInfo$delegate.getValue()).getEncoded();
                    case 4:
                        String encodedAuthority2 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority2 == null) {
                            return null;
                        }
                        int lastIndexOf$default2 = StringsKt.lastIndexOf$default(encodedAuthority2, '@', 0, 6);
                        int findPortSeparator2 = AbstractHierarchicalUri.findPortSeparator(encodedAuthority2);
                        String substring = findPortSeparator2 == -1 ? encodedAuthority2.substring(lastIndexOf$default2 + 1) : encodedAuthority2.substring(lastIndexOf$default2 + 1, findPortSeparator2);
                        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                        return UriCodec.decode(substring);
                    default:
                        String encodedAuthority3 = abstractHierarchicalUri.getEncodedAuthority();
                        if (encodedAuthority3 != null && (findPortSeparator = AbstractHierarchicalUri.findPortSeparator(encodedAuthority3)) != -1) {
                            CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                            try {
                                i32 = Integer.parseInt(UriCodec.decode(encodedAuthority3.substring(findPortSeparator + 1)));
                            } catch (NumberFormatException unused) {
                            }
                        }
                        return Integer.valueOf(i32);
                }
            }
        });
    }

    public static int findPortSeparator(String str) {
        char charAt;
        int length = str.length();
        do {
            length--;
            if (-1 < length) {
                charAt = str.charAt(length);
                if (':' != charAt) {
                    if (charAt < '0') {
                        break;
                    }
                } else {
                    return length;
                }
            } else {
                break;
            }
        } while (charAt <= '9');
        return -1;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Uri uri) {
        Uri uri2 = uri;
        uri2.getClass();
        return toString().compareTo(uri2.toString());
    }
}
