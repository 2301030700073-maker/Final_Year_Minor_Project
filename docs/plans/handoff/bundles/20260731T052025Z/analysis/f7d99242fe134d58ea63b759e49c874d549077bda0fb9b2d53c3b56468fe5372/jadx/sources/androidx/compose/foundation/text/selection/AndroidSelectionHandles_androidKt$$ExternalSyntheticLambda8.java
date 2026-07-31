package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.work.Operation$State;
import androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda1;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import okhttp3.Cookie;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8(Function0 function0, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Modifier modifier = (Modifier) obj;
                ((Integer) obj3).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-196777734);
                final long j = ((TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors)).handleColor;
                boolean changed = gapComposer.changed(j);
                final Function0 function0 = this.f$0;
                boolean changed2 = changed | gapComposer.changed(function0);
                final boolean z = this.f$1;
                boolean changed3 = changed2 | gapComposer.changed(z);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed3 || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new Function1() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            CacheDrawScope cacheDrawScope = (CacheDrawScope) obj4;
                            return cacheDrawScope.onDrawWithContent(new WorkerWrapper$$ExternalSyntheticLambda1(function0, z, Util.createHandleImage(cacheDrawScope, Float.intBitsToFloat((int) (cacheDrawScope.cacheParams.mo406getSizeNHjbRc() >> 32)) / 2.0f), new BlendModeColorFilter(5, j), 1));
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Modifier drawWithCache = ClipKt.drawWithCache(modifier, (Function1) rememberedValue);
                gapComposer.end(false);
                break;
            case 1:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer2, R.string.navigation_drawer_dropdown_action_sync_all_accounts), this.f$0, Icons$Outlined.Sync, null, this.f$1, gapComposer2, 0, 8);
                    break;
                }
            case 2:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer3, R.string.navigation_drawer_dropdown_action_sync_account), this.f$0, Icons$Outlined.Sync, null, this.f$1, gapComposer3, 0, 8);
                    break;
                }
            default:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyGridItemScopeImpl) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (!gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Cookie.Companion.SettingListItem(Operation$State.stringResource(gapComposer4, R.string.navigation_drawer_dropdown_action_sync_all_accounts), this.f$0, Icons$Outlined.Sync, null, this.f$1, gapComposer4, 0, 8);
                    break;
                }
        }
        return unit;
    }
}
