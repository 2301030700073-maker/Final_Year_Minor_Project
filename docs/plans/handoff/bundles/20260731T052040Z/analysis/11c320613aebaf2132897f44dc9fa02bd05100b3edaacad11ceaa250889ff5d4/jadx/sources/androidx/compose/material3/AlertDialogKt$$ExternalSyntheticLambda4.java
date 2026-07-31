package androidx.compose.material3;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.ui.window.DialogProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, int i2) {
        this.$r8$classId = 1;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = obj;
        this.f$4 = i;
        this.f$3 = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AlertDialogKt.BasicAlertDialog((Function0) obj5, (DialogProperties) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                LazyLayoutKt.m109SkippableItemJVlU9Rs((LazyLayoutItemProvider) obj5, this.f$2, this.f$4, this.f$3, (Composer) obj, updateChangedFlags);
                break;
            case 2:
                ((Integer) obj2).getClass();
                ((LazySaveableStateHolder) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj3).invoke(obj5, obj4, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            default:
                ((Integer) obj2).getClass();
                ((SaveableStateHolderImpl) obj5).SaveableStateProvider(obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, int i) {
        this.$r8$classId = 3;
        this.f$3 = composableLambdaImpl;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$4 = i;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(Object obj, Object obj2, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
    }
}
