package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import java.util.Comparator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnnotatedString$special$$inlined$sortedBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.$r8$classId) {
        }
        return Integer.valueOf(((AnnotatedString.Range) obj).start).compareTo(Integer.valueOf(((AnnotatedString.Range) obj2).start));
    }
}
