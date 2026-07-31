package net.thunderbird.core.ui.setting.dialog.ui.components.list;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItem;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import okhttp3.internal.http2.Http2Connection;
import okio.Okio;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3 implements Function4 {
    public final /* synthetic */ List $items;
    public final /* synthetic */ Object $onItemClick$inlined;
    public final /* synthetic */ Function1 $onSettingValueChange$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3(List list, Object obj, Function1 function1, int i) {
        this.$r8$classId = i;
        this.$items = list;
        this.$onItemClick$inlined = obj;
        this.$onSettingValueChange$inlined = function1;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        int i2;
        int i3;
        int i4 = this.$r8$classId;
        Object obj5 = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        List list = this.$items;
        Object obj6 = this.$onItemClick$inlined;
        switch (i4) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                final int intValue = ((Number) obj2).intValue();
                Composer composer = (Composer) obj3;
                int intValue2 = ((Number) obj4).intValue();
                final Function2 function2 = (Function2) obj6;
                if ((intValue2 & 6) == 0) {
                    i = intValue2 | (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2);
                } else {
                    i = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(i & 1, (i & 147) != 146)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    final Setting setting = (Setting) list.get(intValue);
                    gapComposer.startReplaceGroup(514240878);
                    boolean changed = gapComposer.changed(function2);
                    if ((((i & 112) ^ 48) <= 32 || !gapComposer.changed(intValue)) && (i & 48) != 32) {
                        r10 = false;
                    }
                    boolean changedInstance = changed | r10 | gapComposer.changedInstance(setting);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == obj5) {
                        rememberedValue = new Function0() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$SettingList$1$1$1$1$1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                Function2.this.invoke(Integer.valueOf(intValue), setting);
                                return Unit.INSTANCE;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Okio.SettingItem(setting, (Function0) rememberedValue, this.$onSettingValueChange$inlined, SizeKt.FillWholeMaxWidth, gapComposer, 3072);
                    gapComposer.end(false);
                    break;
                }
            case 1:
                LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj;
                int intValue3 = ((Number) obj2).intValue();
                Composer composer2 = (Composer) obj3;
                int intValue4 = ((Number) obj4).intValue();
                if ((intValue4 & 6) == 0) {
                    i2 = (((GapComposer) composer2).changed(lazyItemScopeImpl2) ? 4 : 2) | intValue4;
                } else {
                    i2 = intValue4;
                }
                if ((intValue4 & 48) == 0) {
                    i2 |= ((GapComposer) composer2).changed(intValue3) ? 32 : 16;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    NotificationListItem notificationListItem = (NotificationListItem) list.get(intValue3);
                    gapComposer2.startReplaceGroup(331734257);
                    boolean areEqual = Intrinsics.areEqual((String) ((NotificationActionsReorderController) obj6).draggedKey$delegate.getValue(), NotificationListItemKt.getKey(notificationListItem));
                    Modifier modifier = Modifier.Companion.$$INSTANCE;
                    if (!areEqual) {
                        modifier = Config.CC.animateItem$default(lazyItemScopeImpl2, modifier, null, 7);
                    }
                    NotificationListItemKt.NotificationActionsListItem(notificationListItem, intValue3, (NotificationActionsReorderController) obj6, this.$onSettingValueChange$inlined, modifier, gapComposer2, (i2 & 112) | 512);
                    gapComposer2.end(false);
                    break;
                }
            default:
                LazyItemScopeImpl lazyItemScopeImpl3 = (LazyItemScopeImpl) obj;
                int intValue5 = ((Number) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int intValue6 = ((Number) obj4).intValue();
                if ((intValue6 & 6) == 0) {
                    i3 = intValue6 | (((GapComposer) composer3).changed(lazyItemScopeImpl3) ? 4 : 2);
                } else {
                    i3 = intValue6;
                }
                if ((intValue6 & 48) == 0) {
                    i3 |= ((GapComposer) composer3).changed(intValue5) ? 32 : 16;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    RemoteFolder remoteFolder = (RemoteFolder) list.get(intValue5);
                    gapComposer3.startReplaceGroup(1972772809);
                    String str = remoteFolder.name;
                    boolean areEqual2 = Intrinsics.areEqual(((SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj6).selectedFolder, remoteFolder);
                    Function1 function1 = this.$onSettingValueChange$inlined;
                    boolean changed2 = gapComposer3.changed(function1) | gapComposer3.changedInstance(remoteFolder);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue2 == obj5) {
                        rememberedValue2 = new Http2Connection.ReaderRunnable(29, function1, remoteFolder);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    Base64.RemoteFolderListItem(str, areEqual2, (Function0) rememberedValue2, null, gapComposer3, 0);
                    gapComposer3.end(false);
                    break;
                }
        }
        return unit;
    }
}
