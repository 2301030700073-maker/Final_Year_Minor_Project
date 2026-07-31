package androidx.compose.material3;

import android.content.res.Resources;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.InsetsPaddingValues;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import okio.Okio;
import org.minidns.util.Base64;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(WindowInsets windowInsets, Function2 function2, Function2 function22, Function2 function23, int i, Function2 function24, ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1, Function2 function25) {
        this.$r8$classId = 0;
        this.f$0 = windowInsets;
        this.f$1 = function2;
        this.f$2 = function22;
        this.f$3 = function23;
        this.f$4 = i;
        this.f$5 = function24;
        this.f$6 = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
        this.f$7 = function25;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        final Placeable placeable;
        int mo171roundToPx0680j_4;
        int mo171roundToPx0680j_42;
        int i;
        FabPlacement fabPlacement;
        int i2;
        final Integer num;
        final int i3;
        int intValue;
        int mo171roundToPx0680j_43;
        int bottom;
        int i4 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i5 = this.f$4;
        Object obj3 = this.f$1;
        Object obj4 = this.f$6;
        Object obj5 = this.f$7;
        Object obj6 = this.f$5;
        Object obj7 = this.f$3;
        Object obj8 = this.f$2;
        Object obj9 = this.f$0;
        switch (i4) {
            case 0:
                final WindowInsets windowInsets = (WindowInsets) obj9;
                Function2 function2 = (Function2) obj6;
                ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj4;
                Function2 function22 = (Function2) obj5;
                final SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                final int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(constraints.value);
                final int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(constraints.value);
                long m727copyZbe2FdA$default = Constraints.m727copyZbe2FdA$default(constraints.value, 0, 0, 0, 0, 10);
                int left = windowInsets.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int right = windowInsets.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int bottom2 = windowInsets.getBottom(subcomposeMeasureScope);
                final Placeable mo571measureBRTryo0 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.TopBar, (Function2) obj3))).mo571measureBRTryo0(m727copyZbe2FdA$default);
                int i6 = (-left) - right;
                int i7 = -bottom2;
                final Placeable mo571measureBRTryo02 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Snackbar, (Function2) obj8))).mo571measureBRTryo0(ConstraintsKt.m742offsetNN6EwU(i6, i7, m727copyZbe2FdA$default));
                Placeable mo571measureBRTryo03 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Fab, (Function2) obj7))).mo571measureBRTryo0(ConstraintsKt.m742offsetNN6EwU(i6, i7, m727copyZbe2FdA$default));
                int i8 = mo571measureBRTryo03.width;
                if (i8 == 0 && mo571measureBRTryo03.height == 0) {
                    placeable = mo571measureBRTryo03;
                    fabPlacement = null;
                    i2 = 0;
                } else {
                    int i9 = mo571measureBRTryo03.height;
                    LayoutDirection layoutDirection = LayoutDirection.Ltr;
                    if (i5 == 0) {
                        placeable = mo571measureBRTryo03;
                        if (subcomposeMeasureScope.getLayoutDirection() == layoutDirection) {
                            mo171roundToPx0680j_4 = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f);
                            i = mo171roundToPx0680j_4 + left;
                        } else {
                            mo171roundToPx0680j_42 = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f);
                            i = ((m734getMaxWidthimpl - mo171roundToPx0680j_42) - i8) - right;
                        }
                    } else {
                        placeable = mo571measureBRTryo03;
                        if (i5 != 2 && i5 != 3) {
                            i = (((m734getMaxWidthimpl - i8) + left) - right) / 2;
                        } else if (subcomposeMeasureScope.getLayoutDirection() == layoutDirection) {
                            mo171roundToPx0680j_42 = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f);
                            i = ((m734getMaxWidthimpl - mo171roundToPx0680j_42) - i8) - right;
                        } else {
                            mo171roundToPx0680j_4 = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f);
                            i = mo171roundToPx0680j_4 + left;
                        }
                    }
                    i2 = 0;
                    fabPlacement = new FabPlacement(i, i9, 0);
                }
                final Placeable mo571measureBRTryo04 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.BottomBar, function2))).mo571measureBRTryo0(m727copyZbe2FdA$default);
                int i10 = (mo571measureBRTryo04.width == 0 && mo571measureBRTryo04.height == 0) ? 1 : i2;
                if (fabPlacement != null) {
                    int i11 = fabPlacement.height;
                    if (i10 != 0 || i5 == 3) {
                        mo171roundToPx0680j_43 = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f) + i11;
                        bottom = windowInsets.getBottom(subcomposeMeasureScope);
                    } else {
                        mo171roundToPx0680j_43 = mo571measureBRTryo04.height + i11;
                        bottom = subcomposeMeasureScope.mo171roundToPx0680j_4(16.0f);
                    }
                    num = Integer.valueOf(bottom + mo171roundToPx0680j_43);
                } else {
                    num = null;
                }
                int i12 = mo571measureBRTryo02.height;
                if (i12 != 0) {
                    if (num != null) {
                        intValue = num.intValue();
                    } else {
                        Integer valueOf = i10 == 0 ? Integer.valueOf(mo571measureBRTryo04.height) : null;
                        intValue = valueOf != null ? valueOf.intValue() : windowInsets.getBottom(subcomposeMeasureScope);
                    }
                    i3 = i12 + intValue;
                } else {
                    i3 = i2;
                }
                InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(windowInsets, subcomposeMeasureScope);
                scaffoldKt$ScaffoldLayout$contentPadding$1$1.paddingHolder$delegate.setValue(new PaddingValuesImpl(OffsetKt.calculateStartPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), (mo571measureBRTryo0.width == 0 && mo571measureBRTryo0.height == 0) ? insetsPaddingValues.mo211calculateTopPaddingD9Ej5fM() : subcomposeMeasureScope.mo174toDpu2uoSUM(mo571measureBRTryo0.height), OffsetKt.calculateEndPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), i10 != 0 ? insetsPaddingValues.mo208calculateBottomPaddingD9Ej5fM() : subcomposeMeasureScope.mo174toDpu2uoSUM(mo571measureBRTryo04.height)));
                final Placeable mo571measureBRTryo05 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.MainContent, function22))).mo571measureBRTryo0(m727copyZbe2FdA$default);
                final FabPlacement fabPlacement2 = fabPlacement;
                break;
            case 1:
                ((Integer) obj2).getClass();
                TextInputKt.SelectInput((ImmutableList) obj9, this.f$1, (Function1) obj8, (Modifier) obj7, (Function1) obj6, (String) obj5, (PaddingValuesImpl) obj4, (Composer) obj, Updater.updateChangedFlags(1), this.f$4);
                break;
            case 2:
                ((Integer) obj2).getClass();
                BannerInlineNotificationCardKt.BannerInlineNotificationCard((ComposableLambdaImpl) obj9, (ComposableLambdaImpl) obj3, (ComposableLambdaImpl) obj8, (Modifier) obj7, (app.k9mail.core.ui.compose.designsystem.atom.card.CardColors) obj6, (BorderStroke) obj5, (Shape) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                AutoDiscoveryStringMapperKt.ContentView((AccountAutoDiscoveryContract$State) obj9, (Function1) obj3, (Function0) obj8, (Function0) obj7, (AccountOAuthContract$ViewModel) obj6, (Resources) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                Okio.FetchingMailSettingsContent((FetchingMailSettingsContract$State) obj9, (Function1) obj3, (Function0) obj8, (DialogSettingViewProvider) obj7, (FetchingMailSettingsBuilder) obj6, (AppNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                Base64.ReadingMailSettingsContent((ReadingMailSettingsContract$State) obj9, (Function1) obj3, (Function0) obj8, (DialogSettingViewProvider) obj7, (ReadingMailSettingsBuilder) obj6, (AppNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                Hex.SearchSettingContent((SearchSettingsContract$State) obj9, (Function1) obj3, (Function0) obj8, (DialogSettingViewProvider) obj7, (AppNameProvider) obj6, (SearchSettingBuilder) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.InAppNotificationHost((Function1) obj9, (Modifier) obj8, (InAppNotificationHostStateHolder) obj7, (PaddingValues) obj6, (Function2) obj3, (Function1) obj5, (Function3) obj4, (Composer) obj, Updater.updateChangedFlags(i5 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(Object obj, Function function, Function function2, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = function;
        this.f$2 = function2;
        this.f$3 = obj2;
        this.f$5 = obj3;
        this.f$7 = obj4;
        this.f$6 = obj5;
        this.f$4 = i;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(Function1 function1, Modifier modifier, InAppNotificationHostStateHolder inAppNotificationHostStateHolder, PaddingValues paddingValues, Function2 function2, Function1 function12, Function3 function3, int i) {
        this.$r8$classId = 7;
        this.f$0 = function1;
        this.f$2 = modifier;
        this.f$3 = inAppNotificationHostStateHolder;
        this.f$5 = paddingValues;
        this.f$1 = function2;
        this.f$7 = function12;
        this.f$6 = function3;
        this.f$4 = i;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(ImmutableList immutableList, Object obj, Function1 function1, Modifier modifier, Function1 function12, String str, PaddingValuesImpl paddingValuesImpl, int i, int i2) {
        this.$r8$classId = 1;
        this.f$0 = immutableList;
        this.f$1 = obj;
        this.f$2 = function1;
        this.f$3 = modifier;
        this.f$5 = function12;
        this.f$7 = str;
        this.f$6 = paddingValuesImpl;
        this.f$4 = i2;
    }
}
