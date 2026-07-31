package kotlinx.serialization.internal;

import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ElementMarker {
    public static final long[] EMPTY_HIGH_MARKS = new long[0];
    public final SerialDescriptor descriptor;
    public final long[] highMarksArray;
    public long lowerMarks;
    public final MessageViewFragment$onCreate$1 readIfAbsent;

    public ElementMarker(SerialDescriptor serialDescriptor, MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1) {
        serialDescriptor.getClass();
        this.descriptor = serialDescriptor;
        this.readIfAbsent = messageViewFragment$onCreate$1;
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
