package okhttp3.internal.publicsuffix;

import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    public final SVGAndroidRenderer publicSuffixList;
    public static final ByteString WILDCARD_LABEL = new ByteString(Arrays.copyOf(new byte[]{42}, 1));
    public static final List PREVAILING_RULE = Room.listOf("*");
    public static final PublicSuffixDatabase instance = new PublicSuffixDatabase(new SVGAndroidRenderer(3));

    public PublicSuffixDatabase(SVGAndroidRenderer sVGAndroidRenderer) {
        this.publicSuffixList = sVGAndroidRenderer;
    }

    public static List splitDomain(String str) {
        List split$default = StringsKt.split$default(str, new char[]{'.'});
        return Intrinsics.areEqual(CollectionsKt.last(split$default), "") ? CollectionsKt.dropLast(split$default) : split$default;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008e, code lost:
    
        if (r1 <= 1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
    
        r5 = (okio.ByteString[]) r2.clone();
        r9 = r5.length - 1;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
    
        if (r10 >= r9) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
    
        r5[r10] = okhttp3.internal.publicsuffix.PublicSuffixDatabase.WILDCARD_LABEL;
        r11 = (okio.ByteString) r12.state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
    
        if (r11 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        r11 = org.wikipedia.util.UriUtil.binarySearch(r11, r5, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a9, code lost:
    
        if (r11 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ac, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b4, code lost:
    
        if (r11 == null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b6, code lost:
    
        r1 = r1 - 1;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b8, code lost:
    
        if (r5 >= r1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ba, code lost:
    
        r6 = (okio.ByteString) r12.stateStack;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
    
        if (r6 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c0, code lost:
    
        r6 = org.wikipedia.util.UriUtil.binarySearch(r6, r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
    
        if (r6 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c7, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d3, code lost:
    
        if (r6 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d5, code lost:
    
        r12 = kotlin.text.StringsKt.split$default("!".concat(r6), new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011a, code lost:
    
        if (r0.size() != r12.size()) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0126, code lost:
    
        if (((java.lang.String) r12.get(0)).charAt(0) == '!') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0128, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0133, code lost:
    
        if (((java.lang.String) r12.get(0)).charAt(0) != '!') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0135, code lost:
    
        r0 = r0.size();
        r12 = r12.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x015d, code lost:
    
        return kotlin.sequences.SequencesKt.joinToString$default(kotlin.sequences.SequencesKt.drop(new kotlin.io.LinesSequence(2, splitDomain(r13)), r0 - r12), ".");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013f, code lost:
    
        r0 = r0.size();
        r12 = r12.size() + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00e4, code lost:
    
        if (r8 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e6, code lost:
    
        if (r11 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e8, code lost:
    
        r12 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.PREVAILING_RULE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00eb, code lost:
    
        r1 = kotlin.collections.EmptyList.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ed, code lost:
    
        if (r8 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ef, code lost:
    
        r2 = kotlin.text.StringsKt.split$default(r8, new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f9, code lost:
    
        if (r11 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00fb, code lost:
    
        r1 = kotlin.text.StringsKt.split$default(r11, new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x010b, code lost:
    
        if (r2.size() <= r1.size()) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x010d, code lost:
    
        r12 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x010f, code lost:
    
        r12 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f8, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ca, code lost:
    
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException("exceptionBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00cf, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00d0, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00af, code lost:
    
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException("bytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00b2, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00b3, code lost:
    
        r11 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getEffectiveTldPlusOne(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.getEffectiveTldPlusOne(java.lang.String):java.lang.String");
    }
}
