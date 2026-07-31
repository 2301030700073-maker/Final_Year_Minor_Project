package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IconKt {
    public static final Modifier DefaultIconSizeModifier = SizeKt.m90size3ABfNKs(ListTokens.IconSize);

    /* renamed from: Icon-ww6aTOc, reason: not valid java name */
    public static final void m141Iconww6aTOc(final Painter painter, final String str, Modifier modifier, long j, Composer composer, final int i) {
        final Modifier modifier2;
        final long j2;
        long j3;
        int i2;
        Modifier modifier3;
        Modifier modifier4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2142239481);
        int i3 = i | (gapComposer.changedInstance(painter) ? 4 : 2);
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(str) ? 32 : 16;
        }
        int i4 = i3 | 1408;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposer.startDefaults();
            int i5 = i & 1;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                j3 = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
                i2 = i4 & (-7169);
                modifier2 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                j3 = j;
                i2 = i4 & (-7169);
                modifier2 = modifier;
            }
            gapComposer.endDefaults();
            boolean changed = gapComposer.changed(j3);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = Color.m244equalsimpl0(j3, Color.Unspecified) ? null : new BlendModeColorFilter(j3, 5);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) rememberedValue;
            if (str != null) {
                gapComposer.startReplaceGroup(-537002883);
                boolean z = (i2 & Token.ASSIGN_MOD) == 32;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 2);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                modifier3 = companion.then(new AppendedSemanticsElement((Function1) rememberedValue2, false));
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-536844101);
                gapComposer.end(false);
                modifier3 = companion;
            }
            if (!Size.m206equalsimpl0(painter.mo282getIntrinsicSizeNHjbRc(), 9205357640488583168L)) {
                long mo282getIntrinsicSizeNHjbRc = painter.mo282getIntrinsicSizeNHjbRc();
                if (!Float.isInfinite(Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc >> 32))) || !Float.isInfinite(Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc & 4294967295L)))) {
                    modifier4 = companion;
                    BoxKt.Box(ClipKt.paint$default(modifier2.then(modifier4), painter, 0.0f, blendModeColorFilter, 22).then(modifier3), gapComposer, 0);
                    j2 = j3;
                }
            }
            modifier4 = DefaultIconSizeModifier;
            BoxKt.Box(ClipKt.paint$default(modifier2.then(modifier4), painter, 0.0f, blendModeColorFilter, 22).then(modifier3), gapComposer, 0);
            j2 = j3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.IconKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    IconKt.m141Iconww6aTOc(Painter.this, str, modifier2, j2, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
