package kotlin.text;

import androidx.compose.ui.node.Owner;
import androidx.room.Room;
import com.google.android.exoplayer2.util.Log;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HexFormat {
    public static final HexFormat Default;
    public final BytesHexFormat bytes;
    public final NumberHexFormat number;
    public final boolean upperCase;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BytesHexFormat {
        public static final BytesHexFormat Default = new BytesHexFormat();
        public final boolean ignoreCase;
        public final boolean noLineAndGroupSeparator = true;
        public final boolean shortByteSeparatorNoPrefixAndSuffix = true;

        public BytesHexFormat() {
            boolean z = true;
            if (!Room.access$isCaseSensitive("  ") && !Room.access$isCaseSensitive("") && !Room.access$isCaseSensitive("") && !Room.access$isCaseSensitive("")) {
                z = false;
            }
            this.ignoreCase = z;
        }

        public final void appendOptionsTo$kotlin_stdlib(StringBuilder sb, String str) {
            sb.append(str);
            sb.append("bytesPerLine = ");
            sb.append(Log.LOG_LEVEL_OFF);
            sb.append(",");
            sb.append('\n');
            sb.append(str);
            sb.append("bytesPerGroup = ");
            sb.append(Log.LOG_LEVEL_OFF);
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
            sb.append(str);
            sb.append("bytePrefix = \"");
            sb.append("");
            sb.append("\",");
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NumberHexFormat {
        public static final NumberHexFormat Default;

        static {
            NumberHexFormat numberHexFormat = new NumberHexFormat();
            if (!Room.access$isCaseSensitive("")) {
                Room.access$isCaseSensitive("");
            }
            Default = numberHexFormat;
        }

        public final void appendOptionsTo$kotlin_stdlib(StringBuilder sb, String str) {
            sb.append(str);
            sb.append("prefix = \"");
            sb.append("");
            sb.append("\",");
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
        Default = new HexFormat(false, bytesHexFormat, numberHexFormat);
        new HexFormat(true, bytesHexFormat, numberHexFormat);
    }

    public HexFormat(boolean z, BytesHexFormat bytesHexFormat, NumberHexFormat numberHexFormat) {
        bytesHexFormat.getClass();
        numberHexFormat.getClass();
        this.upperCase = z;
        this.bytes = bytesHexFormat;
        this.number = numberHexFormat;
    }

    public final String toString() {
        StringBuilder m = Owner.CC.m("HexFormat(\n    upperCase = ");
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
