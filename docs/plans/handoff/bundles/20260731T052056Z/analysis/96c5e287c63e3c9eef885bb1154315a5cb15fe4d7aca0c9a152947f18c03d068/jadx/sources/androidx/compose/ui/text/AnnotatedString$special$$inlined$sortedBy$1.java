package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.work.Operation$State;
import java.util.Comparator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedString$special$$inlined$sortedBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AnnotatedString$special$$inlined$sortedBy$1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.$r8$classId) {
        }
        return Operation$State.compareValues(Integer.valueOf(((AnnotatedString.Range) obj).start), Integer.valueOf(((AnnotatedString.Range) obj2).start));
    }
}
