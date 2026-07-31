package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.room.util.DBUtil;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RadioButtonKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ boolean f$4;
    public final /* synthetic */ int f$5;
    public final /* synthetic */ int f$6;

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda2(ComposedAddressUi composedAddressUi, AnnotatedString annotatedString, boolean z, Modifier modifier, boolean z2, int i, int i2) {
        this.f$1 = composedAddressUi;
        this.f$2 = annotatedString;
        this.f$0 = z;
        this.f$3 = modifier;
        this.f$4 = z2;
        this.f$5 = i;
        this.f$6 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$5;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                DBUtil.RadioButton(this.f$0, (ComposableLambdaImpl) obj4, (Function0) obj3, this.f$3, this.f$4, (Composer) obj, updateChangedFlags, this.f$6);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                MessageBodyContentKt.MessageItemSenderSubjectFirstLine((ComposedAddressUi) obj4, (AnnotatedString) obj3, this.f$0, this.f$3, this.f$4, (Composer) obj, updateChangedFlags2, this.f$6);
                break;
        }
        return unit;
    }

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda2(boolean z, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, boolean z2, int i, int i2) {
        this.f$0 = z;
        this.f$1 = composableLambdaImpl;
        this.f$2 = function0;
        this.f$3 = modifier;
        this.f$4 = z2;
        this.f$5 = i;
        this.f$6 = i2;
    }
}
