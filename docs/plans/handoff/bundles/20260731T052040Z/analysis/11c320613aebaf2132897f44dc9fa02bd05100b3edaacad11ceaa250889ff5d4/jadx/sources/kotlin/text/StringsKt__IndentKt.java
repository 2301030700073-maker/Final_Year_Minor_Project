package kotlin.text;

import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.sequences.MergingSequence;
import kotlin.sequences.SequencesKt;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StringsKt__IndentKt extends AppKt {
    public static String prependIndent$default(String str) {
        int i = 0;
        return SequencesKt.joinToString$default(new MergingSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str, i), new StringsKt__IndentKt$$ExternalSyntheticLambda0("    ", i), 2), "\n");
    }

    public static String trimIndent(String str) {
        int i;
        Comparable comparable;
        String str2;
        List lines = StringsKt.lines(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                }
                if (!CharsKt.isWhitespace(str3.charAt(i))) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                i = str3.length();
            }
            arrayList2.add(Integer.valueOf(i));
        }
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int intValue = num != null ? num.intValue() : 0;
        int length2 = str.length();
        lines.size();
        int size = lines.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : lines) {
            int i2 = i + 1;
            if (i < 0) {
                Jsoup.throwIndexOverflow();
                throw null;
            }
            String str4 = (String) obj2;
            if ((i == 0 || i == size) && StringsKt.isBlank(str4)) {
                str2 = null;
            } else {
                str4.getClass();
                if (intValue < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("Requested character count ", intValue, " is less than zero."));
                    return null;
                }
                int length3 = str4.length();
                if (intValue <= length3) {
                    length3 = intValue;
                }
                str2 = str4.substring(length3);
            }
            if (str2 != null) {
                arrayList3.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length2);
        CollectionsKt.joinTo$default(arrayList3, sb, "\n", null, Token.IMPORT);
        return sb.toString();
    }

    public static String trimMargin$default(String str) {
        if (StringsKt.isBlank("|")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("marginPrefix must be non-blank string.");
            return null;
        }
        List lines = StringsKt.lines(str);
        int length = str.length();
        lines.size();
        int size = lines.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : lines) {
            int i2 = i + 1;
            if (i < 0) {
                Jsoup.throwIndexOverflow();
                throw null;
            }
            String str2 = (String) obj;
            if ((i == 0 || i == size) && StringsKt.isBlank(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!CharsKt.isWhitespace(str2.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                String substring = (i3 != -1 && StringsKt__StringsJVMKt.startsWith(i3, str2, "|", false)) ? str2.substring("|".length() + i3) : null;
                if (substring != null) {
                    str2 = substring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        CollectionsKt.joinTo$default(arrayList, sb, "\n", null, Token.IMPORT);
        return sb.toString();
    }
}
