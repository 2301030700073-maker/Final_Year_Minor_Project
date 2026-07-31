package androidx.compose.foundation.contextmenu;

import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableSingletons$ContextMenuUiKt$$ExternalSyntheticLambda0 implements Function8 {
    @Override // kotlin.jvm.functions.Function8
    public final Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, Integer num) {
        int i;
        String str = (String) obj;
        boolean booleanValue = bool.booleanValue();
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj2;
        Function3 function3 = (Function3) obj3;
        Function0 function0 = (Function0) obj4;
        int intValue = num.intValue();
        int i2 = intValue & 6;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i2 == 0) {
            i = (gapComposer.changed(companion) ? 4 : 2) | intValue;
        } else {
            i = intValue;
        }
        if ((intValue & 48) == 0) {
            i |= gapComposer.changed(str) ? 32 : 16;
        }
        if ((intValue & 384) == 0) {
            i |= gapComposer.changed(booleanValue) ? 256 : 128;
        }
        if ((intValue & 3072) == 0) {
            i |= gapComposer.changed(contextMenuColors) ? 2048 : 1024;
        }
        if ((intValue & 24576) == 0) {
            i |= gapComposer.changedInstance(function3) ? 16384 : 8192;
        }
        if ((intValue & 196608) == 0) {
            i |= gapComposer.changedInstance(function0) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i & 1, (599187 & i) != 599186)) {
            ContextMenuUiKt.ContextMenuItem(str, booleanValue, contextMenuColors, companion, function3, function0, gapComposer, (i & 458752) | ((i >> 3) & 1022) | ((i << 9) & 7168) | (57344 & i));
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
