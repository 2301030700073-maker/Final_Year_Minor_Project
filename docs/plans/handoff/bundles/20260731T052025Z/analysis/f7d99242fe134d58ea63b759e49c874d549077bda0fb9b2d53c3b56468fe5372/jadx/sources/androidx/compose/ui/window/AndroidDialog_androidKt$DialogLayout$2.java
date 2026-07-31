package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.core.util.DebugUtils;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidDialog_androidKt$DialogLayout$2 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ Function $content;
    public final /* synthetic */ Modifier $modifier;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDialog_androidKt$DialogLayout$2(Modifier modifier, Function2 function2, int i) {
        super(2);
        this.$modifier = modifier;
        this.$content = function2;
        this.$$changed = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.$$changed;
        Modifier modifier = this.$modifier;
        Function function = this.$content;
        Composer composer = (Composer) obj;
        ((Number) obj2).intValue();
        switch (i) {
            case 0:
                DebugUtils.access$DialogLayout(modifier, (Function2) function, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                AndroidView_androidKt.AndroidView(Updater.updateChangedFlags(i2 | 1), composer, modifier, (Function1) function);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDialog_androidKt$DialogLayout$2(Function1 function1, Modifier modifier, int i) {
        super(2);
        this.$content = function1;
        this.$modifier = modifier;
        this.$$changed = i;
    }
}
