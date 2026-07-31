package org.schabi.newpipe.util.text;

import com.android.tools.r8.RecordTag;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class TimestampExtractor {
    public static final Pattern TIMESTAMPS_PATTERN = Pattern.compile("(?:^|(?!:)\\W)(?:([0-5]?[0-9]):)?([0-5]?[0-9]):([0-5][0-9])(?=$|(?!:)\\W)");

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TimestampMatchDTO extends RecordTag {
        public final int seconds;
        public final int timestampEnd;
        public final int timestampStart;

        public TimestampMatchDTO(int i, int i2, int i3) {
            this.timestampStart = i;
            this.timestampEnd = i2;
            this.seconds = i3;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof TimestampMatchDTO)) {
                return false;
            }
            TimestampMatchDTO timestampMatchDTO = (TimestampMatchDTO) obj;
            return this.timestampStart == timestampMatchDTO.timestampStart && this.timestampEnd == timestampMatchDTO.timestampEnd && this.seconds == timestampMatchDTO.seconds;
        }

        public final int hashCode() {
            return (((this.timestampStart * 31) + this.timestampEnd) * 31) + this.seconds;
        }

        public final String toString() {
            Object[] objArr = {Integer.valueOf(this.timestampStart), Integer.valueOf(this.timestampEnd), Integer.valueOf(this.seconds)};
            String[] split = "timestampStart;timestampEnd;seconds".length() == 0 ? new String[0] : "timestampStart;timestampEnd;seconds".split(";");
            StringBuilder sb = new StringBuilder();
            sb.append(TimestampMatchDTO.class.getSimpleName());
            sb.append("[");
            for (int i = 0; i < split.length; i++) {
                sb.append(split[i]);
                sb.append("=");
                sb.append(objArr[i]);
                if (i != split.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }
}
