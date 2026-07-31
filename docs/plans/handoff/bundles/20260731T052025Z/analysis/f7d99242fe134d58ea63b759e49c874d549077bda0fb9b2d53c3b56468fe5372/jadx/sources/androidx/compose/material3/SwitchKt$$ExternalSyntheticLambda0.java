package androidx.compose.material3;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwitchKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ int f$7;

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(RowScope rowScope, DisplayAccount displayAccount, Function0 function0, boolean z, int i) {
        this.f$1 = rowScope;
        this.f$2 = displayAccount;
        this.f$5 = function0;
        this.f$0 = z;
        this.f$7 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        Object obj3 = this.f$5;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                SwitchKt.Switch(this.f$0, (Function1) obj5, (Modifier) obj4, (SwitchColors) obj3, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                CharsKt__CharKt.CreateNewArchiveFolderDialogButtons((RowScope) obj5, this.f$0, (Function0) obj4, (Function0) obj3, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Jsoup.AccountSelectedView((RowScope) obj5, (DisplayAccount) obj4, (Function0) obj3, this.f$0, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(RowScope rowScope, boolean z, Function0 function0, Function0 function02, int i) {
        this.f$1 = rowScope;
        this.f$0 = z;
        this.f$2 = function0;
        this.f$5 = function02;
        this.f$7 = i;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda0(boolean z, Function1 function1, Modifier modifier, SwitchColors switchColors, int i) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$5 = switchColors;
        this.f$7 = i;
    }
}
