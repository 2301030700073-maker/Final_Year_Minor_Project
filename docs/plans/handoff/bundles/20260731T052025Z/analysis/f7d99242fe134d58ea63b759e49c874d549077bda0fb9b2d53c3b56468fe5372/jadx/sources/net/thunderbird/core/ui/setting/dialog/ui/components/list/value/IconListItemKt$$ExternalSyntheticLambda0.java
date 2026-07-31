package net.thunderbird.core.ui.setting.dialog.ui.components.list.value;

import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.core.util.DebugUtils;
import androidx.work.Data;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IconListItemKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingValue.IconList f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ IconListItemKt$$ExternalSyntheticLambda0(SettingValue.IconList iconList, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = iconList;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        boolean z = false;
        Function1 function1 = this.f$1;
        SettingValue.IconList iconList = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    DebugUtils.m787TextTitleMediumXl4FiYE((String) iconList.title.invoke(), null, 0L, null, 0, 0, gapComposer, 0, 62);
                    GapComposer gapComposer2 = gapComposer;
                    String str = (String) iconList.description.invoke();
                    if (str == null) {
                        gapComposer2.startReplaceGroup(1903913815);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(1903913816);
                        Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer2, 0, 126);
                        gapComposer2 = gapComposer2;
                        gapComposer2.end(false);
                    }
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings), companion, 4.0f, gapComposer2);
                    ImmutableList immutableList = iconList.icons;
                    ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    Base64.m1086AutoHeightLazyVerticalGridQ2ewo60(immutableList, null, 0.0f, 0.0f, Expect_jvmKt.rememberComposableLambda(825939135, new IconListItemKt$$ExternalSyntheticLambda0(iconList, function1, i2), gapComposer2), gapComposer2, 196608);
                    break;
                }
            default:
                SettingValue.IconList.IconOption iconOption = (SettingValue.IconList.IconOption) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                iconOption.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(iconOption) : ((GapComposer) composer2).changedInstance(iconOption) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    int i3 = intValue2;
                    long j = iconList.color;
                    boolean equals = iconOption.equals(iconList.value);
                    ((ThemeSizes) gapComposer3.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, 48.0f);
                    boolean changed = gapComposer3.changed(function1) | gapComposer3.changedInstance(iconList);
                    int i4 = i3 & 14;
                    if (i4 == 4 || ((i3 & 8) != 0 && gapComposer3.changedInstance(iconOption))) {
                        z = true;
                    }
                    boolean z2 = changed | z;
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (z2 || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new SettingListKt$$ExternalSyntheticLambda0(function1, iconList, iconOption);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    Hex.m1087IconViewl6Txn0U(iconOption, j, (Function1) rememberedValue, m234size3ABfNKs, equals, 0.0f, gapComposer3, i4);
                    break;
                }
                break;
        }
        return unit;
    }
}
