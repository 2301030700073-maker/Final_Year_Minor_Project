package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.text.TextRange;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                String obj6 = ((CharSequence) obj4).subSequence(TextRange.m644getMinimpl(j), TextRange.m643getMaximpl(j)).toString();
                Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", booleanValue);
                ActivityInfo activityInfo = ((ResolveInfo) obj2).activityInfo;
                Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
                className.putExtra("android.intent.extra.PROCESS_TEXT", obj6);
                ((Context) obj).startActivity(className);
                break;
            case 1:
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer = (GapComposer) obj4;
                int intValue = ((Integer) obj5).intValue();
                if ((intValue & 6) == 0) {
                    i = intValue | ((intValue & 8) == 0 ? gapComposer.changed(textContextMenuSession) : gapComposer.changedInstance(textContextMenuSession) ? 4 : 2);
                } else {
                    i = intValue;
                }
                if ((intValue & 48) == 0) {
                    i |= (intValue & 64) == 0 ? gapComposer.changed(textContextMenuDataProvider) : gapComposer.changedInstance(textContextMenuDataProvider) ? 32 : 16;
                }
                if ((intValue & 384) == 0) {
                    i |= gapComposer.changedInstance(function0) ? 256 : 128;
                }
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
                GapComposer gapComposer2 = (GapComposer) obj4;
                int intValue2 = ((Integer) obj5).intValue();
                if ((intValue2 & 6) == 0) {
                    i2 = intValue2 | ((intValue2 & 8) == 0 ? gapComposer2.changed(textContextMenuSession2) : gapComposer2.changedInstance(textContextMenuSession2) ? 4 : 2);
                } else {
                    i2 = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i2 |= (intValue2 & 64) == 0 ? gapComposer2.changed(textContextMenuDataProvider2) : gapComposer2.changedInstance(textContextMenuDataProvider2) ? 32 : 16;
                }
                if ((intValue2 & 384) == 0) {
                    i2 |= gapComposer2.changedInstance(function02) ? 256 : 128;
                }
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
