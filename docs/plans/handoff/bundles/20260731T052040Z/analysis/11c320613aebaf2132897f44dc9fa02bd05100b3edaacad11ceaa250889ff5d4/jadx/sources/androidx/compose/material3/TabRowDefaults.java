package androidx.compose.material3;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.PrimaryNavigationTabTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabRowDefaults {
    public static final TabRowDefaults INSTANCE$1 = new TabRowDefaults();
    public static final TabRowDefaults INSTANCE = new TabRowDefaults();

    /* renamed from: SecondaryIndicator-9IZ8Weo, reason: not valid java name */
    public void m163SecondaryIndicator9IZ8Weo(final Modifier modifier, float f, long j, Composer composer, final int i, final int i2) {
        final float f2;
        final long j2;
        float f3;
        long value;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1498258020);
        int i3 = (gapComposer.changed(modifier) ? 4 : 2) | i | 48 | (((i2 & 4) == 0 && gapComposer.changed(j)) ? 256 : 128);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                f3 = PrimaryNavigationTabTokens.ActiveIndicatorHeight;
                if ((i2 & 4) != 0) {
                    value = ColorSchemeKt.getValue(PrimaryNavigationTabTokens.ActiveIndicatorColor, gapComposer);
                    gapComposer.endDefaults();
                    BoxKt.Box(ImageKt.m27backgroundbw27NRU(SizeKt.m88height3ABfNKs(modifier.then(SizeKt.FillWholeMaxWidth), f3), value, Brush.RectangleShape), gapComposer, 0);
                    j2 = value;
                    f2 = f3;
                }
            } else {
                gapComposer.skipToGroupEnd();
                f3 = f;
            }
            value = j;
            gapComposer.endDefaults();
            BoxKt.Box(ImageKt.m27backgroundbw27NRU(SizeKt.m88height3ABfNKs(modifier.then(SizeKt.FillWholeMaxWidth), f3), value, Brush.RectangleShape), gapComposer, 0);
            j2 = value;
            f2 = f3;
        } else {
            gapComposer.skipToGroupEnd();
            f2 = f;
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier, f2, j2, i, i2) { // from class: androidx.compose.material3.TabRowDefaults$$ExternalSyntheticLambda0
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ float f$2;
                public final /* synthetic */ long f$3;
                public final /* synthetic */ int f$5;

                {
                    this.f$5 = i2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(3073);
                    TabRowDefaults.this.m163SecondaryIndicator9IZ8Weo(this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags, this.f$5);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
