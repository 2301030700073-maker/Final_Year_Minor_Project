package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.sqlite.SQLite;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwipeableRowKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Function1 f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ SwipeableRowKt$$ExternalSyntheticLambda4(Function1 function1, Modifier modifier, String str, boolean z, String str2, PaddingValuesImpl paddingValuesImpl, Authenticator authenticator, int i) {
        this.f$4 = function1;
        this.f$2 = modifier;
        this.f$0 = str;
        this.f$3 = z;
        this.f$1 = str2;
        this.f$6 = paddingValuesImpl;
        this.f$5 = authenticator;
        this.f$7 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$1;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        Object obj4 = this.f$5;
        Object obj5 = this.f$6;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Okio.SwipeableRow((SwipeableRowState) obj6, (ComposableLambdaImpl) obj3, this.f$2, this.f$3, this.f$4, (Function1) obj4, (ComposableLambdaImpl) obj5, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                TextFieldLabelKt.TextFieldOutlinedSelect((ImmutableList) obj6, this.f$1, this.f$4, this.f$2, (Function1) obj4, (String) obj5, this.f$3, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                SQLite.ProtectedPasswordInput(this.f$4, this.f$2, (String) obj6, this.f$3, (String) obj3, (PaddingValuesImpl) obj5, (Authenticator) obj4, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ SwipeableRowKt$$ExternalSyntheticLambda4(ImmutableList immutableList, Object obj, Function1 function1, Modifier modifier, Function1 function12, String str, boolean z, int i) {
        this.f$0 = immutableList;
        this.f$1 = obj;
        this.f$4 = function1;
        this.f$2 = modifier;
        this.f$5 = function12;
        this.f$6 = str;
        this.f$3 = z;
        this.f$7 = i;
    }

    public /* synthetic */ SwipeableRowKt$$ExternalSyntheticLambda4(SwipeableRowState swipeableRowState, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, boolean z, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl2, int i) {
        this.f$0 = swipeableRowState;
        this.f$1 = composableLambdaImpl;
        this.f$2 = modifier;
        this.f$3 = z;
        this.f$4 = function1;
        this.f$5 = function12;
        this.f$6 = composableLambdaImpl2;
        this.f$7 = i;
    }
}
