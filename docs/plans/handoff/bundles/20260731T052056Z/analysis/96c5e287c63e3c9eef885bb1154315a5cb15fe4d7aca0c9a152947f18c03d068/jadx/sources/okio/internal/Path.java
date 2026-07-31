package okio.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: okio.internal.-Path, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Path {
    public static final ByteString ANY_SLASH;
    public static final ByteString BACKSLASH;
    public static final ByteString DOT;
    public static final ByteString DOT_DOT;
    public static final ByteString SLASH;

    static {
        ByteString byteString = ByteString.EMPTY;
        SLASH = ByteString.Companion.encodeUtf8("/");
        BACKSLASH = ByteString.Companion.encodeUtf8("\\");
        ANY_SLASH = ByteString.Companion.encodeUtf8("/\\");
        DOT = ByteString.Companion.encodeUtf8(".");
        DOT_DOT = ByteString.Companion.encodeUtf8("..");
    }

    public static final okio.Path commonResolve(okio.Path path, okio.Path path2, boolean z) {
        path2.getClass();
        if (rootLength(path2) != -1 || path2.volumeLetter() != null) {
            return path2;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(path2)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.m876write(path.bytes);
        if (buffer.size > 0) {
            buffer.m876write(slash);
        }
        buffer.m876write(path2.bytes);
        return toPath(buffer, z);
    }

    public static final ByteString getSlash(okio.Path path) {
        ByteString byteString = path.bytes;
        ByteString byteString2 = SLASH;
        if (ByteString.indexOf$default(byteString, byteString2) != -1) {
            return byteString2;
        }
        ByteString byteString3 = path.bytes;
        ByteString byteString4 = BACKSLASH;
        if (ByteString.indexOf$default(byteString3, byteString4) != -1) {
            return byteString4;
        }
        return null;
    }

    public static final int rootLength(okio.Path path) {
        ByteString byteString = path.bytes;
        if (byteString.getSize$okio() != 0) {
            if (byteString.internalGet$okio(0) != 47) {
                if (byteString.internalGet$okio(0) == 92) {
                    if (byteString.getSize$okio() > 2 && byteString.internalGet$okio(1) == 92) {
                        ByteString byteString2 = BACKSLASH;
                        byteString2.getClass();
                        int indexOf = byteString.indexOf(2, byteString2.internalArray$okio());
                        return indexOf == -1 ? byteString.getSize$okio() : indexOf;
                    }
                } else if (byteString.getSize$okio() > 2 && byteString.internalGet$okio(1) == 58 && byteString.internalGet$okio(2) == 92) {
                    char internalGet$okio = (char) byteString.internalGet$okio(0);
                    if ('a' <= internalGet$okio && internalGet$okio < '{') {
                        return 3;
                    }
                    if ('A' <= internalGet$okio && internalGet$okio < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0110 A[EDGE_INSN: B:68:0x0110->B:69:0x0110 BREAK  A[LOOP:1: B:20:0x00ab->B:36:0x00ab], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.Path toPath(okio.Buffer r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Path.toPath(okio.Buffer, boolean):okio.Path");
    }

    public static final ByteString toSlash(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return SLASH;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return BACKSLASH;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m("not a directory separator: ", str));
        return null;
    }

    public static final ByteString toSlash(byte b) {
        if (b == 47) {
            return SLASH;
        }
        if (b == 92) {
            return BACKSLASH;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(b, "not a directory separator: "));
        return null;
    }
}
