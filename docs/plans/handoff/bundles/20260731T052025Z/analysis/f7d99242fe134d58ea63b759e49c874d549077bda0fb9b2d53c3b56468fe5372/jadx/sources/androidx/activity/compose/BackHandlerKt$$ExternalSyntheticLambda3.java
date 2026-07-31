package androidx.activity.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.util.DebugUtils;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BackHandlerKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda3(boolean z, Function function, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = z;
        this.f$1 = function;
        this.f$2 = i;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        int i3 = this.f$2;
        Function function = this.f$1;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                DebugUtils.BackHandler(z, (Function0) function, (Composer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            default:
                ((Integer) obj2).getClass();
                CacheControl.Companion.K9MailTheme2(z, (ComposableLambdaImpl) function, (Composer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
        }
        return unit;
    }
}
