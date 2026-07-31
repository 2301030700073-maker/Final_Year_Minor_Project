package androidx.compose.material3;

import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.work.Operation$State;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ListItemKt$ListItem$2 implements Function2 {
    public final /* synthetic */ Object $decoratedHeadlineContent;
    public final /* synthetic */ Object $decoratedLeadingContent;
    public final /* synthetic */ Object $decoratedOverlineContent;
    public final /* synthetic */ Object $decoratedSupportingContent;
    public final /* synthetic */ Object $decoratedTrailingContent;
    public final /* synthetic */ int $r8$classId = 0;

    public ListItemKt$ListItem$2(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, ComposableLambdaImpl composableLambdaImpl4, ComposableLambdaImpl composableLambdaImpl5) {
        this.$decoratedLeadingContent = composableLambdaImpl;
        this.$decoratedTrailingContent = composableLambdaImpl2;
        this.$decoratedHeadlineContent = composableLambdaImpl3;
        this.$decoratedOverlineContent = composableLambdaImpl4;
        this.$decoratedSupportingContent = composableLambdaImpl5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$decoratedHeadlineContent;
        Object obj4 = this.$decoratedOverlineContent;
        Object obj5 = this.$decoratedSupportingContent;
        Object obj6 = this.$decoratedLeadingContent;
        Object obj7 = this.$decoratedTrailingContent;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CardKt.ListItemLayout((Function2) obj6, (Function2) obj7, (ComposableLambdaImpl) obj3, (Function2) obj4, (Function2) obj5, gapComposer, 384);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                DialogNavigator dialogNavigator = (DialogNavigator) obj7;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj6;
                if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer2.getSkipping()) {
                    boolean changedInstance = gapComposer2.changedInstance(navBackStackEntry) | gapComposer2.changedInstance(dialogNavigator);
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj5;
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(snapshotStateList, navBackStackEntry, dialogNavigator, 16);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Updater.DisposableEffect(navBackStackEntry, (Function1) rememberedValue, gapComposer2);
                    Operation$State.LocalOwnersProvider(navBackStackEntry, (SaveableStateHolder) obj4, Expect_jvmKt.rememberComposableLambda(-497631156, new ButtonKt$Button$2.AnonymousClass1(8, (DialogNavigator.Destination) obj3, navBackStackEntry), gapComposer2), gapComposer2, 384);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }

    public ListItemKt$ListItem$2(NavBackStackEntry navBackStackEntry, DialogNavigator dialogNavigator, SaveableStateHolderImpl saveableStateHolderImpl, SnapshotStateList snapshotStateList, DialogNavigator.Destination destination) {
        this.$decoratedLeadingContent = navBackStackEntry;
        this.$decoratedTrailingContent = dialogNavigator;
        this.$decoratedOverlineContent = saveableStateHolderImpl;
        this.$decoratedSupportingContent = snapshotStateList;
        this.$decoratedHeadlineContent = destination;
    }
}
