package kotlinx.serialization.internal;

import androidx.room.RoomDatabase$createConnectionManager$2;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ElementMarker {
    public static final long[] EMPTY_HIGH_MARKS = new long[0];
    public final SerialDescriptor descriptor;
    public final long[] highMarksArray;
    public long lowerMarks;
    public final RoomDatabase$createConnectionManager$2 readIfAbsent;

    public ElementMarker(SerialDescriptor serialDescriptor, RoomDatabase$createConnectionManager$2 roomDatabase$createConnectionManager$2) {
        serialDescriptor.getClass();
        this.descriptor = serialDescriptor;
        this.readIfAbsent = roomDatabase$createConnectionManager$2;
        int elementsCount = serialDescriptor.getElementsCount();
        if (elementsCount <= 64) {
            this.lowerMarks = elementsCount != 64 ? (-1) << elementsCount : 0L;
            this.highMarksArray = EMPTY_HIGH_MARKS;
            return;
        }
        this.lowerMarks = 0L;
        int i = (elementsCount - 1) >>> 6;
        long[] jArr = new long[i];
        if ((elementsCount & 63) != 0) {
            jArr[i - 1] = (-1) << elementsCount;
        }
        this.highMarksArray = jArr;
    }
}
