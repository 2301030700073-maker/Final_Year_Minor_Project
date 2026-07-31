package net.thunderbird.app.common.core.logging;

import java.util.ArrayList;
import kotlin.jvm.functions.Function2;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1 implements Function2 {
    public final /* synthetic */ Function2[] $items;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1(Function2[] function2Arr, int i) {
        this.$r8$classId = i;
        this.$items = function2Arr;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = 0;
        Function2[] function2Arr = this.$items;
        switch (i) {
            case 0:
                Scope scope = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope.getClass();
                parametersHolder.getClass();
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(function2Arr[0].invoke(scope, parametersHolder));
                return arrayList;
            case 1:
                Scope scope2 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope2.getClass();
                parametersHolder2.getClass();
                ArrayList arrayList2 = new ArrayList(10);
                while (i2 < 10) {
                    arrayList2.add(function2Arr[i2].invoke(scope2, parametersHolder2));
                    i2++;
                }
                return arrayList2;
            default:
                Scope scope3 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope3.getClass();
                parametersHolder3.getClass();
                ArrayList arrayList3 = new ArrayList(3);
                while (i2 < 3) {
                    arrayList3.add(function2Arr[i2].invoke(scope3, parametersHolder3));
                    i2++;
                }
                return arrayList3;
        }
    }
}
