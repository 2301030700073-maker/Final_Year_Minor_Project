package net.thunderbird.core.common.net;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HostNameUtils {
    public static final Regex HOST_PATTERN = new Regex("(([a-z0-9]|[a-z0-9][a-z0-9\\-]{0,61}[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]{0,61}[a-z0-9])\\.?", 0);
    public static final Regex IPV4_COMPONENT_PATTERN = new Regex("(0|([1-9][0-9]{0,2}))");
    public static final Regex IPV6_COMPONENT_PATTERN = new Regex("[0-9a-f]{1,4}");

    public static String isLegalHostNameOrIP(String str) {
        if (str == null) {
            return null;
        }
        String isLegalIPv4Address = isLegalIPv4Address(str);
        if (isLegalIPv4Address == null) {
            isLegalIPv4Address = isLegalIPv6Address(str);
        }
        if (isLegalIPv4Address != null) {
            return isLegalIPv4Address;
        }
        if (str.length() > 255 || !HOST_PATTERN.matches(str)) {
            return null;
        }
        return str;
    }

    public static String isLegalIPv4Address(String str) {
        Integer num;
        str.getClass();
        List<String> split$default = StringsKt.split$default(str, new String[]{"."}, 6);
        if (split$default.size() == 4) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
            for (String str2 : split$default) {
                if (IPV4_COMPONENT_PATTERN.matches(str2)) {
                    CharsKt__CharKt.checkRadix(10);
                    int parseInt = Integer.parseInt(str2, 10);
                    num = Integer.valueOf(parseInt);
                    if (parseInt >= 0 && parseInt < 256) {
                        arrayList.add(num);
                    }
                }
                num = null;
                arrayList.add(num);
            }
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((Integer) it.next()) == null) {
                        break;
                    }
                }
            }
            Integer num2 = (Integer) CollectionsKt.first((List) arrayList);
            if (num2 != null && num2.intValue() == 0) {
                break;
            }
            return str;
        }
        return null;
    }

    public static String isLegalIPv6Address(String str) {
        int parseInt;
        str.getClass();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List<String> split$default = StringsKt.split$default(lowerCase, new String[]{":"}, 6);
        if (split$default.size() < 3) {
            return null;
        }
        String isLegalIPv4Address = isLegalIPv4Address((String) CollectionsKt.last(split$default));
        if (isLegalIPv4Address != null) {
            List<String> split$default2 = StringsKt.split$default(isLegalIPv4Address, new String[]{"."}, 6);
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default2, 10));
            for (String str2 : split$default2) {
                CharsKt__CharKt.checkRadix(10);
                arrayList.add(Integer.valueOf(Integer.parseInt(str2, 10)));
            }
            int intValue = (((Number) arrayList.get(0)).intValue() << 8) | ((Number) arrayList.get(1)).intValue();
            CharsKt__CharKt.checkRadix(16);
            String num = Integer.toString(intValue, 16);
            num.getClass();
            int intValue2 = ((Number) arrayList.get(3)).intValue() | (((Number) arrayList.get(2)).intValue() << 8);
            CharsKt__CharKt.checkRadix(16);
            String num2 = Integer.toString(intValue2, 16);
            num2.getClass();
            split$default = CollectionsKt.plus(CollectionsKt.plus(split$default.subList(0, split$default.size() - 1), num), num2);
        }
        int size = split$default.size() - 1;
        int i = -1;
        for (int i2 = 1; i2 < size; i2++) {
            if (Intrinsics.areEqual(split$default.get(i2), "")) {
                if (i != -1) {
                    return null;
                }
                i = i2;
            }
        }
        if (i != -1) {
            ListBuilder listBuilder = new ListBuilder(8);
            for (int i3 = 0; i3 < i; i3++) {
                listBuilder.add(split$default.get(i3));
            }
            int size2 = 9 - split$default.size();
            for (int i4 = 0; i4 < size2; i4++) {
                listBuilder.add("0");
            }
            int i5 = i + 1;
            int size3 = split$default.size() - 1;
            if (i5 <= size3) {
                while (true) {
                    listBuilder.add(split$default.get(i5));
                    if (i5 == size3) {
                        break;
                    }
                    i5++;
                }
            }
            split$default = IntOffsetKt.build(listBuilder);
        }
        if (split$default.size() != 8) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
        for (String str3 : split$default) {
            if (Intrinsics.areEqual(str3, "")) {
                parseInt = 0;
            } else {
                if (!IPV6_COMPONENT_PATTERN.matches(str3)) {
                    return null;
                }
                CharsKt__CharKt.checkRadix(16);
                parseInt = Integer.parseInt(str3, 16);
            }
            arrayList2.add(Integer.valueOf(parseInt));
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            if (((Number) it.next()).intValue() != 0) {
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    int intValue3 = ((Number) it2.next()).intValue();
                    CharsKt__CharKt.checkRadix(16);
                    String num3 = Integer.toString(intValue3, 16);
                    num3.getClass();
                    arrayList3.add(StringsKt.padStart(num3, 4));
                }
                return CollectionsKt.joinToString$default(arrayList3, ":", null, null, null, 62);
            }
        }
        return null;
    }
}
