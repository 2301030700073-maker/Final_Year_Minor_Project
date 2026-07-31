package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.core.util.DebugUtils;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidDialog_androidKt$Dialog$3 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ Function $content;
    public final /* synthetic */ Object $onDismissRequest;
    public final /* synthetic */ Object $properties;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidDialog_androidKt$Dialog$3(Object obj, Object obj2, Function function, int i, int i2) {
        super(2);
        this.$r8$classId = i2;
        this.$onDismissRequest = obj;
        this.$properties = obj2;
        this.$content = function;
        this.$$changed = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.$$changed;
        Function function = this.$content;
        Object obj3 = this.$properties;
        Object obj4 = this.$onDismissRequest;
        Composer composer = (Composer) obj;
        ((Number) obj2).intValue();
        switch (i) {
            case 0:
                DebugUtils.Dialog((Function0) obj4, (DialogProperties) obj3, (ComposableLambdaImpl) function, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                RulerKt.SubcomposeLayout((SubcomposeLayoutState) obj4, (Modifier) obj3, (Function2) function, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                AndroidView_androidKt.AndroidView((Function1) obj4, (Modifier) obj3, (Function1) function, composer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
