package com.fsck.k9.ui.settings;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ComposableSingletons$SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState$SnackbarDataImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.core.util.DebugUtils;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragmentKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Modifier f$1;

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda3(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, Modifier modifier, int i) {
        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
        this.f$1 = modifier;
        this.f$0 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$0;
        Modifier modifier = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                DebugUtils.AppLogo(i2, Updater.updateChangedFlags(1), (Composer) obj, modifier);
                break;
            case 1:
                ((Integer) obj2).getClass();
                AndroidCursorHandle_androidKt.DefaultCursorHandle(Updater.updateChangedFlags(1), i2, (Composer) obj, modifier);
                break;
            default:
                ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
                ((Integer) obj2).getClass();
                CardKt.FadeInFadeOutWithScale(null, modifier, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda3(int i, Modifier modifier, int i2) {
        this.f$0 = i;
        this.f$1 = modifier;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda3(Modifier modifier, int i, int i2) {
        this.f$1 = modifier;
        this.f$0 = i2;
    }
}
