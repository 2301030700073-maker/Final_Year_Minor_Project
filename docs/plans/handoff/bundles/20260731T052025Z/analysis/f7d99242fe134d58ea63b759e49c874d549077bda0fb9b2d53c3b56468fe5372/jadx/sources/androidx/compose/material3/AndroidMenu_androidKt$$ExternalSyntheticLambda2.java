package androidx.compose.material3;

import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.core.ui.designsystem.resources.String0_commonMainKt;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import org.jetbrains.compose.resources.StringResource;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidMenu_androidKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ AndroidMenu_androidKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$6 = menuItemColors;
        this.f$7 = paddingValues;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidMenu_androidKt.DropdownMenuItem((ComposableLambdaImpl) obj7, (Function0) obj6, (Modifier) obj5, this.f$5, (MenuItemColors) obj4, (PaddingValues) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                break;
            case 1:
                ((Integer) obj2).getClass();
                TextInputKt.EmailAddressInput((Function1) obj7, (Modifier) obj5, (String) obj6, (String) obj4, this.f$5, (PaddingValuesImpl) obj3, (Composer) obj, Updater.updateChangedFlags(196657));
                break;
            default:
                String str = (String) obj7;
                String str2 = (String) obj6;
                Function1 function1 = (Function1) obj5;
                Authenticator authenticator = (Authenticator) obj4;
                MutableState mutableState = (MutableState) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_molecule_password_input_label$delegate.getValue(), gapComposer);
                    boolean z = str != null;
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 9);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Util.ProtectedTextFieldOutlinedPassword(str2, function1, (Function1) rememberedValue, authenticator, fillElement, stringResource, false, this.f$5, z, gapComposer, 24960);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AndroidMenu_androidKt$$ExternalSyntheticLambda2(String str, String str2, Function1 function1, Authenticator authenticator, boolean z, MutableState mutableState) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = function1;
        this.f$6 = authenticator;
        this.f$5 = z;
        this.f$7 = mutableState;
    }

    public /* synthetic */ AndroidMenu_androidKt$$ExternalSyntheticLambda2(Function1 function1, Modifier modifier, String str, String str2, boolean z, PaddingValuesImpl paddingValuesImpl, int i) {
        this.f$0 = function1;
        this.f$2 = modifier;
        this.f$1 = str;
        this.f$6 = str2;
        this.f$5 = z;
        this.f$7 = paddingValuesImpl;
    }
}
