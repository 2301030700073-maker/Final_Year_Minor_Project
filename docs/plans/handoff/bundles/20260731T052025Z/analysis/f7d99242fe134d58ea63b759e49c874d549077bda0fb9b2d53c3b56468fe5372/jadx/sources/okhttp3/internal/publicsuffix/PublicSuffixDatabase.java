package okhttp3.internal.publicsuffix;

import androidx.collection.internal.Lock;
import androidx.compose.ui.unit.IntOffsetKt;
import com.eygraber.uri.Uri;
import com.jcraft.jzlib.Adler32;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    public static final List PREVAILING_RULE;
    public static final ByteString WILDCARD_LABEL;
    public static final PublicSuffixDatabase instance;
    public final Uri.Builder publicSuffixList;

    static {
        ByteString byteString = ByteString.EMPTY;
        WILDCARD_LABEL = new ByteString(Arrays.copyOf(new byte[]{42}, 1));
        PREVAILING_RULE = IntOffsetKt.listOf("*");
        instance = new PublicSuffixDatabase(new Uri.Builder(8));
    }

    public PublicSuffixDatabase(Uri.Builder builder) {
        this.publicSuffixList = builder;
    }

    public static List splitDomain(String str) {
        List split$default = StringsKt.split$default(str, new char[]{'.'});
        return Intrinsics.areEqual(CollectionsKt.last(split$default), "") ? CollectionsKt.dropLast(split$default) : split$default;
    }

    public final String getEffectiveTldPlusOne(String str) {
        String str2;
        String str3;
        String str4;
        List list;
        int size;
        int size2;
        str.getClass();
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List splitDomain = splitDomain(unicode);
        Uri.Builder builder = this.publicSuffixList;
        AtomicBoolean atomicBoolean = (AtomicBoolean) builder.opaquePart;
        if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
            try {
                ((CountDownLatch) builder.authority).await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        try {
                            builder.readTheList();
                            break;
                        } catch (InterruptedIOException unused2) {
                            Thread.interrupted();
                            z = true;
                        }
                    } catch (IOException e) {
                        builder.path = e;
                        if (z) {
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (((ByteString) builder.query) == null) {
            StringBuilder sb = new StringBuilder("Unable to load ");
            sb.append(builder.scheme);
            sb.append(" resource.");
            IllegalStateException illegalStateException = new IllegalStateException(sb.toString());
            illegalStateException.initCause((IOException) builder.path);
            throw illegalStateException;
        }
        int size3 = splitDomain.size();
        ByteString[] byteStringArr = new ByteString[size3];
        for (int i = 0; i < size3; i++) {
            ByteString byteString = ByteString.EMPTY;
            byteStringArr[i] = Adler32.encodeUtf8((String) splitDomain.get(i));
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size3) {
                str2 = null;
                break;
            }
            ByteString byteString2 = (ByteString) builder.query;
            if (byteString2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bytes");
                throw null;
            }
            str2 = Lock.access$binarySearch(byteString2, byteStringArr, i2);
            if (str2 != null) {
                break;
            }
            i2++;
        }
        if (size3 > 1) {
            ByteString[] byteStringArr2 = (ByteString[]) byteStringArr.clone();
            int length = byteStringArr2.length - 1;
            for (int i3 = 0; i3 < length; i3++) {
                byteStringArr2[i3] = WILDCARD_LABEL;
                ByteString byteString3 = (ByteString) builder.query;
                if (byteString3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bytes");
                    throw null;
                }
                str3 = Lock.access$binarySearch(byteString3, byteStringArr2, i3);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            int i4 = size3 - 1;
            for (int i5 = 0; i5 < i4; i5++) {
                ByteString byteString4 = (ByteString) builder.fragment;
                if (byteString4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("exceptionBytes");
                    throw null;
                }
                str4 = Lock.access$binarySearch(byteString4, byteStringArr, i5);
                if (str4 != null) {
                    break;
                }
            }
        }
        str4 = null;
        if (str4 != null) {
            list = StringsKt.split$default("!".concat(str4), new char[]{'.'});
        } else if (str2 == null && str3 == null) {
            list = PREVAILING_RULE;
        } else {
            List list2 = EmptyList.INSTANCE;
            List split$default = str2 != null ? StringsKt.split$default(str2, new char[]{'.'}) : list2;
            if (str3 != null) {
                list2 = StringsKt.split$default(str3, new char[]{'.'});
            }
            list = split$default.size() > list2.size() ? split$default : list2;
        }
        if (splitDomain.size() == list.size() && ((String) list.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) list.get(0)).charAt(0) == '!') {
            size = splitDomain.size();
            size2 = list.size();
        } else {
            size = splitDomain.size();
            size2 = list.size() + 1;
        }
        return SequencesKt.joinToString$default(SequencesKt.drop(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, splitDomain(str)), size - size2), ".", 62);
    }
}
