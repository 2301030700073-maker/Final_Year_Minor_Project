package net.thunderbird.feature.account.settings.impl.ui.general;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.core.util.DebugUtils;
import androidx.work.Data;
import androidx.work.Operation$State;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.Handshake;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class GeneralSettingsBuilder$$ExternalSyntheticLambda10 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InAppNotificationHostKt$$ExternalSyntheticLambda4 f$0;

    public /* synthetic */ GeneralSettingsBuilder$$ExternalSyntheticLambda10(InAppNotificationHostKt$$ExternalSyntheticLambda4 inAppNotificationHostKt$$ExternalSyntheticLambda4, int i) {
        this.$r8$classId = i;
        this.f$0 = inAppNotificationHostKt$$ExternalSyntheticLambda4;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((Modifier) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Handshake.Companion.AvatarImageSelection(this.f$0, null, gapComposer, 0);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    DebugUtils.m787TextTitleMediumXl4FiYE(Operation$State.stringResource(gapComposer2, R.string.account_settings_general_avatar_image_title), null, 0L, null, 0, 0, gapComposer2, 0, 62);
                    Data.Companion.m825TextBodyMediumZHfKjFs(Operation$State.stringResource(gapComposer2, R.string.account_settings_general_avatar_image_description), (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer2, 0, 126);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal), Modifier.Companion.$$INSTANCE, 8.0f, gapComposer2);
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(9, Alignment.Companion.CenterHorizontally));
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer2, 48);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, fillElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Validate.ButtonOutlined(Operation$State.stringResource(gapComposer2, R.string.account_settings_general_avatar_image_select), this.f$0, null, false, Icons$Outlined.Upload, null, null, null, gapComposer2, 0, 236);
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }
}
