package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
