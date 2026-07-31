package okio;

import android.util.Log;
import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.math.MathKt;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import okhttp3.Protocol;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import org.jsoup.Jsoup;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable {
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] data;
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
        int size$okio = byteString.getSize$okio();
        byteString.getClass();
        byteString2.getClass();
        return byteString.lastIndexOf(size$okio, byteString2.internalArray$okio());
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(readInt, "byteCount < 0: "));
            return;
        }
        byte[] bArr = new byte[readInt];
        int i = 0;
        while (i < readInt) {
            int read = objectInputStream.read(bArr, i, readInt - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
        ByteString byteString = new ByteString(bArr);
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    public static ByteString substring$default(ByteString byteString, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = byteString.getSize$okio();
        }
        return byteString.substring(i, i2);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public String base64() {
        byte[] bArr = this.data;
        byte[] bArr2 = Base64.BASE64;
        bArr.getClass();
        bArr2.getClass();
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i + 2;
            byte b2 = bArr[i + 1];
            i += 3;
            byte b3 = bArr[i3];
            bArr3[i2] = bArr2[(b & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr2[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr2[b3 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b4 = bArr[i];
            bArr3[i2] = bArr2[(b4 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[(b4 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b5 = bArr[i];
            byte b6 = bArr[i5];
            bArr3[i2] = bArr2[(b5 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr3[i2 + 2] = bArr2[(b6 & 15) << 2];
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
            if (size$okio == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public final byte[] getData$okio() {
        return this.data;
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
        int length = this.data.length - bArr.length;
        int max = Math.max(i, 0);
        if (max > length) {
            return -1;
        }
        while (!UStringsKt.arrayRangeEquals(this.data, max, 0, bArr, bArr.length)) {
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

    public int lastIndexOf(int i, byte[] bArr) {
        bArr.getClass();
        for (int min = Math.min(i, this.data.length - bArr.length); -1 < min; min--) {
            if (UStringsKt.arrayRangeEquals(this.data, min, 0, bArr, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        bArr.getClass();
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && UStringsKt.arrayRangeEquals(bArr2, i, i2, bArr, i3);
    }

    public String string(Charset charset) {
        charset.getClass();
        return new String(this.data, charset);
    }

    public ByteString substring(int i, int i2) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("beginIndex < 0");
            return null;
        }
        byte[] bArr = this.data;
        if (i2 > bArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(new StringBuilder("endIndex > length("), this.data.length, ')'));
            return null;
        }
        if (i2 - i >= 0) {
            return (i == 0 && i2 == bArr.length) ? this : new ByteString(ArraysKt.copyOfRange(bArr, i, i2));
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("endIndex < beginIndex");
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

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00f6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0130, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0134, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00d6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0173, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x017a, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x016c, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x01aa, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01ad, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x01b0, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0140, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01b3, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0096, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c4, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0085, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00fe, code lost:
    
        if (r6 == 64) goto L180;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 620
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
        buffer.write(i, this.data);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion implements Consumer {
        public final /* synthetic */ int $r8$classId;

        public Companion(App app) {
            this.$r8$classId = 9;
        }

        public static final String access$binarySearch(ByteString byteString, ByteString[] byteStringArr, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            ByteString byteString2 = PublicSuffixDatabase.WILDCARD_LABEL;
            int size$okio = byteString.getSize$okio();
            int i5 = 0;
            while (i5 < size$okio) {
                int i6 = (i5 + size$okio) / 2;
                while (i6 > -1 && byteString.internalGet$okio(i6) != 10) {
                    i6--;
                }
                int i7 = i6 + 1;
                int i8 = 1;
                while (true) {
                    i2 = i7 + i8;
                    if (byteString.internalGet$okio(i2) == 10) {
                        break;
                    }
                    i8++;
                }
                int i9 = i2 - i7;
                int i10 = i;
                boolean z2 = false;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte internalGet$okio = byteStringArr[i10].internalGet$okio(i11);
                        byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                        int i13 = internalGet$okio & 255;
                        z = z2;
                        i3 = i13;
                    }
                    byte internalGet$okio2 = byteString.internalGet$okio(i7 + i12);
                    byte[] bArr2 = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                    i4 = i3 - (internalGet$okio2 & 255);
                    if (i4 != 0) {
                        break;
                    }
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (byteStringArr[i10].getSize$okio() != i11) {
                        z2 = z;
                    } else {
                        if (i10 == byteStringArr.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i14 = i9 - i12;
                        int size$okio2 = byteStringArr[i10].getSize$okio() - i11;
                        int length = byteStringArr.length;
                        for (int i15 = i10 + 1; i15 < length; i15++) {
                            size$okio2 += byteStringArr[i15].getSize$okio();
                        }
                        if (size$okio2 >= i14) {
                            if (size$okio2 <= i14) {
                                return byteString.substring(i7, i9 + i7).string(Charsets.UTF_8);
                            }
                        }
                    }
                    i5 = i2 + 1;
                }
                size$okio = i6;
            }
            return null;
        }

        public static final boolean access$keepPath(Path path) {
            Path path2 = ResourceFileSystem.ROOT;
            return !StringsKt__StringsJVMKt.endsWith(path.name(), ".class", true);
        }

        public static ArrayList alpnProtocolNames(List list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).toString());
            }
            return arrayList2;
        }

        public static byte[] concatLengthPrefixed(List list) {
            list.getClass();
            Buffer buffer = new Buffer();
            Iterator it = alpnProtocolNames(list).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                buffer.m714writeByte(str.length());
                buffer.m717writeUtf8(str);
            }
            return buffer.readByteArray(buffer.size);
        }

        public static ByteString decodeHex(String str) {
            if (str.length() % 2 != 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) "Unexpected hex string: ".concat(str));
                return null;
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (ZipFilesKt.access$decodeHexDigit(str.charAt(i2 + 1)) + (ZipFilesKt.access$decodeHexDigit(str.charAt(i2)) << 4));
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

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Object obj) {
            List<Throwable> listOf;
            Throwable cause;
            switch (this.$r8$classId) {
                case 1:
                    MathKt.onError(new OnErrorNotImplementedException((Throwable) obj));
                    break;
                default:
                    Throwable th = (Throwable) obj;
                    th.getClass();
                    Log.e(App.TAG, "RxJavaPlugins.ErrorHandler called with -> : throwable = [" + th.getClass().getName() + "]");
                    UndeliverableException undeliverableException = th instanceof UndeliverableException ? (UndeliverableException) th : null;
                    if (undeliverableException != null && (cause = undeliverableException.getCause()) != null) {
                        th = cause;
                    }
                    CompositeException compositeException = th instanceof CompositeException ? (CompositeException) th : null;
                    if (compositeException == null || (listOf = compositeException.getExceptions()) == null) {
                        listOf = Jsoup.listOf(th);
                    }
                    for (Throwable th2 : listOf) {
                        th2.getClass();
                        if (CharsKt.hasCause(th2, true, (Class[]) Arrays.copyOf(new Class[]{IOException.class, SocketException.class, InterruptedException.class, InterruptedIOException.class}, 4))) {
                            break;
                        } else if (CharsKt.hasCause(th2, true, (Class[]) Arrays.copyOf(new Class[]{NullPointerException.class, IllegalArgumentException.class, OnErrorNotImplementedException.class, MissingBackpressureException.class, IllegalStateException.class}, 5))) {
                            Thread.currentThread().getUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th2);
                            break;
                        }
                    }
                    Log.e(App.TAG, "RxJavaPlugin: Undeliverable Exception received: ", th);
                    break;
            }
        }

        public Integer fuzzyScore(CharSequence charSequence, CharSequence charSequence2) {
            Locale locale = Locale.ROOT;
            if (charSequence == null || charSequence2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CharSequences must not be null");
                return null;
            }
            String lowerCase = charSequence.toString().toLowerCase(locale);
            String lowerCase2 = charSequence2.toString().toLowerCase(locale);
            int i = Integer.MIN_VALUE;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < lowerCase2.length(); i4++) {
                char charAt = lowerCase2.charAt(i4);
                boolean z = false;
                while (i3 < lowerCase.length() && !z) {
                    if (charAt == lowerCase.charAt(i3)) {
                        int i5 = i2 + 1;
                        if (i + 1 == i3) {
                            i5 = i2 + 3;
                        }
                        i2 = i5;
                        z = true;
                        i = i3;
                    }
                    i3++;
                }
            }
            return Integer.valueOf(i2);
        }

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2) {
        byteString.getClass();
        return byteString.rangeEquals(0, this.data, i, i2);
    }
}
