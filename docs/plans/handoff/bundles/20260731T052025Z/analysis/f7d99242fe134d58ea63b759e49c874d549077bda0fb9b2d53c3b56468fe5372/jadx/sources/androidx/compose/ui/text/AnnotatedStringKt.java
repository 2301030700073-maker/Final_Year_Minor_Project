package androidx.compose.ui.text;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.text.AnnotatedString;
import java.util.ArrayList;
import java.util.List;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AnnotatedStringKt {
    public static final AnnotatedString EmptyAnnotatedString = new AnnotatedString("");

    public static final List getLocalAnnotations(AnnotatedString annotatedString, int i, int i2, TextKt$$ExternalSyntheticLambda1 textKt$$ExternalSyntheticLambda1) {
        List list;
        if (i == i2 || (list = annotatedString.annotations) == null) {
            return null;
        }
        int i3 = 0;
        if (i == 0 && i2 >= annotatedString.text.length()) {
            if (textKt$$ExternalSyntheticLambda1 == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            while (i3 < size) {
                Object obj = list.get(i3);
                if (((Boolean) textKt$$ExternalSyntheticLambda1.invoke(((AnnotatedString.Range) obj).item)).booleanValue()) {
                    arrayList.add(obj);
                }
                i3++;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        int size2 = list.size();
        while (i3 < size2) {
            AnnotatedString.Range range = (AnnotatedString.Range) list.get(i3);
            if (textKt$$ExternalSyntheticLambda1 != null ? ((Boolean) textKt$$ExternalSyntheticLambda1.invoke(range.item)).booleanValue() : true) {
                int i4 = range.start;
                int i5 = range.end;
                if (intersect(i, i2, i4, i5)) {
                    arrayList2.add(new AnnotatedString.Range(RangesKt.coerceIn(range.start, i, i2) - i, RangesKt.coerceIn(i5, i, i2) - i, (AnnotatedString.Annotation) range.item, range.tag));
                }
            }
            i3++;
        }
        return arrayList2;
    }

    public static final boolean intersect(int i, int i2, int i3, int i4) {
        return ((i < i4) & (i3 < i2)) | (((i == i2) | (i3 == i4)) & (i == i3));
    }
}
