package com.skydoves.landscapist.coil3;

import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageState;
import com.skydoves.landscapist.components.ImageComponent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.math.MathKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import net.thunderbird.feature.notification.api.ui.layout.InAppNotificationScaffoldContent;
import okio.Options;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoilImageKt$$ExternalSyntheticLambda14 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda14(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit CoilImage$lambda$7$2$1;
        Object obj3;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$5;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$2;
        Object obj8 = this.f$1;
        Object obj9 = this.f$0;
        switch (i) {
            case 0:
                CoilImage$lambda$7$2$1 = CoilImageKt.CoilImage$lambda$7$2$1((ImageComponent) obj9, (Function5) obj8, (BoxWithConstraintsScope) obj7, (CoilImageState.Success) obj6, (Painter) obj5, (ImageOptions) obj4, (Composer) obj, ((Integer) obj2).intValue());
                return CoilImage$lambda$7$2$1;
            case 1:
                ((Integer) obj2).getClass();
                AutoDiscoveryStringMapperKt.AutoDiscoveryContent((AccountAutoDiscoveryContract$State) obj9, (Function1) obj8, (Function0) obj7, (Function0) obj6, (AccountOAuthContract$ViewModel) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(9));
                return unit;
            case 2:
                ((Integer) obj2).getClass();
                Util.AttachmentListModalBottomSheet((ImmutableList) obj9, (SizeFormatter) obj8, (Function0) obj7, (Function1) obj6, (Function1) obj5, (Function0) obj4, (Composer) obj, Updater.updateChangedFlags(73));
                return unit;
            case 3:
                ((Integer) obj2).getClass();
                Options.Companion.FetchingMailSettingsScreen((AccountId) obj9, (Function0) obj8, (FetchingMailSettingsViewModel) obj7, (DialogSettingViewProvider) obj6, (FetchingMailSettingsBuilder) obj5, (AppNameProvider) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 4:
                ((Integer) obj2).getClass();
                CharsKt__CharKt.ReadingMailSettingsScreen((AccountId) obj9, (Function0) obj8, (ReadingMailSettingsViewModel) obj7, (DialogSettingViewProvider) obj6, (ReadingMailSettingsBuilder) obj5, (AppNameProvider) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 5:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.SearchSettingsScreen((AccountId) obj9, (Function0) obj8, (SearchSettingsViewModel) obj7, (DialogSettingViewProvider) obj6, (SearchSettingBuilder) obj5, (AppNameProvider) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            default:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj8;
                final BannerInlineListScrollState bannerInlineListScrollState = (BannerInlineListScrollState) obj7;
                final PaddingValues paddingValues = (PaddingValues) obj6;
                Function3 function3 = (Function3) obj5;
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) obj4;
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                subcomposeMeasureScope.getClass();
                long j = constraints.value;
                int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
                long m727copyZbe2FdA$default = Constraints.m727copyZbe2FdA$default(constraints.value, 0, 0, 0, 0, 10);
                List subcompose = subcomposeMeasureScope.subcompose(InAppNotificationScaffoldContent.BannerGlobal, (ComposableLambdaImpl) obj9);
                final ArrayList arrayList = new ArrayList(subcompose.size());
                int size = subcompose.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(((Measurable) subcompose.get(i2)).mo571measureBRTryo0(m727copyZbe2FdA$default));
                }
                if (arrayList.isEmpty()) {
                    obj3 = null;
                } else {
                    obj3 = arrayList.get(0);
                    int i3 = ((Placeable) obj3).height;
                    int size2 = arrayList.size() - 1;
                    if (1 <= size2) {
                        int i4 = 1;
                        while (true) {
                            Object obj10 = arrayList.get(i4);
                            int i5 = ((Placeable) obj10).height;
                            if (i3 < i5) {
                                i3 = i5;
                                obj3 = obj10;
                            }
                            if (i4 != size2) {
                                i4++;
                            }
                        }
                    }
                }
                Placeable placeable = (Placeable) obj3;
                final int i6 = placeable != null ? placeable.height : 0;
                List subcompose2 = subcomposeMeasureScope.subcompose(InAppNotificationScaffoldContent.BannerInlineList, composableLambdaImpl);
                final ArrayList arrayList2 = new ArrayList(subcompose2.size());
                int size3 = subcompose2.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    arrayList2.add(((Measurable) subcompose2.get(i7)).mo571measureBRTryo0(m727copyZbe2FdA$default));
                }
                int size4 = arrayList2.size();
                int i8 = 0;
                for (int i9 = 0; i9 < size4; i9++) {
                    i8 += ((Placeable) arrayList2.get(i9)).height;
                }
                parcelableSnapshotMutableFloatState.setFloatValue(i8);
                List subcompose3 = subcomposeMeasureScope.subcompose(InAppNotificationScaffoldContent.MainContent, new ComposableLambdaImpl(-684144615, new LifecycleEffectKt$$ExternalSyntheticLambda0(subcomposeMeasureScope, i6, bannerInlineListScrollState, paddingValues, function3), true));
                final ArrayList arrayList3 = new ArrayList(subcompose3.size());
                int size5 = subcompose3.size();
                for (int i10 = 0; i10 < size5; i10++) {
                    arrayList3.add(((Measurable) subcompose3.get(i10)).mo571measureBRTryo0(m727copyZbe2FdA$default));
                }
                int size6 = arrayList3.size();
                int i11 = 0;
                for (int i12 = 0; i12 < size6; i12++) {
                    i11 += ((Placeable) arrayList3.get(i12)).height;
                }
                return subcomposeMeasureScope.layout(m734getMaxWidthimpl, (Constraints.m735getMinHeightimpl(j) == 0 || Constraints.m733getMaxHeightimpl(j) == Integer.MAX_VALUE) ? ConstraintsKt.m740constrainHeightK40F9xA(MathKt.roundToInt(parcelableSnapshotMutableFloatState.getFloatValue()) + i6 + i11, j) : Constraints.m733getMaxHeightimpl(j), EmptyMap.INSTANCE, new Function1() { // from class: net.thunderbird.feature.notification.api.ui.layout.InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj11) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj11;
                        placementScope.getClass();
                        ArrayList arrayList4 = arrayList3;
                        int size7 = arrayList4.size();
                        for (int i13 = 0; i13 < size7; i13++) {
                            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) arrayList4.get(i13), 0, 0);
                        }
                        float density = placementScope.getDensity() * paddingValues.mo211calculateTopPaddingD9Ej5fM();
                        BannerInlineListScrollState bannerInlineListScrollState2 = bannerInlineListScrollState;
                        if (!bannerInlineListScrollState2.isBannerListOffScreen()) {
                            ArrayList arrayList5 = arrayList2;
                            int size8 = arrayList5.size();
                            for (int i14 = 0; i14 < size8; i14++) {
                                Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) arrayList5.get(i14), 0, MathKt.roundToInt(bannerInlineListScrollState2.bannerInlineListHeightOffset$delegate.getFloatValue() + i6 + density));
                            }
                        }
                        ArrayList arrayList6 = arrayList;
                        int size9 = arrayList6.size();
                        for (int i15 = 0; i15 < size9; i15++) {
                            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) arrayList6.get(i15), 0, MathKt.roundToInt(density));
                        }
                        return Unit.INSTANCE;
                    }
                });
        }
    }

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda14(Object obj, Function5 function5, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = function5;
        this.f$2 = obj2;
        this.f$3 = obj3;
        this.f$4 = obj4;
        this.f$5 = obj5;
    }
}
