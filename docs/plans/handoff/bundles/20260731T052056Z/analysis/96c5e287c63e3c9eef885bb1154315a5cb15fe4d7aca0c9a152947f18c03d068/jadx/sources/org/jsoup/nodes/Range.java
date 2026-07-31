package org.jsoup.nodes;

import j$.util.Objects;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Range {
    public static final Range Untracked;
    public final Position end;
    public final Position start;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AttributeRange {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final Range nameRange;
        public final Range valueRange;

        public AttributeRange(Range range, Range range2) {
            this.nameRange = range;
            this.valueRange = range2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AttributeRange.class != obj.getClass()) {
                return false;
            }
            AttributeRange attributeRange = (AttributeRange) obj;
            if (this.nameRange.equals(attributeRange.nameRange)) {
                return this.valueRange.equals(attributeRange.valueRange);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.nameRange, this.valueRange);
        }

        public final String toString() {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            borrowBuilder.append(this.nameRange);
            borrowBuilder.append('=');
            borrowBuilder.append(this.valueRange);
            return StringUtil.releaseBuilder(borrowBuilder);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Position {
        public final int columnNumber;
        public final int lineNumber;
        public final int pos;

        public Position(int i, int i2, int i3) {
            this.pos = i;
            this.lineNumber = i2;
            this.columnNumber = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Position.class == obj.getClass()) {
                Position position = (Position) obj;
                if (this.pos == position.pos && this.lineNumber == position.lineNumber && this.columnNumber == position.columnNumber) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.pos), Integer.valueOf(this.lineNumber), Integer.valueOf(this.columnNumber));
        }

        public final String toString() {
            return this.lineNumber + "," + this.columnNumber + ":" + this.pos;
        }
    }

    static {
        Position position = new Position(-1, -1, -1);
        Untracked = new Range(position, position);
    }

    public Range(Position position, Position position2) {
        this.start = position;
        this.end = position2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Range.class != obj.getClass()) {
            return false;
        }
        Range range = (Range) obj;
        if (this.start.equals(range.start)) {
            return this.end.equals(range.end);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.start, this.end);
    }

    public final String toString() {
        return this.start + "-" + this.end;
    }
}
