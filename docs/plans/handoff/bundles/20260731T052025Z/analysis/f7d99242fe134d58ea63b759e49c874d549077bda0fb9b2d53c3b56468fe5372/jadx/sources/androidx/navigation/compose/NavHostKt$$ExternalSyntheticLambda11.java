package androidx.navigation.compose;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.navigation.NavBackStackEntry;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda11 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ State f$0;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda11(State state, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        State state = this.f$0;
        switch (i) {
            case 0:
                List list = (List) state.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Intrinsics.areEqual(((NavBackStackEntry) obj).destination.navigatorName, "composable")) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 1:
                return new Offset(((Offset) state.getValue()).packedValue);
            case 2:
                AnimationVector2D animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                return new Offset(((Offset) state.getValue()).packedValue);
            case 3:
                return Boolean.valueOf(((Number) state.getValue()).floatValue() > 0.0f);
            case 4:
                return Boolean.valueOf(((Number) state.getValue()).floatValue() > 0.0f);
            default:
                FilteringSequence filterNotNull = SequencesKt.filterNotNull(new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence((Set) state.getValue()), true, new ZipFilesKt$$ExternalSyntheticLambda0(3)), new ZipFilesKt$$ExternalSyntheticLambda0(4), 2));
                PersistentOrderedSet persistentOrderedSet = PersistentOrderedSet.EMPTY;
                persistentOrderedSet.getClass();
                PersistentOrderedSetBuilder persistentOrderedSetBuilder = new PersistentOrderedSetBuilder(persistentOrderedSet);
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filterNotNull);
                while (filteringSequence$iterator$1.hasNext()) {
                    persistentOrderedSetBuilder.add(filteringSequence$iterator$1.next());
                }
                return persistentOrderedSetBuilder.build();
        }
    }
}
