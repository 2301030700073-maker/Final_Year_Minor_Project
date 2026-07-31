package androidx.compose.foundation.text.modifiers;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MinLinesConstrainerKt {
    public static final String EmptyTextReplacement;
    public static final String TwoLineTextReplacement;

    static {
        String str;
        int i = 1;
        int length = "H".length();
        if (length == 0) {
            str = "";
        } else if (length != 1) {
            StringBuilder sb = new StringBuilder("H".length() * 10);
            while (true) {
                sb.append((CharSequence) "H");
                if (i == 10) {
                    break;
                } else {
                    i++;
                }
            }
            str = sb.toString();
        } else {
            char charAt = "H".charAt(0);
            char[] cArr = new char[10];
            for (int i2 = 0; i2 < 10; i2++) {
                cArr[i2] = charAt;
            }
            str = new String(cArr);
        }
        EmptyTextReplacement = str;
        TwoLineTextReplacement = str + '\n' + str;
    }
}
