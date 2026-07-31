package com.google.android.exoplayer2.util;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.room.Room;
import com.android.tools.r8.RecordTag;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class ColorParser {
    private static final Map<String, Integer> COLOR_MAP;
    private static final String RGB = "rgb";
    private static final String RGBA = "rgba";
    private static final Pattern RGB_PATTERN = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_INT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_FLOAT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    static {
        HashMap hashMap = new HashMap();
        COLOR_MAP = hashMap;
        RecordTag.m(-984833, hashMap, "aliceblue", -332841, "antiquewhite");
        hashMap.put("aqua", -16711681);
        hashMap.put("aquamarine", -8388652);
        RecordTag.m(-983041, hashMap, "azure", -657956, "beige");
        RecordTag.m(-6972, hashMap, "bisque", -16777216, "black");
        RecordTag.m(-5171, hashMap, "blanchedalmond", -16776961, "blue");
        RecordTag.m(-7722014, hashMap, "blueviolet", -5952982, "brown");
        RecordTag.m(-2180985, hashMap, "burlywood", -10510688, "cadetblue");
        RecordTag.m(-8388864, hashMap, "chartreuse", -2987746, "chocolate");
        RecordTag.m(-32944, hashMap, "coral", -10185235, "cornflowerblue");
        RecordTag.m(-1828, hashMap, "cornsilk", -2354116, "crimson");
        hashMap.put("cyan", -16711681);
        hashMap.put("darkblue", -16777077);
        RecordTag.m(-16741493, hashMap, "darkcyan", -4684277, "darkgoldenrod");
        hashMap.put("darkgray", -5658199);
        hashMap.put("darkgreen", -16751616);
        hashMap.put("darkgrey", -5658199);
        hashMap.put("darkkhaki", -4343957);
        RecordTag.m(-7667573, hashMap, "darkmagenta", -11179217, "darkolivegreen");
        RecordTag.m(-29696, hashMap, "darkorange", -6737204, "darkorchid");
        RecordTag.m(-7667712, hashMap, "darkred", -1468806, "darksalmon");
        RecordTag.m(-7357297, hashMap, "darkseagreen", -12042869, "darkslateblue");
        hashMap.put("darkslategray", -13676721);
        hashMap.put("darkslategrey", -13676721);
        hashMap.put("darkturquoise", -16724271);
        hashMap.put("darkviolet", -7077677);
        RecordTag.m(-60269, hashMap, "deeppink", -16728065, "deepskyblue");
        hashMap.put("dimgray", -9868951);
        hashMap.put("dimgrey", -9868951);
        hashMap.put("dodgerblue", -14774017);
        hashMap.put("firebrick", -5103070);
        RecordTag.m(-1296, hashMap, "floralwhite", -14513374, "forestgreen");
        hashMap.put("fuchsia", -65281);
        hashMap.put("gainsboro", -2302756);
        RecordTag.m(-460545, hashMap, "ghostwhite", -10496, "gold");
        hashMap.put("goldenrod", -2448096);
        hashMap.put("gray", -8355712);
        RecordTag.m(-16744448, hashMap, "green", -5374161, "greenyellow");
        hashMap.put("grey", -8355712);
        hashMap.put("honeydew", -983056);
        RecordTag.m(-38476, hashMap, "hotpink", -3318692, "indianred");
        RecordTag.m(-11861886, hashMap, "indigo", -16, "ivory");
        RecordTag.m(-989556, hashMap, "khaki", -1644806, "lavender");
        RecordTag.m(-3851, hashMap, "lavenderblush", -8586240, "lawngreen");
        RecordTag.m(-1331, hashMap, "lemonchiffon", -5383962, "lightblue");
        RecordTag.m(-1015680, hashMap, "lightcoral", -2031617, "lightcyan");
        hashMap.put("lightgoldenrodyellow", -329006);
        hashMap.put("lightgray", -2894893);
        hashMap.put("lightgreen", -7278960);
        hashMap.put("lightgrey", -2894893);
        RecordTag.m(-18751, hashMap, "lightpink", -24454, "lightsalmon");
        RecordTag.m(-14634326, hashMap, "lightseagreen", -7876870, "lightskyblue");
        hashMap.put("lightslategray", -8943463);
        hashMap.put("lightslategrey", -8943463);
        hashMap.put("lightsteelblue", -5192482);
        hashMap.put("lightyellow", -32);
        RecordTag.m(-16711936, hashMap, "lime", -13447886, "limegreen");
        hashMap.put("linen", -331546);
        hashMap.put("magenta", -65281);
        RecordTag.m(-8388608, hashMap, "maroon", -10039894, "mediumaquamarine");
        RecordTag.m(-16777011, hashMap, "mediumblue", -4565549, "mediumorchid");
        RecordTag.m(-7114533, hashMap, "mediumpurple", -12799119, "mediumseagreen");
        RecordTag.m(-8689426, hashMap, "mediumslateblue", -16713062, "mediumspringgreen");
        RecordTag.m(-12004916, hashMap, "mediumturquoise", -3730043, "mediumvioletred");
        RecordTag.m(-15132304, hashMap, "midnightblue", -655366, "mintcream");
        RecordTag.m(-6943, hashMap, "mistyrose", -6987, "moccasin");
        RecordTag.m(-8531, hashMap, "navajowhite", -16777088, "navy");
        RecordTag.m(-133658, hashMap, "oldlace", -8355840, "olive");
        RecordTag.m(-9728477, hashMap, "olivedrab", -23296, "orange");
        RecordTag.m(-47872, hashMap, "orangered", -2461482, "orchid");
        RecordTag.m(-1120086, hashMap, "palegoldenrod", -6751336, "palegreen");
        RecordTag.m(-5247250, hashMap, "paleturquoise", -2396013, "palevioletred");
        RecordTag.m(-4139, hashMap, "papayawhip", -9543, "peachpuff");
        RecordTag.m(-3308225, hashMap, "peru", -16181, "pink");
        RecordTag.m(-2252579, hashMap, "plum", -5185306, "powderblue");
        RecordTag.m(-8388480, hashMap, "purple", -10079335, "rebeccapurple");
        RecordTag.m(-65536, hashMap, "red", -4419697, "rosybrown");
        RecordTag.m(-12490271, hashMap, "royalblue", -7650029, "saddlebrown");
        RecordTag.m(-360334, hashMap, "salmon", -744352, "sandybrown");
        RecordTag.m(-13726889, hashMap, "seagreen", -2578, "seashell");
        RecordTag.m(-6270419, hashMap, "sienna", -4144960, "silver");
        RecordTag.m(-7876885, hashMap, "skyblue", -9807155, "slateblue");
        hashMap.put("slategray", -9404272);
        hashMap.put("slategrey", -9404272);
        hashMap.put("snow", -1286);
        hashMap.put("springgreen", -16711809);
        RecordTag.m(-12156236, hashMap, "steelblue", -2968436, "tan");
        RecordTag.m(-16744320, hashMap, "teal", -2572328, "thistle");
        RecordTag.m(-40121, hashMap, "tomato", 0, "transparent");
        RecordTag.m(-12525360, hashMap, "turquoise", -1146130, "violet");
        RecordTag.m(-663885, hashMap, "wheat", -1, "white");
        RecordTag.m(-657931, hashMap, "whitesmoke", -256, "yellow");
        hashMap.put("yellowgreen", -6632142);
    }

    private ColorParser() {
    }

    private static int parseColorInternal(String str, boolean z) {
        Assertions.checkArgument(!TextUtils.isEmpty(str));
        String replace = str.replace(" ", "");
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return (-16777216) | parseLong;
            }
            if (replace.length() == 9) {
                return ((parseLong & 255) << 24) | (parseLong >>> 8);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return 0;
        }
        if (replace.startsWith(RGBA)) {
            Matcher matcher = (z ? RGBA_PATTERN_FLOAT_ALPHA : RGBA_PATTERN_INT_ALPHA).matcher(replace);
            if (matcher.matches()) {
                return Color.argb(z ? (int) (Float.parseFloat((String) Assertions.checkNotNull(matcher.group(4))) * 255.0f) : Integer.parseInt((String) Assertions.checkNotNull(matcher.group(4)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(3)), 10));
            }
        } else if (replace.startsWith(RGB)) {
            Matcher matcher2 = RGB_PATTERN.matcher(replace);
            if (matcher2.matches()) {
                return Color.rgb(Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(1)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(2)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(3)), 10));
            }
        } else {
            Integer num = COLOR_MAP.get(Room.toLowerCase(replace));
            if (num != null) {
                return num.intValue();
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        return 0;
    }

    public static int parseCssColor(String str) {
        return parseColorInternal(str, true);
    }

    public static int parseTtmlColor(String str) {
        return parseColorInternal(str, false);
    }
}
