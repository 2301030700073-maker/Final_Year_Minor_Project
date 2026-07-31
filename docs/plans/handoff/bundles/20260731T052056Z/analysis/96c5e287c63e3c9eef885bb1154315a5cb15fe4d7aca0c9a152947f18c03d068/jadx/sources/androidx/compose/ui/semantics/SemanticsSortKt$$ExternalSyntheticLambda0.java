package androidx.compose.ui.semantics;

import androidx.work.Operation$State;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Comparator;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SemanticsSortKt$$ExternalSyntheticLambda0 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SemanticsSortKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$0;
        switch (i) {
            case 2:
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj3;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.checked).compareTo(Boolean.valueOf(materialButton2.checked));
                if (compareTo == 0) {
                    int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                    if (compareTo2 == 0) {
                        break;
                    }
                }
                break;
            case 3:
                for (Function1 function1 : (Function1[]) obj3) {
                    int compareValues = Operation$State.compareValues((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (compareValues != 0) {
                        break;
                    }
                }
                break;
        }
        return ((Number) ((ForYouCardKt$$ExternalSyntheticLambda17) obj3).invoke(obj, obj2)).intValue();
    }
}
