package org.wikipedia.widgets;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.talk.TalkTopicsActivity$$ExternalSyntheticLambda4;
import org.wikipedia.util.DeviceUtil;
import org.wikipedia.widgets.WidgetProviderFeaturedPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchWidgetInstallDialog$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchWidgetInstallDialog f$0;

    public /* synthetic */ SearchWidgetInstallDialog$$ExternalSyntheticLambda0(SearchWidgetInstallDialog searchWidgetInstallDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = searchWidgetInstallDialog;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        SearchWidgetInstallDialog searchWidgetInstallDialog = this.f$0;
        int i2 = 1;
        int i3 = 2;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-1452083910, new SearchWidgetInstallDialog$$ExternalSyntheticLambda0(searchWidgetInstallDialog, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = UtilsKt.stringResource(R.string.search_widget_install_prompt_title, gapComposer2);
                    String stringResource2 = UtilsKt.stringResource(R.string.search_widget_install_prompt_message, gapComposer2);
                    boolean changedInstance = gapComposer2.changedInstance(searchWidgetInstallDialog);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new TalkTopicsActivity$$ExternalSyntheticLambda4(i3, searchWidgetInstallDialog);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    TabsBoxKt.InstallWidgetScreen(stringResource, stringResource2, (Function0) rememberedValue, Expect_jvmKt.rememberComposableLambda(926192887, new SearchWidgetInstallDialog$$ExternalSyntheticLambda0(searchWidgetInstallDialog, i3), gapComposer2), null, WidgetProviderFeaturedPage.Companion.lambda$530805054, gapComposer2, 199680);
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean isPinWidgetSupported = DeviceUtil.isPinWidgetSupported();
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
                    boolean changed = gapComposer3.changed(isPinWidgetSupported) | gapComposer3.changedInstance(searchWidgetInstallDialog);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ConnectionPoolImpl$$ExternalSyntheticLambda2(isPinWidgetSupported, searchWidgetInstallDialog, 6);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue2, fillMaxWidth, 0L, 0L, Expect_jvmKt.rememberComposableLambda(-540614285, new GamesHubScreenKt$$ExternalSyntheticLambda5(3, isPinWidgetSupported), gapComposer3), gapComposer3, 24624, 12);
                    break;
                }
        }
        return unit;
    }
}
