package androidx.compose.material3;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import net.thunderbird.core.ui.compose.theme2.ThemeConfig;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CheckboxKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ int f$6;

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda3(Modifier modifier, Function0 function0, boolean z, int i) {
        this.$r8$classId = 1;
        this.f$1 = modifier;
        this.f$4 = function0;
        this.f$0 = z;
        this.f$6 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        Object obj3 = this.f$4;
        boolean z = this.f$0;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CardKt.Checkbox(z, (Function1) obj4, (CheckboxColors) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Util.SelectionHandleIcon((Modifier) obj4, (Function0) obj3, z, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                Utf8.SafeProcessor.TextFieldSelectionHandle(z, (ResolvedTextDirection) obj4, (TextFieldSelectionManager) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                MathKt.AccountOAuthContent((AccountOAuthContract$State) obj3, (Function1) obj4, z, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                CloseableKt.MainTheme((ThemeConfig) obj4, z, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda3(int i, int i2, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i2;
        this.f$0 = z;
        this.f$1 = obj;
        this.f$4 = obj2;
        this.f$6 = i;
    }

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda3(AccountOAuthContract$State accountOAuthContract$State, Function1 function1, boolean z, int i) {
        this.$r8$classId = 3;
        this.f$4 = accountOAuthContract$State;
        this.f$1 = function1;
        this.f$0 = z;
        this.f$6 = i;
    }

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda3(ThemeConfig themeConfig, boolean z, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = 4;
        this.f$1 = themeConfig;
        this.f$0 = z;
        this.f$4 = composableLambdaImpl;
        this.f$6 = i;
    }
}
