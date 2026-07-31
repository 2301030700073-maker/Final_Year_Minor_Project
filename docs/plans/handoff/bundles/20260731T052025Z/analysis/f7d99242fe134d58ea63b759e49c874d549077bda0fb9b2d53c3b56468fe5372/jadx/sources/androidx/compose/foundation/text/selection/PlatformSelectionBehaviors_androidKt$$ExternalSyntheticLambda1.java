package androidx.compose.foundation.text.selection;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.intl.LocaleList;
import app.k9mail.core.ui.compose.designsystem.molecule.input.MessageState;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1 implements Function4 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        long j;
        switch (this.$r8$classId) {
            case 0:
                return new PlatformSelectionBehaviorsImpl((CoroutineContext) obj, (Context) obj2, (SelectedTextType) obj3, (LocaleList) obj4);
            default:
                MessageState messageState = (MessageState) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                if ((intValue & 48) == 0) {
                    intValue |= (intValue & 64) == 0 ? ((GapComposer) composer).changed(messageState) : ((GapComposer) composer).changedInstance(messageState) ? 32 : 16;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 145) != 144)) {
                    gapComposer.skipToGroupEnd();
                } else if (messageState != null) {
                    gapComposer.startReplaceGroup(2028418793);
                    if (messageState instanceof MessageState.Error) {
                        gapComposer.startReplaceGroup(896719891);
                        j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).error;
                        gapComposer.end(false);
                    } else {
                        if (!(messageState instanceof MessageState.Warning)) {
                            throw ViewSizeResolver.CC.m(gapComposer, 896717532, false);
                        }
                        gapComposer.startReplaceGroup(896722133);
                        j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warning;
                        gapComposer.end(false);
                    }
                    long j2 = j;
                    String text = messageState.getText();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    MathKt.m984TextBodySmallXl4FiYE(text, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, 4.0f, 0.0f, 0.0f, 12), j2, null, 0, 0, gapComposer, 0, 56);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(2028859892);
                    gapComposer.end(false);
                }
                return Unit.INSTANCE;
        }
    }
}
