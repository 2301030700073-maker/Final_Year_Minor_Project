package androidx.compose.foundation.text.selection;

import android.content.Context;
import android.os.Build;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.contextmenu.ProcessTextApi23Impl;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.LocaleList;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PlatformSelectionBehaviors_androidKt {
    public static final StaticProvidableCompositionLocal LocalTextClassifierCoroutineContext = new StaticProvidableCompositionLocal(0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(19));
    public static final ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0 PlatformSelectionBehaviorsFactory = new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(1);

    /* renamed from: addPlatformTextContextMenuItems-71BSaZU, reason: not valid java name */
    public static final void m229addPlatformTextContextMenuItems71BSaZU(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, boolean z, CharSequence charSequence, TextRange textRange, PlatformSelectionBehaviors platformSelectionBehaviors, Function1 function1) {
        if (Build.VERSION.SDK_INT >= 28 && charSequence != null && textRange != null && platformSelectionBehaviors != null && (platformSelectionBehaviors instanceof PlatformSelectionBehaviorsImpl)) {
            ((PlatformSelectionBehaviorsImpl) platformSelectionBehaviors).m226addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(textContextMenuBuilderScope, charSequence, textRange.packedValue, function1);
            ProcessTextApi23Impl.m201addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, z, charSequence, textRange.packedValue);
            return;
        }
        function1.invoke(textContextMenuBuilderScope);
        if (charSequence == null || textRange == null) {
            return;
        }
        ProcessTextApi23Impl.m201addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, z, charSequence, textRange.packedValue);
    }

    public static final PlatformSelectionBehaviors rememberPlatformSelectionBehaviors(SelectedTextType selectedTextType, LocaleList localeList, GapComposer gapComposer, int i) {
        gapComposer.startReplaceGroup(430530635);
        if (Build.VERSION.SDK_INT < 28) {
            gapComposer.end(false);
            return null;
        }
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        CoroutineContext coroutineContext = (CoroutineContext) gapComposer.consume(LocalTextClassifierCoroutineContext);
        boolean changed = ((((i & 112) ^ 48) > 32 && gapComposer.changed(localeList)) || (i & 48) == 32) | gapComposer.changed(coroutineContext) | gapComposer.changed(context);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            PlatformSelectionBehaviorsFactory.getClass();
            rememberedValue = new PlatformSelectionBehaviorsImpl(coroutineContext, context, selectedTextType, localeList);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        PlatformSelectionBehaviors platformSelectionBehaviors = (PlatformSelectionBehaviors) rememberedValue;
        gapComposer.end(false);
        return platformSelectionBehaviors;
    }
}
