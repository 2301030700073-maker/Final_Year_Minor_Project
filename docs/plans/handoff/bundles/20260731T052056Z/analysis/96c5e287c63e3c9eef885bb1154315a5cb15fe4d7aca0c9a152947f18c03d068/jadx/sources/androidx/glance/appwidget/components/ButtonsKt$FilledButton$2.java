package androidx.glance.appwidget.components;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.ButtonColors;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ButtonsKt$FilledButton$2 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ Object $colors;
    public final /* synthetic */ boolean $enabled;
    public final /* synthetic */ Object $icon;
    public final /* synthetic */ int $maxLines;
    public final /* synthetic */ Object $modifier;
    public final /* synthetic */ Object $onClick;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonsKt$FilledButton$2(String str, RunCallbackAction runCallbackAction, GlanceModifier glanceModifier, boolean z, AndroidResourceImageProvider androidResourceImageProvider, ButtonColors buttonColors, int i, int i2) {
        super(2);
        this.$text = str;
        this.$onClick = runCallbackAction;
        this.$modifier = glanceModifier;
        this.$enabled = z;
        this.$icon = androidResourceImageProvider;
        this.$colors = buttonColors;
        this.$maxLines = i;
        this.$$changed = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$colors;
        Object obj4 = this.$icon;
        Object obj5 = this.$modifier;
        Object obj6 = this.$onClick;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                ButtonColors buttonColors = (ButtonColors) obj3;
                int i2 = this.$$changed | 1;
                String str = this.$text;
                boolean z = this.$enabled;
                ContextsKt.FilledButton(str, (RunCallbackAction) obj6, (GlanceModifier) obj5, z, (AndroidResourceImageProvider) obj4, buttonColors, this.$maxLines, (GapComposer) obj, i2);
                break;
            default:
                ((Number) obj2).intValue();
                int updateChangedFlags = Updater.updateChangedFlags(this.$maxLines | 1);
                int i3 = this.$$changed;
                boolean z2 = this.$enabled;
                String str2 = this.$text;
                CrossfadeKt.AnimatedVisibility(z2, (Modifier) obj6, (EnterTransitionImpl) obj5, (ExitTransitionImpl) obj4, str2, (ComposableLambdaImpl) obj3, (GapComposer) obj, updateChangedFlags, i3);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonsKt$FilledButton$2(boolean z, Modifier modifier, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, String str, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        super(2);
        this.$enabled = z;
        this.$onClick = modifier;
        this.$modifier = enterTransitionImpl;
        this.$icon = exitTransitionImpl;
        this.$text = str;
        this.$colors = composableLambdaImpl;
        this.$maxLines = i;
        this.$$changed = i2;
    }
}
