package kotlin.text;

import androidx.compose.ui.Modifier;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HexFormat {
    public static final HexFormat UpperCase;
    public final BytesHexFormat bytes;
    public final NumberHexFormat number;
    public final boolean upperCase;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BytesHexFormat {
        public static final BytesHexFormat Default;

        static {
            BytesHexFormat bytesHexFormat = new BytesHexFormat();
            if (!Hex.access$isCaseSensitive("  ") && !Hex.access$isCaseSensitive("") && !Hex.access$isCaseSensitive("")) {
                Hex.access$isCaseSensitive("");
            }
            Default = bytesHexFormat;
        }

        public final void appendOptionsTo$kotlin_stdlib(StringBuilder sb, String str) {
            sb.append(str);
            sb.append("bytesPerLine = ");
            sb.append(Integer.MAX_VALUE);
            sb.append(",");
            sb.append('\n');
            sb.append(str);
            sb.append("bytesPerGroup = ");
            sb.append(Integer.MAX_VALUE);
            sb.append(",");
            sb.append('\n');
            sb.append(str);
            sb.append("groupSeparator = \"");
            sb.append("  ");
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("byteSeparator = \"");
            sb.append("");
            sb.append("\",");
            sb.append('\n');
            Modifier.CC.m(sb, str, "bytePrefix = \"", "", "\",");
            sb.append('\n');
            sb.append(str);
            sb.append("byteSuffix = \"");
            sb.append("");
            sb.append("\"");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BytesHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sb, "    ");
            sb.append('\n');
            sb.append(")");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NumberHexFormat {
        public static final NumberHexFormat Default = new NumberHexFormat();
        public final boolean isDigitsOnlyAndNoPadding = true;

        public NumberHexFormat() {
            if (Hex.access$isCaseSensitive("")) {
                return;
            }
            Hex.access$isCaseSensitive("");
        }

        public final void appendOptionsTo$kotlin_stdlib(StringBuilder sb, String str) {
            Modifier.CC.m(sb, str, "prefix = \"", "", "\",");
            sb.append('\n');
            sb.append(str);
            sb.append("suffix = \"");
            sb.append("");
            sb.append("\",");
            sb.append('\n');
            sb.append(str);
            sb.append("removeLeadingZeros = ");
            sb.append(false);
            sb.append(',');
            sb.append('\n');
            sb.append(str);
            sb.append("minLength = ");
            sb.append(1);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NumberHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sb, "    ");
            sb.append('\n');
            sb.append(")");
            return sb.toString();
        }
    }

    static {
        BytesHexFormat bytesHexFormat = BytesHexFormat.Default;
        NumberHexFormat numberHexFormat = NumberHexFormat.Default;
        new HexFormat(false, bytesHexFormat, numberHexFormat);
        UpperCase = new HexFormat(true, bytesHexFormat, numberHexFormat);
    }

    public HexFormat(boolean z, BytesHexFormat bytesHexFormat, NumberHexFormat numberHexFormat) {
        bytesHexFormat.getClass();
        numberHexFormat.getClass();
        this.upperCase = z;
        this.bytes = bytesHexFormat;
        this.number = numberHexFormat;
    }

    public final String toString() {
        StringBuilder m = Modifier.CC.m("HexFormat(\n    upperCase = ");
        m.append(this.upperCase);
        m.append(",\n    bytes = BytesHexFormat(\n");
        this.bytes.appendOptionsTo$kotlin_stdlib(m, "        ");
        m.append('\n');
        m.append("    ),");
        m.append('\n');
        m.append("    number = NumberHexFormat(");
        m.append('\n');
        this.number.appendOptionsTo$kotlin_stdlib(m, "        ");
        m.append('\n');
        m.append("    )");
        m.append('\n');
        m.append(")");
        return m.toString();
    }
}
