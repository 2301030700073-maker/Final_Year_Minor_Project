package androidx.compose.ui.window;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.appwidget.action.ActionTrampolineKt$launchTrampolineAction$1$WhenMappings;
import androidx.glance.appwidget.action.ActionTrampolineType;
import androidx.glance.appwidget.action.ListAdapterTrampolineApi26Impl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidDialog_androidKt$Dialog$2$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $dialog;
    public final /* synthetic */ Object $layoutDirection;
    public final /* synthetic */ Object $onDismissRequest;
    public final /* synthetic */ Object $properties;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidDialog_androidKt$Dialog$2$1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        super(0);
        this.$r8$classId = i;
        this.$dialog = obj;
        this.$onDismissRequest = obj2;
        this.$properties = obj3;
        this.$layoutDirection = obj4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.$layoutDirection;
        Object obj2 = this.$dialog;
        Object obj3 = this.$properties;
        Object obj4 = this.$onDismissRequest;
        switch (i) {
            case 0:
                ((DialogWrapper) obj2).updateParameters((Function0) obj4, (DialogProperties) obj3, (LayoutDirection) obj);
                break;
            default:
                Activity activity = (Activity) obj4;
                Intent intent = (Intent) obj3;
                int i2 = ActionTrampolineKt$launchTrampolineAction$1$WhenMappings.$EnumSwitchMapping$0[ActionTrampolineType.valueOf((String) obj2).ordinal()];
                if (i2 == 1) {
                    activity.startActivity(intent, (Bundle) obj);
                    break;
                } else if (i2 != 2 && i2 != 3) {
                    if (i2 == 4) {
                        activity.startService(intent);
                        break;
                    } else if (i2 == 5) {
                        if (Build.VERSION.SDK_INT < 26) {
                            activity.startService(intent);
                            break;
                        } else {
                            ListAdapterTrampolineApi26Impl.INSTANCE.startForegroundService(activity, intent);
                            break;
                        }
                    }
                } else {
                    activity.sendBroadcast(intent);
                    break;
                }
                break;
        }
        return unit;
    }
}
