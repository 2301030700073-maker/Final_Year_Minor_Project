package net.thunderbird.feature.navigation.drawer.dropdown.ui.folder;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.TextFieldValue;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FolderListKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ boolean f$5;

    public /* synthetic */ FolderListKt$$ExternalSyntheticLambda1(String str, TextFieldValue textFieldValue, Function1 function1, boolean z, boolean z2, KeyboardOptions keyboardOptions) {
        this.f$0 = str;
        this.f$1 = textFieldValue;
        this.f$2 = function1;
        this.f$3 = z;
        this.f$5 = z2;
        this.f$4 = keyboardOptions;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Function function = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ByteStreamsKt.FolderList((DisplayTreeFolder) obj5, (DisplayFolder) obj4, (Function1) function, this.f$3, (Modifier) obj3, this.f$5, (Composer) obj, Updater.updateChangedFlags(9));
                break;
            case 1:
                String str = (String) obj5;
                TextFieldValue textFieldValue = (TextFieldValue) obj4;
                Function1 function1 = (Function1) function;
                KeyboardOptions keyboardOptions = (KeyboardOptions) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextFieldLabelKt.TextFieldOutlined(textFieldValue, function1, SizeKt.FillWholeMaxWidth, this.f$3, str != null, this.f$5, keyboardOptions, gapComposer, 384);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                Jsoup.AccountView((DisplayAccount) obj5, (Function0) obj4, (Function0) function, this.f$3, this.f$5, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ FolderListKt$$ExternalSyntheticLambda1(DisplayAccount displayAccount, Function0 function0, Function0 function02, boolean z, boolean z2, Modifier modifier, int i) {
        this.f$0 = displayAccount;
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$3 = z;
        this.f$5 = z2;
        this.f$4 = modifier;
    }

    public /* synthetic */ FolderListKt$$ExternalSyntheticLambda1(DisplayTreeFolder displayTreeFolder, DisplayFolder displayFolder, Function1 function1, boolean z, Modifier modifier, boolean z2, int i) {
        this.f$0 = displayTreeFolder;
        this.f$1 = displayFolder;
        this.f$2 = function1;
        this.f$3 = z;
        this.f$4 = modifier;
        this.f$5 = z2;
    }
}
