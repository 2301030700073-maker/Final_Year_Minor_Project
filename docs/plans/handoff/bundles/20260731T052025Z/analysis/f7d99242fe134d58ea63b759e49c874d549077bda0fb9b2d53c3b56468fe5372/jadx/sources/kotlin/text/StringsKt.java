package kotlin.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexingIterable;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.sequences.TakeWhileSequence;
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
        charSequence.getClass();
        return charSequence instanceof String ? StringsKt__StringsJVMKt.endsWith((String) charSequence, str, false) : regionMatchesImpl(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static int getLastIndex(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence.length() - 1;
    }

    public static final int indexOf(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        return (z || !(charSequence instanceof String)) ? indexOf$StringsKt__StringsKt(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    public static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgression;
        if (z2) {
            int lastIndex = getLastIndex(charSequence);
            if (i > lastIndex) {
                i = lastIndex;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            intProgression = new IntProgression(i, i2, -1);
        } else {
            if (i < 0) {
                i = 0;
            }
            int length = charSequence.length();
            if (i2 > length) {
                i2 = length;
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
        char c = 0;
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Array is empty.");
            } else if (length == 1) {
                c = cArr[0];
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("Array has more than one element.");
            }
            return ((String) charSequence).indexOf(c, i);
        }
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length() - 1;
        if (i > length2) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            for (char c2 : cArr) {
                if (CharsKt__CharKt.equals(c2, charAt, z)) {
                    return i;
                }
            }
            if (i == length2) {
                return -1;
            }
            i++;
        }
    }

    public static boolean isBlank(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!CharsKt__CharKt.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static char last(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            return charSequence.charAt(charSequence.length() - 1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Char sequence is empty.");
        return (char) 0;
    }

    public static int lastIndexOf$default(int i, CharSequence charSequence, String str) {
        int lastIndex = (i & 2) != 0 ? getLastIndex(charSequence) : 0;
        charSequence.getClass();
        str.getClass();
        return !(charSequence instanceof String) ? indexOf$StringsKt__StringsKt(charSequence, str, lastIndex, 0, false, true) : ((String) charSequence).lastIndexOf(str, lastIndex);
    }

    public static List lines(String str) {
        LinesIterator linesIterator = new LinesIterator(str);
        if (!linesIterator.hasNext()) {
            return EmptyList.INSTANCE;
        }
        Object next = linesIterator.next();
        if (!linesIterator.hasNext()) {
            return IntOffsetKt.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (linesIterator.hasNext()) {
            arrayList.add(linesIterator.next());
        }
        return arrayList;
    }

    public static String padEnd(String str, int i) {
        CharSequence charSequence;
        str.getClass();
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            sb.append((CharSequence) str);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(' ');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            charSequence = sb;
        }
        return charSequence.toString();
    }

    public static String padStart(String str, int i) {
        CharSequence charSequence;
        str.getClass();
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Desired length ", " is less than zero."));
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

    public static DelimitedRangesSequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i) {
        requireNonNegativeLimit(i);
        List asList = Arrays.asList(strArr);
        asList.getClass();
        return new DelimitedRangesSequence(charSequence, i, new StringsKt__StringsKt$$ExternalSyntheticLambda0(1, asList));
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt__CharKt.equals(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String removePrefix(String str, String str2) {
        str.getClass();
        return StringsKt__StringsJVMKt.startsWith(str, str2, false) ? str.substring(str2.length()) : str;
    }

    public static String removeSuffix(String str, String str2) {
        str.getClass();
        return endsWith$default(str, str2) ? str.substring(0, str.length() - str2.length()) : str;
    }

    public static final void requireNonNegativeLimit(int i) {
        if (i >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Limit must be non-negative, but was ", i));
    }

    public static final List split$StringsKt__StringsKt(int i, CharSequence charSequence, String str) {
        requireNonNegativeLimit(i);
        int indexOf = indexOf(charSequence, str, 0, false);
        if (indexOf == -1 || i == 1) {
            return IntOffsetKt.listOf(charSequence.toString());
        }
        boolean z = i > 0;
        int i2 = 10;
        if (z && i <= 10) {
            i2 = i;
        }
        ArrayList arrayList = new ArrayList(i2);
        int i3 = 0;
        do {
            arrayList.add(charSequence.subSequence(i3, indexOf).toString());
            i3 = str.length() + indexOf;
            if (z && arrayList.size() == i - 1) {
                break;
            }
            indexOf = indexOf(charSequence, str, i3, false);
        } while (indexOf != -1);
        arrayList.add(charSequence.subSequence(i3, charSequence.length()).toString());
        return arrayList;
    }

    public static List split$default(CharSequence charSequence, String[] strArr, int i) {
        int i2 = (i & 4) != 0 ? 0 : 2;
        charSequence.getClass();
        int i3 = 1;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() > 0) {
                return split$StringsKt__StringsKt(i2, charSequence, str);
            }
        }
        IndexingIterable indexingIterable = new IndexingIterable(i3, rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, i2));
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(indexingIterable, 10));
        Iterator it = indexingIterable.iterator();
        while (true) {
            DelimitedRangesSequence$iterator$1 delimitedRangesSequence$iterator$1 = (DelimitedRangesSequence$iterator$1) it;
            if (!delimitedRangesSequence$iterator$1.hasNext()) {
                return arrayList;
            }
            arrayList.add(substring(charSequence, (IntRange) delimitedRangesSequence$iterator$1.next()));
        }
    }

    public static TakeWhileSequence splitToSequence$default(CharSequence charSequence, String[] strArr) {
        charSequence.getClass();
        return new TakeWhileSequence(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0), new StringsKt__StringsKt$$ExternalSyntheticLambda2(0, charSequence), 2);
    }

    public static final String substring(CharSequence charSequence, IntRange intRange) {
        charSequence.getClass();
        intRange.getClass();
        return charSequence.subSequence(intRange.first, intRange.last + 1).toString();
    }

    public static String substringAfter$default(String str, String str2) {
        str.getClass();
        str.getClass();
        int indexOf$default = indexOf$default(str, str2, 0, false, 6);
        return indexOf$default == -1 ? str : str.substring(str2.length() + indexOf$default, str.length());
    }

    public static String substringAfterLast(char c, String str, String str2) {
        int lastIndexOf$default = lastIndexOf$default(str, c, 0, 6);
        return lastIndexOf$default == -1 ? str2 : str.substring(lastIndexOf$default + 1, str.length());
    }

    public static String substringBefore$default(char c, String str) {
        str.getClass();
        str.getClass();
        int indexOf$default = indexOf$default(str, c, 0, 6);
        return indexOf$default == -1 ? str : str.substring(0, indexOf$default);
    }

    public static String substringBeforeLast$default(char c, String str) {
        str.getClass();
        str.getClass();
        int lastIndexOf$default = lastIndexOf$default(str, c, 0, 6);
        return lastIndexOf$default == -1 ? str : str.substring(0, lastIndexOf$default);
    }

    public static String take(String str, int i) {
        str.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Requested character count ", " is less than zero."));
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
            boolean isWhitespace = CharsKt__CharKt.isWhitespace(charSequence.charAt(!z ? i : length));
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

    public static boolean endsWith$default(char c, String str) {
        str.getClass();
        return str.length() > 0 && CharsKt__CharKt.equals(str.charAt(str.length() - 1), c, false);
    }

    public static int lastIndexOf$default(String str, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(str);
        }
        str.getClass();
        return str.lastIndexOf(c, i);
    }

    public static List split$default(String str, char[] cArr) {
        str.getClass();
        int i = 0;
        int i2 = 1;
        if (cArr.length == 1) {
            return split$StringsKt__StringsKt(0, str, String.valueOf(cArr[0]));
        }
        requireNonNegativeLimit(0);
        IndexingIterable indexingIterable = new IndexingIterable(i2, new DelimitedRangesSequence(str, 0, new StringsKt__StringsKt$$ExternalSyntheticLambda0(i, cArr)));
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(indexingIterable, 10));
        Iterator it = indexingIterable.iterator();
        while (true) {
            DelimitedRangesSequence$iterator$1 delimitedRangesSequence$iterator$1 = (DelimitedRangesSequence$iterator$1) it;
            if (!delimitedRangesSequence$iterator$1.hasNext()) {
                return arrayList;
            }
            arrayList.add(substring(str, (IntRange) delimitedRangesSequence$iterator$1.next()));
        }
    }
}
