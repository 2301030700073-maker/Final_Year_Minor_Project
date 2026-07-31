package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidTextContextMenuToolbarProvider_androidKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ AndroidTextContextMenuToolbarProvider_androidKt$$ExternalSyntheticLambda0(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
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
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar(modifier, composableLambdaImpl, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar$1(modifier, composableLambdaImpl, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                DefaultTextContextMenuDropdownProvider_androidKt.ProvideDefaultTextContextMenuDropdown(modifier, composableLambdaImpl, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvideDefaultPlatformTextContextMenuProviders(modifier, composableLambdaImpl, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                AndroidTextContextMenuToolbarProvider_androidKt.ProvideBothDefaultProviders(modifier, composableLambdaImpl, gapComposer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
