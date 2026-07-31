package net.newpipe.app.screen.about;

import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import net.newpipe.app.composable.TopAppBarKt;
import net.newpipe.app.screen.settings.model.SettingsCategory;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jetbrains.compose.resources.StringResourcesKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4 implements Function4 {
    public final /* synthetic */ List $items;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4(int i, List list) {
        this.$r8$classId = i;
        this.$items = list;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        int i2;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        List list = this.$items;
        switch (i3) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                int intValue = ((Number) obj2).intValue();
                Composer composer = (Composer) obj3;
                int intValue2 = ((Number) obj4).intValue();
                if ((intValue2 & 6) == 0) {
                    i = intValue2 | (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2);
                } else {
                    i = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(i & 1, (i & Token.EXPR_VOID) != 146)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String str = (String) list.get(intValue);
                    gapComposer.startReplaceGroup(1613061791);
                    TextKt.m164TextNvy7gAk(str, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer, 0, 262142);
                    gapComposer.end(false);
                    break;
                }
            default:
                LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj;
                int intValue3 = ((Number) obj2).intValue();
                Composer composer2 = (Composer) obj3;
                int intValue4 = ((Number) obj4).intValue();
                if ((intValue4 & 6) == 0) {
                    i2 = intValue4 | (((GapComposer) composer2).changed(lazyItemScopeImpl2) ? 4 : 2);
                } else {
                    i2 = intValue4;
                }
                if ((intValue4 & 48) == 0) {
                    i2 |= ((GapComposer) composer2).changed(intValue3) ? 32 : 16;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    SettingsCategory settingsCategory = (SettingsCategory) ((ArrayList) list).get(intValue3);
                    gapComposer2.startReplaceGroup(-1779632832);
                    TopAppBarKt.PreferenceRow(StringResourcesKt.stringResource(settingsCategory.title, gapComposer2), null, ImageResourcesKt.painterResource(settingsCategory.icon, gapComposer2), settingsCategory.onClick, gapComposer2, 512);
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }
}
