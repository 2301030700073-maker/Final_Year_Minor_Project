package androidx.compose.material3;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.work.Operation$State;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExposedDropdownMenuKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda4(Modifier modifier, Alignment alignment, boolean z, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$2 = modifier;
        this.f$1 = alignment;
        this.f$0 = z;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.ExposedDropdownMenuBox(this.f$0, (Function1) obj4, this.f$2, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags, this.f$5);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                OffsetKt.BoxWithConstraints(this.f$2, (Alignment) obj4, this.f$0, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags2, this.f$5);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Operation$State.AccountOAuthView((Function1) obj4, (AccountOAuthContract$ViewModel) obj3, this.f$2, this.f$0, (Composer) obj, updateChangedFlags3, this.f$5);
                break;
        }
        return unit;
    }

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda4(Function1 function1, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, Modifier modifier, boolean z, int i, int i2) {
        this.f$1 = function1;
        this.f$3 = accountOAuthContract$ViewModel;
        this.f$2 = modifier;
        this.f$0 = z;
        this.f$4 = i;
        this.f$5 = i2;
    }

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda4(boolean z, Function1 function1, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
