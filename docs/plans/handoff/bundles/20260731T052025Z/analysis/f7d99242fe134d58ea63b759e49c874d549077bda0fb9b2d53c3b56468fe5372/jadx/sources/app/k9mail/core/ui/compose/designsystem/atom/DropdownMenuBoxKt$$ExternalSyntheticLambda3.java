package app.k9mail.core.ui.compose.designsystem.atom;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DropdownMenuBoxKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Modifier f$4;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ DropdownMenuBoxKt$$ExternalSyntheticLambda3(Function1 function1, Modifier modifier, TextFieldValue textFieldValue, String str, PaddingValuesImpl paddingValuesImpl, boolean z, boolean z2, KeyboardOptions keyboardOptions, int i) {
        this.f$1 = function1;
        this.f$4 = modifier;
        this.f$3 = textFieldValue;
        this.f$6 = str;
        this.f$2 = paddingValuesImpl;
        this.f$0 = z;
        this.f$5 = z2;
        this.f$7 = keyboardOptions;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$2;
        Object obj5 = this.f$6;
        Object obj6 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(12586033);
                Utf8.SafeProcessor.DropdownMenuBox(this.f$0, this.f$1, (ImmutableList) obj4, (Function1) obj6, this.f$4, this.f$5, (Function1) obj5, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1572865);
                TextInputKt.AdvancedTextInput(this.f$1, this.f$4, (TextFieldValue) obj6, (String) obj5, (PaddingValuesImpl) obj4, this.f$0, this.f$5, (KeyboardOptions) obj3, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ DropdownMenuBoxKt$$ExternalSyntheticLambda3(boolean z, Function1 function1, ImmutableList immutableList, Function1 function12, Modifier modifier, boolean z2, Function1 function13, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = immutableList;
        this.f$3 = function12;
        this.f$4 = modifier;
        this.f$5 = z2;
        this.f$6 = function13;
        this.f$7 = composableLambdaImpl;
    }
}
