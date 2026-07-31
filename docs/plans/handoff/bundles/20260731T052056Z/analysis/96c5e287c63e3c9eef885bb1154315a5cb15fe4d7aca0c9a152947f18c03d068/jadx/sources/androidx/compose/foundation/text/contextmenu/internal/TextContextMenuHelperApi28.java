package androidx.compose.foundation.text.contextmenu.internal;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.TooltipKt$animateTooltip$2;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuHelperApi28 {
    public static final TextContextMenuHelperApi28 INSTANCE = new TextContextMenuHelperApi28();

    public static void textClassificationItem(ContextMenuScope contextMenuScope, Context context, TextContextMenuTextClassificationItem textContextMenuTextClassificationItem) {
        if (context == null) {
            return;
        }
        int i = textContextMenuTextClassificationItem.index;
        TextClassification textClassification = textContextMenuTextClassificationItem.textClassification;
        if (i < 0) {
            HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(11, textClassification);
            Drawable icon = textClassification.getIcon();
            ContextMenuScope.item$default(contextMenuScope, hintHandler$$ExternalSyntheticLambda0, icon != null ? new ComposableLambdaImpl(new TooltipKt$animateTooltip$2(2, icon), true, -1123224187) : null, new Recomposer$$ExternalSyntheticLambda6(16, context, textClassification), 6);
        } else {
            final RemoteAction remoteAction = textClassification.getActions().get(i);
            ContextMenuScope.item$default(contextMenuScope, new HintHandler$$ExternalSyntheticLambda0(12, remoteAction), ((i == 0) || remoteAction.shouldShowIcon()) ? new ComposableLambdaImpl(new Function3() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    long j = ((Color) obj).value;
                    GapComposer gapComposer = (GapComposer) obj2;
                    int intValue = ((Number) obj3).intValue();
                    if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        TextContextMenuHelperApi28.INSTANCE.IconBox(remoteAction.getIcon(), gapComposer, 48);
                    } else {
                        gapComposer.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, true, -1261173016) : null, new NavBackStackEntry$$ExternalSyntheticLambda0(15, remoteAction), 6);
        }
    }

    public static final String textClassificationItem$lambda$0(TextClassification textClassification, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(950061013);
        String valueOf = String.valueOf(textClassification.getLabel());
        gapComposer.end(false);
        return valueOf;
    }

    public static final String textClassificationItem$lambda$3(RemoteAction remoteAction, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(-1376593684);
        String obj = remoteAction.getTitle().toString();
        gapComposer.end(false);
        return obj;
    }

    public static final void textClassificationItem$lambda$4(RemoteAction remoteAction) {
        PendingIntent actionIntent = remoteAction.getActionIntent();
        if (Build.VERSION.SDK_INT >= 34) {
            TextClassificationHelper34.sendIntentAllowBackgroundActivityStart(actionIntent);
        } else {
            actionIntent.send();
        }
    }

    public final void IconBox(final Icon icon, GapComposer gapComposer, final int i) {
        RecomposeScopeImpl endRestartGroup;
        Function2 function2;
        gapComposer.startRestartGroup(2116504409);
        int i2 = (gapComposer.changedInstance(icon) ? 4 : 2) | i;
        final int i3 = 0;
        final int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            boolean changed = gapComposer.changed(icon) | gapComposer.changed(context);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = icon.loadDrawable(context);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Drawable drawable = (Drawable) rememberedValue;
            if (drawable == null) {
                endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    function2 = new Function2(this, icon, i, i3) { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$$ExternalSyntheticLambda4
                        public final /* synthetic */ int $r8$classId;
                        public final /* synthetic */ TextContextMenuHelperApi28 f$0;
                        public final /* synthetic */ Icon f$1;

                        {
                            this.$r8$classId = i3;
                            this.f$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i5 = this.$r8$classId;
                            Unit unit = Unit.INSTANCE;
                            Icon icon2 = this.f$1;
                            TextContextMenuHelperApi28 textContextMenuHelperApi28 = this.f$0;
                            GapComposer gapComposer2 = (GapComposer) obj;
                            ((Integer) obj2).getClass();
                            switch (i5) {
                                case 0:
                                    textContextMenuHelperApi28.IconBox(icon2, gapComposer2, Updater.updateChangedFlags(49));
                                    break;
                                default:
                                    textContextMenuHelperApi28.IconBox(icon2, gapComposer2, Updater.updateChangedFlags(49));
                                    break;
                            }
                            return unit;
                        }
                    };
                    endRestartGroup.block = function2;
                }
                return;
            }
            IconBox(drawable, gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            function2 = new Function2(this, icon, i, i4) { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$$ExternalSyntheticLambda4
                public final /* synthetic */ int $r8$classId;
                public final /* synthetic */ TextContextMenuHelperApi28 f$0;
                public final /* synthetic */ Icon f$1;

                {
                    this.$r8$classId = i4;
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i5 = this.$r8$classId;
                    Unit unit = Unit.INSTANCE;
                    Icon icon2 = this.f$1;
                    TextContextMenuHelperApi28 textContextMenuHelperApi28 = this.f$0;
                    GapComposer gapComposer2 = (GapComposer) obj;
                    ((Integer) obj2).getClass();
                    switch (i5) {
                        case 0:
                            textContextMenuHelperApi28.IconBox(icon2, gapComposer2, Updater.updateChangedFlags(49));
                            break;
                        default:
                            textContextMenuHelperApi28.IconBox(icon2, gapComposer2, Updater.updateChangedFlags(49));
                            break;
                    }
                    return unit;
                }
            };
            endRestartGroup.block = function2;
        }
    }

    public final void IconBox(Drawable drawable, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(257732500);
        int i2 = (gapComposer.changedInstance(drawable) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, ContextMenuSpec.IconSize);
            boolean changedInstance = gapComposer.changedInstance(drawable);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new AppBarKt$$ExternalSyntheticLambda11(21, drawable);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            BoxKt.Box(ClipKt.drawBehind(m145size3ABfNKs, (Function1) rememberedValue), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(this, drawable, i, 11);
        }
    }
}
