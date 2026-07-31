package okio;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Latch;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.BitString;
import okhttp3.tls.internal.der.DerReader;
import okio.internal.ZipFilesKt;
import org.jsoup.Jsoup;
import org.maplibre.android.maps.renderer.surfaceview.MapLibreVulkanSurfaceView;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable {
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    public final byte[] data;
    public transient int hashCode;
    public transient String utf8;

    public ByteString(byte[] bArr) {
        bArr.getClass();
        this.data = bArr;
    }

    public static int indexOf$default(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        return byteString.indexOf(0, byteString2.internalArray$okio());
    }

    public static int lastIndexOf$default(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        return byteString.lastIndexOf(byteString2.internalArray$okio());
    }

    public static ByteString substring$default(ByteString byteString, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = -1234567890;
        }
        return byteString.substring(i, i2);
    }

    public String base64() {
        byte[] bArr = Base64.BASE64;
        byte[] bArr2 = this.data;
        bArr2.getClass();
        bArr.getClass();
        byte[] bArr3 = new byte[((bArr2.length + 2) / 3) * 4];
        int length = bArr2.length - (bArr2.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr2[i];
            int i3 = i + 2;
            byte b2 = bArr2[i + 1];
            i += 3;
            byte b3 = bArr2[i3];
            bArr3[i2] = bArr[(b & 255) >> 2];
            bArr3[i2 + 1] = bArr[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr[b3 & 63];
        }
        int length2 = bArr2.length - length;
        if (length2 == 1) {
            byte b4 = bArr2[i];
            bArr3[i2] = bArr[(b4 & 255) >> 2];
            bArr3[i2 + 1] = bArr[(b4 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b5 = bArr2[i];
            byte b6 = bArr2[i5];
            bArr3[i2] = bArr[(b5 & 255) >> 2];
            bArr3[i2 + 1] = bArr[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr3[i2 + 2] = bArr[(b6 & 15) << 2];
            bArr3[i2 + 3] = 61;
        }
        return new String(bArr3, Charsets.UTF_8);
    }

    @Override // java.lang.Comparable
    public final int compareTo(ByteString byteString) {
        byteString.getClass();
        int size$okio = getSize$okio();
        int size$okio2 = byteString.getSize$okio();
        int min = Math.min(size$okio, size$okio2);
        for (int i = 0; i < min; i++) {
            int internalGet$okio = internalGet$okio(i) & 255;
            int internalGet$okio2 = byteString.internalGet$okio(i) & 255;
            if (internalGet$okio != internalGet$okio2) {
                return internalGet$okio < internalGet$okio2 ? -1 : 1;
            }
        }
        if (size$okio == size$okio2) {
            return 0;
        }
        return size$okio < size$okio2 ? -1 : 1;
    }

    public ByteString digest$okio(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.data, 0, getSize$okio());
        byte[] digest = messageDigest.digest();
        digest.getClass();
        return new ByteString(digest);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size$okio = byteString.getSize$okio();
            byte[] bArr = this.data;
            if (size$okio == bArr.length && byteString.rangeEquals(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public int getSize$okio() {
        return this.data.length;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.hashCode = hashCode;
        return hashCode;
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = ZipFilesKt.HEX_DIGIT_CHARS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public int indexOf(int i, byte[] bArr) {
        bArr.getClass();
        byte[] bArr2 = this.data;
        int length = bArr2.length - bArr.length;
        int max = Math.max(i, 0);
        if (max > length) {
            return -1;
        }
        while (!HttpUrl.Companion.arrayRangeEquals(max, 0, bArr.length, bArr2, bArr)) {
            if (max == length) {
                return -1;
            }
            max++;
        }
        return max;
    }

    public byte[] internalArray$okio() {
        return this.data;
    }

    public byte internalGet$okio(int i) {
        return this.data[i];
    }

    public int lastIndexOf(byte[] bArr) {
        bArr.getClass();
        int size$okio = getSize$okio();
        byte[] bArr2 = this.data;
        for (int min = Math.min(size$okio, bArr2.length - bArr.length); -1 < min; min--) {
            if (HttpUrl.Companion.arrayRangeEquals(min, 0, bArr.length, bArr2, bArr)) {
                return min;
            }
        }
        return -1;
    }

    public boolean rangeEquals(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && HttpUrl.Companion.arrayRangeEquals(i, i2, i3, bArr2, bArr);
    }

    public String string(Charset charset) {
        charset.getClass();
        return new String(this.data, charset);
    }

    public ByteString substring(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = getSize$okio();
        }
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("beginIndex < 0");
            return null;
        }
        byte[] bArr = this.data;
        if (i2 > bArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(new StringBuilder("endIndex > length("), bArr.length, ')'));
            return null;
        }
        if (i2 - i >= 0) {
            return (i == 0 && i2 == bArr.length) ? this : new ByteString(ArraysKt___ArraysKt.copyOfRange(bArr, i, i2));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("endIndex < beginIndex");
        return null;
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                copyOf[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b2 = copyOf[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        copyOf[i2] = (byte) (b2 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
            i++;
        }
    }

    public byte[] toByteArray() {
        byte[] bArr = this.data;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00ef, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0127, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x012b, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00cf, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x016a, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0171, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0163, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x01a2, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01a5, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x01a8, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0137, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01ab, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0092, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bd, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0081, code lost:
    
        if (r6 == 64) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f7, code lost:
    
        if (r6 == 64) goto L178;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.toString():java.lang.String");
    }

    public final String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        byte[] internalArray$okio = internalArray$okio();
        internalArray$okio.getClass();
        String str2 = new String(internalArray$okio, Charsets.UTF_8);
        this.utf8 = str2;
        return str2;
    }

    public void write$okio(Buffer buffer, int i) {
        buffer.m875write(i, this.data);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion implements Internal.EnumLiteMap, BasicDerAdapter.Codec {
        public static Companion INSTANCE;
        public final /* synthetic */ int $r8$classId;

        public Companion(LockBasedStorageManager lockBasedStorageManager) {
            this.$r8$classId = 4;
            String str = LockBasedStorageManager.PACKAGE_NAME;
            new ConcurrentHashMap(3, 1.0f, 2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x007a, code lost:
        
            r6 = null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static okio.ByteString decodeBase64(java.lang.String r14) {
            /*
                Method dump skipped, instructions count: 215
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.Companion.decodeBase64(java.lang.String):okio.ByteString");
        }

        public static ByteString decodeHex(String str) {
            if (str.length() % 2 != 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "Unexpected hex string: ".concat(str));
                return null;
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (ZipFilesKt.decodeHexDigit(str.charAt(i2 + 1)) + (ZipFilesKt.decodeHexDigit(str.charAt(i2)) << 4));
            }
            return new ByteString(bArr);
        }

        public static ByteString encodeUtf8(String str) {
            str.getClass();
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            bytes.getClass();
            ByteString byteString = new ByteString(bytes);
            byteString.utf8 = str;
            return byteString;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x00d3, code lost:
        
            if (kotlin.text.StringsKt__StringsJVMKt.endsWith(r4, ".gif", false) == true) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static coil3.request.ImageRequest.Builder getRequestBuilder(android.content.Context r4, java.lang.String r5, java.lang.Boolean r6, java.lang.Boolean r7, java.lang.Integer r8, org.wikipedia.views.imageservice.ImageLoadListener r9) {
            /*
                Method dump skipped, instructions count: 251
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.Companion.getRequestBuilder(android.content.Context, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Integer, org.wikipedia.views.imageservice.ImageLoadListener):coil3.request.ImageRequest$Builder");
        }

        public static Namespace intToNamespace(Integer num) {
            if (num == null) {
                return null;
            }
            Namespace.Companion companion = Namespace.Companion;
            int intValue = num.intValue();
            companion.getClass();
            return Namespace.Companion.of(intValue);
        }

        public static Integer namespaceToInt(Namespace namespace) {
            if (namespace != null) {
                return Integer.valueOf(namespace.code());
            }
            return null;
        }

        public static Intent newIntent(Context context, PageTitle pageTitle, Location location) {
            context.getClass();
            Intent putExtra = new Intent(context, (Class<?>) PlacesActivity.class).putExtra("title", pageTitle).putExtra("location", location);
            putExtra.getClass();
            return putExtra;
        }

        public static Intent newIntent$default(BaseActivity baseActivity, WikiSite wikiSite, String str, Constants.InvokeSource invokeSource, PageTitle pageTitle, String str2, int i) {
            int i2 = InsertMediaActivity.$r8$clinit;
            if ((i & 16) != 0) {
                pageTitle = null;
            }
            if ((i & 32) != 0) {
                str2 = "";
            }
            wikiSite.getClass();
            invokeSource.getClass();
            Intent putExtra = new Intent(baseActivity, (Class<?>) InsertMediaActivity.class).putExtra("wikiSite", wikiSite).putExtra("invokeSource", invokeSource).putExtra("imageTitle", pageTitle).putExtra("imageSource", str2).putExtra("imageSourceProjects", "").putExtra("searchQuery", str);
            putExtra.getClass();
            return putExtra;
        }

        public static ByteString of$default(byte[] bArr) {
            ByteString byteString = ByteString.EMPTY;
            int length = bArr.length;
            HttpUrl.Companion.checkOffsetAndCount(bArr.length, 0L, length);
            return new ByteString(ArraysKt___ArraysKt.copyOfRange(bArr, 0, length));
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public Object decode(DerReader derReader) {
            switch (this.$r8$classId) {
                case 6:
                    derReader.getClass();
                    RealBufferedSource realBufferedSource = derReader.source;
                    if (derReader.getBytesLeft() == -1 || derReader.constructed) {
                        throw new ProtocolException("constructed bit strings not supported for DER");
                    }
                    if (derReader.getBytesLeft() < 1) {
                        throw new ProtocolException("malformed bit string");
                    }
                    return new BitString(realBufferedSource.readByteString(derReader.getBytesLeft()), realBufferedSource.readByte() & 255);
                case 7:
                    derReader.getClass();
                    return derReader.readUtf8String();
                case 8:
                    derReader.getClass();
                    return null;
                default:
                    derReader.getClass();
                    return derReader.readUtf8String();
            }
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public void encode(Latch latch, Object obj) {
            switch (this.$r8$classId) {
                case 6:
                    BitString bitString = (BitString) obj;
                    latch.getClass();
                    bitString.getClass();
                    BufferedSink sink = latch.sink();
                    sink.writeByte(bitString.unusedBitsCount);
                    sink.write(bitString.byteString);
                    break;
                case 7:
                    String str = (String) obj;
                    latch.getClass();
                    str.getClass();
                    latch.sink().writeUtf8(str);
                    break;
                case 8:
                    latch.getClass();
                    break;
                default:
                    String str2 = (String) obj;
                    latch.getClass();
                    str2.getClass();
                    latch.sink().writeUtf8(str2);
                    break;
            }
        }

        public void error(String str, Object... objArr) {
            L.e(str);
            if (objArr.length == 0) {
                return;
            }
            Object obj = objArr[0];
            if (obj instanceof Exception) {
                L.e((Exception) obj);
                int i = 3;
                char c = StringsKt.contains("org.wikipedia", "beta", false) ? (char) 1 : StringsKt.contains("org.wikipedia", "alpha", false) ? (char) 2 : StringsKt.contains("org.wikipedia", "dev", false) ? (char) 3 : (char) 0;
                if (c == 0 || c == 1) {
                    return;
                }
                Object obj2 = objArr[0];
                if (!(obj2 instanceof HttpStatusException) || ((HttpStatusException) obj2).code == 403) {
                    return;
                }
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Jsoup.getInstance().getMainThreadHandler().post(new MainFragment$$ExternalSyntheticLambda5(i, objArr));
            }
        }

        public void info(String str, Object... objArr) {
            L.LEVEL_I.log(str, null);
        }

        /* JADX WARN: Code restructure failed: missing block: B:96:0x0153, code lost:
        
            if (kotlinx.coroutines.AwaitKt.withContext(r13, r4, r3) == r11) goto L31;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x025b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x02df  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0347  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0391  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0233  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x031e -> B:14:0x0323). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0347 -> B:20:0x0368). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x035c -> B:20:0x0368). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object search(java.lang.String r21, java.lang.String r22, org.wikipedia.Constants.InvokeSource r23, java.lang.Integer r24, int r25, boolean r26, java.util.List r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
            /*
                Method dump skipped, instructions count: 947
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.Companion.search(java.lang.String, java.lang.String, org.wikipedia.Constants$InvokeSource, java.lang.Integer, int, boolean, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public synchronized void threadExiting(MapLibreVulkanSurfaceView.VulkanThread vulkanThread) {
            vulkanThread.exited = true;
            notifyAll();
        }

        public void warn(String str, Object... objArr) {
            L.LEVEL_W.log(str, null);
        }

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }

        public static Intent newIntent$default(Companion companion, Context context, PageTitle pageTitle, int i, long j, long j2, Constants.InvokeSource invokeSource, int i2) {
            if ((i2 & 8) != 0) {
                j = -1;
            }
            if ((i2 & 32) != 0) {
                invokeSource = Constants.InvokeSource.DIFF_ACTIVITY;
            }
            context.getClass();
            pageTitle.getClass();
            invokeSource.getClass();
            Intent putExtra = new Intent(context, (Class<?>) ArticleEditDetailsActivity.class).putExtra("articleTitle", pageTitle).putExtra("pageId", i).putExtra("revisionFrom", j).putExtra("revisionTo", j2).putExtra("invokeSource", invokeSource);
            putExtra.getClass();
            return putExtra;
        }
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2) {
        byteString.getClass();
        return byteString.rangeEquals(0, i, i2, this.data);
    }
}
