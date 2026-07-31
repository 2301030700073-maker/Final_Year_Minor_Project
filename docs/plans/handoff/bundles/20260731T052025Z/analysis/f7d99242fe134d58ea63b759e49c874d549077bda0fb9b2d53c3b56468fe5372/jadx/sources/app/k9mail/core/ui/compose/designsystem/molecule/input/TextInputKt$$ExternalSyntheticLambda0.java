package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextInputKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ Function1 f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ boolean f$6;
    public final /* synthetic */ boolean f$7;
    public final /* synthetic */ Object f$8;

    public /* synthetic */ TextInputKt$$ExternalSyntheticLambda0(ContentType contentType, String str, String str2, Function1 function1, String str3, boolean z, boolean z2, boolean z3, KeyboardOptions keyboardOptions) {
        this.f$0 = contentType;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = function1;
        this.f$4 = str3;
        this.f$5 = z;
        this.f$6 = z2;
        this.f$7 = z3;
        this.f$8 = keyboardOptions;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$8;
        Object obj4 = this.f$4;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ContentType contentType = (ContentType) obj5;
                String str = (String) obj4;
                KeyboardOptions keyboardOptions = (KeyboardOptions) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier modifier = Modifier.Companion.$$INSTANCE;
                    if (contentType != null) {
                        gapComposer.startReplaceGroup(1606988226);
                        boolean changedInstance = gapComposer.changedInstance(contentType);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                            rememberedValue = new DiskLruCache$$ExternalSyntheticLambda0(20, contentType);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        modifier = SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(1607069167);
                        gapComposer.end(false);
                    }
                    TextFieldLabelKt.TextFieldOutlined(this.f$2, this.f$3, modifier.then(SizeKt.FillWholeMaxWidth), str, this.f$5, this.f$6, this.f$1 != null, this.f$7, keyboardOptions, gapComposer, 0, 80);
                    break;
                }
                break;
            default:
                ((Integer) obj2).getClass();
                Util.ProtectedTextFieldOutlinedPassword(this.f$1, this.f$3, (Function1) obj5, (Authenticator) obj4, (Modifier) obj3, this.f$2, this.f$5, this.f$6, this.f$7, (Composer) obj, Updater.updateChangedFlags(24961));
                break;
        }
        return unit;
    }

    public /* synthetic */ TextInputKt$$ExternalSyntheticLambda0(String str, Function1 function1, Function1 function12, Authenticator authenticator, Modifier modifier, String str2, boolean z, boolean z2, boolean z3, int i) {
        this.f$1 = str;
        this.f$3 = function1;
        this.f$0 = function12;
        this.f$4 = authenticator;
        this.f$8 = modifier;
        this.f$2 = str2;
        this.f$5 = z;
        this.f$6 = z2;
        this.f$7 = z3;
    }
}
