package coil3;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriKt {
    public static final Uri Uri(String str, String str2, String str3, String str4, String str5, String str6) {
        if (str != null || str2 != null || str3 != null || str4 != null || str5 != null) {
            return new Uri(buildData(str, str2, str3, str4, str5), str6, str, str2, str3, str4, str5);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("At least one of scheme, authority, path, query, or fragment must be non-null.");
        return null;
    }

    public static /* synthetic */ Uri Uri$default(String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            str4 = null;
        }
        if ((i & 16) != 0) {
            str5 = null;
        }
        if ((i & 32) != 0) {
            str6 = Path.DIRECTORY_SEPARATOR;
        }
        return Uri(str, str2, str3, str4, str5, str6);
    }

    private static final String buildData(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(':');
        }
        if (str2 != null) {
            sb.append("//");
            sb.append(str2);
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return sb.toString();
    }

    public static final String getFilePath(Uri uri) {
        List<String> pathSegments = getPathSegments(uri);
        if (pathSegments.isEmpty()) {
            return null;
        }
        String path = uri.getPath();
        path.getClass();
        return CollectionsKt.joinToString$default(pathSegments, uri.getSeparator(), StringsKt__StringsJVMKt.startsWith(path, uri.getSeparator(), false) ? uri.getSeparator() : "", null, null, 60);
    }

    private static final int getLength(String str) {
        if (str != null) {
            return str.length();
        }
        return 0;
    }

    public static final List<String> getPathSegments(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < path.length()) {
            int i2 = i + 1;
            int indexOf$default = StringsKt.indexOf$default(path, '/', i2, 4);
            if (indexOf$default == -1) {
                indexOf$default = path.length();
            }
            String substring = path.substring(i2, indexOf$default);
            if (substring.length() > 0) {
                arrayList.add(substring);
            }
            i = indexOf$default;
        }
        return arrayList;
    }

    private static final Uri parseUri(String str, String str2, String str3) {
        String str4;
        String str5;
        boolean z = true;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        while (i6 < str.length()) {
            char charAt = str.charAt(i6);
            if (charAt != '#') {
                if (charAt != '/') {
                    if (charAt != ':') {
                        if (charAt == '?' && i3 == -1 && i == -1) {
                            i3 = i6 + 1;
                        }
                    } else if (z && i3 == -1 && i == -1) {
                        int i7 = i6 + 2;
                        if (i7 < str2.length() && str2.charAt(i6 + 1) == '/' && str2.charAt(i7) == '/') {
                            i4 = i6 + 3;
                            z = false;
                            i5 = i6;
                            i6 = i7;
                        } else if (str.equals(str2)) {
                            i2 = i6 + 1;
                            i5 = i6;
                            i6 = i2;
                            i4 = i6;
                        }
                    }
                } else if (i2 == -1 && i3 == -1 && i == -1) {
                    i2 = i4 == -1 ? 0 : i6;
                    z = false;
                }
            } else if (i == -1) {
                i = i6 + 1;
            }
            i6++;
        }
        int min = Math.min(i == -1 ? Integer.MAX_VALUE : i - 1, str.length());
        int min2 = Math.min(i3 == -1 ? Integer.MAX_VALUE : i3 - 1, min);
        if (i4 != -1) {
            str5 = str.substring(0, i5);
            str4 = str.substring(i4, Math.min(i2 != -1 ? i2 : Integer.MAX_VALUE, min2));
        } else {
            str4 = null;
            str5 = null;
        }
        String substring = i2 != -1 ? str.substring(i2, min2) : null;
        String substring2 = i3 != -1 ? str.substring(i3, min) : null;
        String substring3 = i != -1 ? str.substring(i, str.length()) : null;
        byte[] bArr = new byte[Math.max(0, Math.max(getLength(str5), Math.max(getLength(str4), Math.max(getLength(substring), Math.max(getLength(substring2), getLength(substring3))))) - 2)];
        return new Uri(str, str3, str5 != null ? percentDecode(str5, bArr) : null, str4 != null ? percentDecode(str4, bArr) : null, substring != null ? percentDecode(substring, bArr) : null, substring2 != null ? percentDecode(substring2, bArr) : null, substring3 != null ? percentDecode(substring3, bArr) : null);
    }

    private static final String percentDecode(String str, byte[] bArr) {
        int length = str.length();
        int i = 0;
        int max = Math.max(0, length - 2);
        int i2 = 0;
        while (true) {
            if (i >= max) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    return StringsKt__StringsJVMKt.decodeToString(i2, bArr);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String substring = str.substring(i + 1, i3);
                    CharsKt__CharKt.checkRadix(16);
                    bArr[i2] = (byte) Integer.parseInt(substring, 16);
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    public static final Uri toUri(String str, String str2) {
        return parseUri(!Intrinsics.areEqual(str2, "/") ? StringsKt__StringsJVMKt.replace$default(str, str2, "/") : str, str, str2);
    }

    public static /* synthetic */ Uri toUri$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = Path.DIRECTORY_SEPARATOR;
        }
        return toUri(str, str2);
    }

    public static final Uri toUri(String str) {
        return toUri$default(str, null, 1, null);
    }
}
