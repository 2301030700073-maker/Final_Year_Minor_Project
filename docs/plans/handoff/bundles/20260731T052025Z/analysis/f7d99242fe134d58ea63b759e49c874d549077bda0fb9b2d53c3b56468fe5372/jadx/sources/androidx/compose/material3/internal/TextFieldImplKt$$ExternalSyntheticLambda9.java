package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import androidx.work.Operation$State;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.notification.resources.api.String0_commonMainKt;
import okhttp3.Cookie;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$$ExternalSyntheticLambda9 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda9(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                float f = ((Dp) this.f$0.invoke()).value;
                Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(constraints.value, 0, 0, ConstraintsKt.m740constrainHeightK40F9xA(Dp.m745equalsimpl0(f, Float.NaN) ? 0 : measureScope.mo171roundToPx0680j_4(f), constraints.value), 0, 11));
                break;
            case 1:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.Center;
                    FillElement fillElement = SizeKt.FillWholeMaxHeight;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier padding = OffsetKt.padding(OffsetKt.m218padding3ABfNKs(fillElement, 16.0f), paddingValues);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, Alignment.Companion.Start, gapComposer, 6);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    DBUtil.m807TextTitleLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.migration_qrcode_permission_denied_title), null, 0L, null, 0, 0, gapComposer, 0, 62);
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 16.0f, gapComposer);
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.migration_qrcode_permission_denied_message), null, 0L, null, 0, 0, gapComposer, 0, 62);
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 24.0f, gapComposer);
                    IntOffsetKt.ButtonFilled(Operation$State.stringResource(gapComposer, R.string.migration_qrcode_go_to_settings_button_text), this.f$0, TestTagKt.testTag(new HorizontalAlignElement(Alignment.Companion.CenterHorizontally), "GoToSettingsButton"), false, null, null, null, gapComposer, 0, 248);
                    gapComposer.end(true);
                    break;
                }
            case 2:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer2, R.string.navigation_drawer_dropdown_action_add_account), this.f$0, Icons$Outlined.Add, null, false, gapComposer2, 0, 24);
                    break;
                }
            case 3:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer3, R.string.navigation_drawer_dropdown_action_settings), this.f$0, Icons$Outlined.Settings, null, false, gapComposer3, 0, 24);
                    break;
                }
            case 4:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer4, R.string.navigation_drawer_dropdown_action_manage_folders), this.f$0, Icons$Outlined.FolderManaged, null, false, gapComposer4, 0, 24);
                    break;
                }
            case 5:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer5, R.string.navigation_drawer_dropdown_action_settings), this.f$0, Icons$Outlined.Settings, null, false, gapComposer5, 0, 24);
                    break;
                }
            default:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    Data.Companion.NotificationActionButton(CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.banner_inline_notification_open_notifications$delegate.getValue(), gapComposer6), this.f$0, TestTagKt.testTag(companion, "check_notifications_action"), gapComposer6, 384, 8);
                    break;
                }
        }
        return unit;
    }
}
