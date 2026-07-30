package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* compiled from: EditingBuffer.kt */
/* loaded from: classes.dex */
public abstract class EditingBufferKt {
    /* renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m2194updateRangeAfterDeletepWDy79M(long j, long j2) {
        int m2121getLengthimpl;
        int m2123getMinimpl = TextRange.m2123getMinimpl(j);
        int m2122getMaximpl = TextRange.m2122getMaximpl(j);
        if (TextRange.m2127intersects5zctL8(j2, j)) {
            if (TextRange.m2115contains5zctL8(j2, j)) {
                m2123getMinimpl = TextRange.m2123getMinimpl(j2);
                m2122getMaximpl = m2123getMinimpl;
            } else {
                if (TextRange.m2115contains5zctL8(j, j2)) {
                    m2121getLengthimpl = TextRange.m2121getLengthimpl(j2);
                } else if (TextRange.m2116containsimpl(j2, m2123getMinimpl)) {
                    m2123getMinimpl = TextRange.m2123getMinimpl(j2);
                    m2121getLengthimpl = TextRange.m2121getLengthimpl(j2);
                } else {
                    m2122getMaximpl = TextRange.m2123getMinimpl(j2);
                }
                m2122getMaximpl -= m2121getLengthimpl;
            }
        } else if (m2122getMaximpl > TextRange.m2123getMinimpl(j2)) {
            m2123getMinimpl -= TextRange.m2121getLengthimpl(j2);
            m2121getLengthimpl = TextRange.m2121getLengthimpl(j2);
            m2122getMaximpl -= m2121getLengthimpl;
        }
        return TextRangeKt.TextRange(m2123getMinimpl, m2122getMaximpl);
    }
}
