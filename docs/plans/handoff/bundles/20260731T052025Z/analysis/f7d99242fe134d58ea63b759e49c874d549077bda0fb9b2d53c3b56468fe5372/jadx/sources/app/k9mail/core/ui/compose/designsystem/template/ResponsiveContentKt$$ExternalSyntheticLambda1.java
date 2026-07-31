package app.k9mail.core.ui.compose.designsystem.template;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ResponsiveContentKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ ResponsiveContentKt$$ExternalSyntheticLambda1(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = composableLambdaImpl;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        ComposableLambdaImpl composableLambdaImpl = this.f$1;
        Modifier modifier = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                ScaffoldKt.CompactContent(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar$1(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                DefaultTextContextMenuDropdownProvider_androidKt.ProvideDefaultTextContextMenuDropdown(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvideDefaultPlatformTextContextMenuProviders(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvideBothDefaultProviders(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ScaffoldKt.MediumContent(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ScaffoldKt.ExpandedContent(modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
