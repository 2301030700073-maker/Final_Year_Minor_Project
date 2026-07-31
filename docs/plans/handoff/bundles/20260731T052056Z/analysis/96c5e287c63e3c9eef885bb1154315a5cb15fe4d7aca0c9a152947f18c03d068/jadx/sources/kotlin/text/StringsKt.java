package kotlin.text;

import androidx.compose.animation.core.Animation;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.room.Room;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexingIterable;
import kotlin.io.FileTreeWalk;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* loaded from: classes.dex */
public abstract class StringsKt extends StringsKt__StringsJVMKt {
    public static boolean contains(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (charSequence2 instanceof String) {
            if (indexOf$default(charSequence, (String) charSequence2, 0, z, 2) >= 0) {
                return true;
            }
        } else if (indexOf$StringsKt__StringsKt(charSequence, charSequence2, 0, charSequence.length(), z, false) >= 0) {
            return true;
        }
        return false;
    }

    public static boolean contains$default(CharSequence charSequence, char c) {
        charSequence.getClass();
        return indexOf$default(charSequence, c, 0, 2) >= 0;
    }

    public static boolean endsWith$default(CharSequence charSequence, String str) {
        return charSequence instanceof String ? StringsKt__StringsJVMKt.endsWith((String) charSequence, str, false) : regionMatchesImpl(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static int indexOf(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        return (z || !(charSequence instanceof String)) ? indexOf$StringsKt__StringsKt(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    public static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgression;
        if (z2) {
            charSequence.getClass();
            int length = charSequence.length() - 1;
            if (i > length) {
                i = length;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            intProgression = new IntProgression(i, i2, -1);
        } else {
            if (i < 0) {
                i = 0;
            }
            int length2 = charSequence.length();
            if (i2 > length2) {
                i2 = length2;
            }
            intProgression = new IntRange(i, i2, 1);
        }
        boolean z3 = charSequence instanceof String;
        int i3 = intProgression.step;
        int i4 = intProgression.last;
        int i5 = intProgression.first;
        if (!z3 || !(charSequence2 instanceof String)) {
            boolean z4 = z;
            if ((i3 > 0 && i5 <= i4) || (i3 < 0 && i4 <= i5)) {
                while (true) {
                    CharSequence charSequence3 = charSequence;
                    CharSequence charSequence4 = charSequence2;
                    boolean z5 = z4;
                    z4 = z5;
                    if (!regionMatchesImpl(charSequence4, 0, charSequence3, i5, charSequence2.length(), z5)) {
                        if (i5 == i4) {
                            break;
                        }
                        i5 += i3;
                        charSequence2 = charSequence4;
                        charSequence = charSequence3;
                    } else {
                        return i5;
                    }
                }
            }
        } else if ((i3 > 0 && i5 <= i4) || (i3 < 0 && i4 <= i5)) {
            int i6 = i5;
            while (true) {
                String str = (String) charSequence2;
                boolean z6 = z;
                if (!StringsKt__StringsJVMKt.regionMatches(0, i6, str.length(), str, (String) charSequence, z6)) {
                    if (i6 == i4) {
                        break;
                    }
                    i6 += i3;
                    z = z6;
                } else {
                    return i6;
                }
            }
        }
        return -1;
    }

    public static int indexOf$default(CharSequence charSequence, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        charSequence.getClass();
        return !(charSequence instanceof String) ? indexOfAny(charSequence, new char[]{c}, i, false) : ((String) charSequence).indexOf(c, i);
    }

    public static final int indexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        charSequence.getClass();
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt___ArraysKt.single(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (UtilsKt.equals(c, charAt, z)) {
                    return i;
                }
            }
            if (i == length) {
                return -1;
            }
            i++;
        }
    }

    public static boolean isBlank(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!UtilsKt.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static char last(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            return charSequence.charAt(charSequence.length() - 1);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("Char sequence is empty.");
        return (char) 0;
    }

    public static int lastIndexOf$default(CharSequence charSequence, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = charSequence.length() - 1;
        }
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c, i);
        }
        char[] cArr = {c};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(ArraysKt___ArraysKt.single(cArr), i);
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            i = length;
        }
        while (-1 < i) {
            if (UtilsKt.equals(cArr[0], charSequence.charAt(i), false)) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static List lines(CharSequence charSequence) {
        LinesIterator linesIterator = new LinesIterator(charSequence);
        if (!linesIterator.hasNext()) {
            return EmptyList.INSTANCE;
        }
        Object next = linesIterator.next();
        if (!linesIterator.hasNext()) {
            return Room.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (linesIterator.hasNext()) {
            arrayList.add(linesIterator.next());
        }
        return arrayList;
    }

    public static String padStart(int i, String str) {
        CharSequence charSequence;
        str.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append((CharSequence) str);
            charSequence = sb;
        }
        return charSequence.toString();
    }

    public static FileTreeWalk rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr) {
        return new FileTreeWalk(charSequence, new HintHandler$$ExternalSyntheticLambda0(26, cArr));
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!UtilsKt.equals(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String removePrefix(CharSequence charSequence, String str) {
        CharSequence charSequence2;
        String str2;
        boolean regionMatchesImpl;
        str.getClass();
        if (charSequence instanceof String) {
            regionMatchesImpl = StringsKt__StringsJVMKt.startsWith(str, (String) charSequence, false);
            charSequence2 = charSequence;
            str2 = str;
        } else {
            charSequence2 = charSequence;
            str2 = str;
            regionMatchesImpl = regionMatchesImpl(str2, 0, charSequence2, 0, charSequence.length(), false);
        }
        return regionMatchesImpl ? str2.substring(charSequence2.length()) : str2;
    }

    public static StringBuilder replaceRange(CharSequence charSequence, int i, int i2, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < i) {
            Gson$$ExternalSyntheticBUOutline0.m(i2, i, ") is less than start index (", "End index (");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence, 0, i);
        sb.append(charSequence2);
        sb.append(charSequence, i2, charSequence.length());
        return sb;
    }

    public static final List split$StringsKt__StringsKt(CharSequence charSequence, String str) {
        int indexOf = indexOf(charSequence, str, 0, false);
        if (indexOf == -1) {
            return Room.listOf(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int i = 0;
        do {
            arrayList.add(charSequence.subSequence(i, indexOf).toString());
            i = str.length() + indexOf;
            indexOf = indexOf(charSequence, str, i, false);
        } while (indexOf != -1);
        arrayList.add(charSequence.subSequence(i, charSequence.length()).toString());
        return arrayList;
    }

    public static List split$default(CharSequence charSequence, String[] strArr) {
        charSequence.getClass();
        int i = 0;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return split$StringsKt__StringsKt(charSequence, str);
            }
        }
        List asList = Arrays.asList(strArr);
        asList.getClass();
        FileTreeWalk fileTreeWalk = new FileTreeWalk(charSequence, new StringsKt__StringsKt$$ExternalSyntheticLambda2(asList, i));
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(new IndexingIterable(4, fileTreeWalk), 10));
        Iterator it = fileTreeWalk.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    public static final String substring(CharSequence charSequence, IntRange intRange) {
        charSequence.getClass();
        intRange.getClass();
        return charSequence.subSequence(intRange.first, intRange.last + 1).toString();
    }

    public static String substringAfter(String str, String str2, String str3) {
        str2.getClass();
        int indexOf$default = indexOf$default(str, str2, 0, false, 6);
        return indexOf$default == -1 ? str3 : str.substring(str2.length() + indexOf$default, str.length());
    }

    public static String substringAfter$default(String str, char c) {
        str.getClass();
        str.getClass();
        int indexOf$default = indexOf$default(str, c, 0, 6);
        return indexOf$default == -1 ? str : str.substring(indexOf$default + 1, str.length());
    }

    public static String substringAfterLast(char c, String str, String str2) {
        str.getClass();
        str2.getClass();
        int lastIndexOf$default = lastIndexOf$default(str, c, 0, 6);
        return lastIndexOf$default == -1 ? str2 : str.substring(lastIndexOf$default + 1, str.length());
    }

    public static String substringBefore$default(String str, char c) {
        str.getClass();
        str.getClass();
        int indexOf$default = indexOf$default(str, c, 0, 6);
        return indexOf$default == -1 ? str : str.substring(0, indexOf$default);
    }

    public static String substringBeforeLast$default(String str, char c) {
        int lastIndexOf$default = lastIndexOf$default(str, c, 0, 6);
        return lastIndexOf$default == -1 ? str : str.substring(0, lastIndexOf$default);
    }

    public static String take(int i, String str) {
        str.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(0, i);
    }

    public static CharSequence trim(CharSequence charSequence) {
        charSequence.getClass();
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean isWhitespace = UtilsKt.isWhitespace(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!isWhitespace) {
                    break;
                }
                length--;
            } else if (isWhitespace) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static String substringBefore$default(String str, String str2) {
        str.getClass();
        str.getClass();
        int indexOf$default = indexOf$default(str, str2, 0, false, 6);
        return indexOf$default == -1 ? str : str.substring(0, indexOf$default);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, str, i, z);
    }

    public static boolean endsWith$default(CharSequence charSequence, char c) {
        charSequence.getClass();
        return charSequence.length() > 0 && UtilsKt.equals(charSequence.charAt(charSequence.length() - 1), c, false);
    }

    public static int lastIndexOf$default(int i, String str, String str2) {
        int i2;
        if ((i & 2) != 0) {
            str.getClass();
            i2 = str.length() - 1;
        } else {
            i2 = 0;
        }
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, i2);
    }

    public static List split$default(CharSequence charSequence, char[] cArr) {
        charSequence.getClass();
        if (cArr.length == 1) {
            return split$StringsKt__StringsKt(charSequence, String.valueOf(cArr[0]));
        }
        FileTreeWalk rangesDelimitedBy$StringsKt__StringsKt$default = rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(new IndexingIterable(4, rangesDelimitedBy$StringsKt__StringsKt$default), 10));
        Iterator it = rangesDelimitedBy$StringsKt__StringsKt$default.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }
}
