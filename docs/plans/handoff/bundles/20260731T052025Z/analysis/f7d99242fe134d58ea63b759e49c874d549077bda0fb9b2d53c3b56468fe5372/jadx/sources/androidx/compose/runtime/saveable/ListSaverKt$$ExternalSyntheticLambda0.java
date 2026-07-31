package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.skydoves.landscapist.coil3.ProvideCoilSourceFile_androidKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListSaverKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function2 f$0;

    public /* synthetic */ ListSaverKt$$ExternalSyntheticLambda0(int i, Function2 function2) {
        this.$r8$classId = i;
        this.f$0 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SaveableStateRegistry saveableStateRegistry;
        Unit ProvideCoilSourceFile$lambda$0;
        int i = this.$r8$classId;
        Function2 function2 = this.f$0;
        switch (i) {
            case 0:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                List list = (List) function2.invoke(saveableHolder, obj2);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj3 = list.get(i2);
                    if (obj3 != null && (saveableStateRegistry = saveableHolder.registry) != null && !saveableStateRegistry.canBeSaved(obj3)) {
                        DBUtil$$ExternalSyntheticBUOutline0.m("item at index ", i2, " can't be saved: ", obj3);
                        return null;
                    }
                }
                if (list.isEmpty()) {
                    return null;
                }
                return new ArrayList(list);
            case 1:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    if (function2 == null) {
                        gapComposer.startReplaceGroup(581661979);
                    } else {
                        gapComposer.startReplaceGroup(434405286);
                        function2.invoke(gapComposer, 0);
                    }
                    gapComposer.end(false);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            case 2:
                ProvideCoilSourceFile$lambda$0 = ProvideCoilSourceFile_androidKt.ProvideCoilSourceFile$lambda$0(function2, (Composer) obj, ((Integer) obj2).intValue());
                return ProvideCoilSourceFile$lambda$0;
            case 3:
                obj.getClass();
                obj2.getClass();
                Boolean bool = (Boolean) function2.invoke(obj, obj2);
                bool.getClass();
                return bool;
            default:
                obj.getClass();
                obj2.getClass();
                return function2.invoke(obj, obj2);
        }
    }
}
