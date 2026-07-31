package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.text.TextRange;
import coil3.network.internal.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ProcessTextApi23Impl$$ExternalSyntheticLambda1 implements Function5 {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        int i;
        int i2;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i3) {
            case 0:
                boolean booleanValue = ((Boolean) obj3).booleanValue();
                long j = ((TextRange) obj5).packedValue;
                String obj6 = ((CharSequence) obj4).subSequence(TextRange.m702getMinimpl(j), TextRange.m701getMaximpl(j)).toString();
                Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(UtilsKt.MIME_TYPE_TEXT_PLAIN).putExtra("android.intent.extra.PROCESS_TEXT_READONLY", booleanValue);
                ActivityInfo activityInfo = ((ResolveInfo) obj2).activityInfo;
                Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
                className.putExtra("android.intent.extra.PROCESS_TEXT", obj6);
                ((Context) obj).startActivity(className);
                break;
            case 1:
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj4;
                int intValue = ((Integer) obj5).intValue();
                if ((intValue & 6) == 0) {
                    i = intValue | ((intValue & 8) == 0 ? ((GapComposer) composer).changed(textContextMenuSession) : ((GapComposer) composer).changedInstance(textContextMenuSession) ? 4 : 2);
                } else {
                    i = intValue;
                }
                if ((intValue & 48) == 0) {
                    i |= (intValue & 64) == 0 ? ((GapComposer) composer).changed(textContextMenuDataProvider) : ((GapComposer) composer).changedInstance(textContextMenuDataProvider) ? 32 : 16;
                }
                if ((intValue & 384) == 0) {
                    i |= ((GapComposer) composer).changedInstance(function0) ? 256 : 128;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(i & 1, (i & 1171) != 1170)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu(textContextMenuSession, textContextMenuDataProvider, function0, gapComposer, i & 1022);
                    break;
                }
            default:
                TextContextMenuSession textContextMenuSession2 = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider2 = (TextContextMenuDataProvider) obj2;
                Function0 function02 = (Function0) obj3;
                Composer composer2 = (Composer) obj4;
                int intValue2 = ((Integer) obj5).intValue();
                if ((intValue2 & 6) == 0) {
                    i2 = intValue2 | ((intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(textContextMenuSession2) : ((GapComposer) composer2).changedInstance(textContextMenuSession2) ? 4 : 2);
                } else {
                    i2 = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i2 |= (intValue2 & 64) == 0 ? ((GapComposer) composer2).changed(textContextMenuDataProvider2) : ((GapComposer) composer2).changedInstance(textContextMenuDataProvider2) ? 32 : 16;
                }
                if ((intValue2 & 384) == 0) {
                    i2 |= ((GapComposer) composer2).changedInstance(function02) ? 256 : 128;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu(textContextMenuSession2, textContextMenuDataProvider2, function02, gapComposer2, i2 & 1022);
                    break;
                }
        }
        return unit;
    }
}
