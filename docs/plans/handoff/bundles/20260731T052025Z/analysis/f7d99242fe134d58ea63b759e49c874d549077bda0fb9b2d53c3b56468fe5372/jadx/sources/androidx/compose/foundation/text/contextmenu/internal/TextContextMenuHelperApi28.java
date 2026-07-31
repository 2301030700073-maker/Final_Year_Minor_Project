package androidx.compose.foundation.text.contextmenu.internal;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.view.textclassifier.TextClassification;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.material3.TooltipKt$animateTooltip$2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextContextMenuHelperApi28 {
    public static final TextContextMenuHelperApi28 INSTANCE = new TextContextMenuHelperApi28();

    public static String $r8$lambda$Iiu63PSqqXu4q6mJEOSuHqNC9JA(TextClassification textClassification, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(950061013);
        String valueOf = String.valueOf(textClassification.getLabel());
        gapComposer.end(false);
        return valueOf;
    }

    public static void $r8$lambda$NEbN75PVibkie9gM9RkwSCumg10(RemoteAction remoteAction) {
        PendingIntent actionIntent = remoteAction.getActionIntent();
        if (Build.VERSION.SDK_INT >= 34) {
            TextClassificationHelper34.sendIntentAllowBackgroundActivityStart(actionIntent);
        } else {
            actionIntent.send();
        }
    }

    public static String $r8$lambda$_S5HhoGNhMDALAgDAsR1MPDcOVo(RemoteAction remoteAction, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(-1376593684);
        String obj = remoteAction.getTitle().toString();
        gapComposer.end(false);
        return obj;
    }

    public static void textClassificationItem(ContextMenuScope contextMenuScope, Context context, TextContextMenuTextClassificationItem textContextMenuTextClassificationItem) {
        if (context == null) {
            return;
        }
        int i = textContextMenuTextClassificationItem.index;
        TextClassification textClassification = textContextMenuTextClassificationItem.textClassification;
        if (i < 0) {
            ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = new ComposerKt$$ExternalSyntheticLambda0(9, textClassification);
            Drawable icon = textClassification.getIcon();
            ContextMenuScope.item$default(contextMenuScope, composerKt$$ExternalSyntheticLambda0, icon != null ? new ComposableLambdaImpl(-1123224187, new TooltipKt$animateTooltip$2(2, icon), true) : null, new Recomposer$$ExternalSyntheticLambda6(19, context, textClassification), 6);
        } else {
            final RemoteAction remoteAction = textClassification.getActions().get(i);
            ContextMenuScope.item$default(contextMenuScope, new ComposerKt$$ExternalSyntheticLambda0(10, remoteAction), ((i == 0) || remoteAction.shouldShowIcon()) ? new ComposableLambdaImpl(-1261173016, new Function3() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    long j = ((Color) obj).value;
                    Composer composer = (Composer) obj2;
                    int intValue = ((Number) obj3).intValue();
                    GapComposer gapComposer = (GapComposer) composer;
                    if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        TextContextMenuHelperApi28.INSTANCE.IconBox(remoteAction.getIcon(), gapComposer, 48);
                    } else {
                        gapComposer.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, true) : null, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(23, remoteAction), 6);
        }
    }

    public final void IconBox(final Icon icon, Composer composer, final int i) {
        RecomposeScopeImpl endRestartGroup;
        Function2 function2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2116504409);
        int i2 = (gapComposer.changedInstance(icon) ? 4 : 2) | i;
        final int i3 = 0;
        final int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            boolean changed = gapComposer.changed(icon) | gapComposer.changed(context);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
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
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i5) {
                                case 0:
                                    textContextMenuHelperApi28.IconBox(icon2, composer2, Updater.updateChangedFlags(49));
                                    break;
                                default:
                                    textContextMenuHelperApi28.IconBox(icon2, composer2, Updater.updateChangedFlags(49));
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
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i5) {
                        case 0:
                            textContextMenuHelperApi28.IconBox(icon2, composer2, Updater.updateChangedFlags(49));
                            break;
                        default:
                            textContextMenuHelperApi28.IconBox(icon2, composer2, Updater.updateChangedFlags(49));
                            break;
                    }
                    return unit;
                }
            };
            endRestartGroup.block = function2;
        }
    }

    public final void IconBox(Drawable drawable, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(257732500);
        int i2 = (gapComposer.changedInstance(drawable) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, ContextMenuSpec.IconSize);
            boolean changedInstance = gapComposer.changedInstance(drawable);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new TorchControl$$ExternalSyntheticLambda1(23, drawable);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            BoxKt.Box(ClipKt.drawBehind(m234size3ABfNKs, (Function1) rememberedValue), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 10, this, drawable);
        }
    }
}
