package androidx.compose.material3;

import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.text.AnnotatedStringResolveInlineContentKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Failure$LoadFoldersFailed;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import java.util.List;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.setting.SettingDecoration$Custom;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Error;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import okio.Okio;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ TextKt$$ExternalSyntheticLambda0(ComposableLambdaImpl composableLambdaImpl, Object obj, int i) {
        this.$r8$classId = 8;
        this.f$1 = composableLambdaImpl;
        this.f$0 = obj;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TextKt.ProvideTextStyle((TextStyle) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).intValue();
                ((Transition) obj4).animateTo$animation_core(obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                ((LazyListItemProviderImpl) obj4).Item(i2, obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ((LazyGridItemProviderImpl) obj4).Item(i2, obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    lazyLayoutItemProvider.Item(i2, obj3, gapComposer, 0);
                    break;
                }
            case 5:
                ((Integer) obj2).intValue();
                AnnotatedStringResolveInlineContentKt.InlineChildren((AnnotatedString) obj4, (List) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).intValue();
                Updater.CompositionLocalProvider((ProvidedValue) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                Updater.CompositionLocalProvider((ProvidedValue[]) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj3).invoke(obj4, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 9:
                CharSequence charSequence = (CharSequence) obj4;
                BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour = (BannerInlineNotificationCardBehaviour) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    BannerInlineNotificationCardKt.BannerInlineNotificationTitle(charSequence, bannerInlineNotificationCardBehaviour, this.f$2, null, gapComposer2, 0);
                    break;
                }
            case 10:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.EditConfigurationButton((Modifier) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).intValue();
                SpecialFoldersScreenKt.SpecialFoldersErrorView((SpecialFoldersContract$Failure$LoadFoldersFailed) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).intValue();
                Util.QrCodeScannerBottomContent((String) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                ((K9FeatureThemeProvider) obj4).WithTheme((ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                Okio.RenderSettingDecoration((SettingDecoration$Custom) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj2).getClass();
                CloseableKt.ActionTextItem((SettingValue.ActionText) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 16:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.InAppNotificationReceiverEffect((Function1) obj4, (InAppNotificationHostStateHolder) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                ThundermailOAuthRedirectScreenKt.LaunchedErrorEffect((ThundermailContract$State) obj4, (NavController$$ExternalSyntheticLambda0) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ThundermailOAuthRedirectScreenKt.ErrorDetails((ThundermailContract$Error) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda0(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        this.$r8$classId = 4;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda0(LazyLayoutItemProvider lazyLayoutItemProvider, int i, Object obj, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda0(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
    }
}
