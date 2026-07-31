package net.thunderbird.feature.mail.message.reader.api.ui.component.organism;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AttachmentCardKt {

    /* renamed from: lambda$-930422152, reason: not valid java name */
    public static final ComposableLambdaImpl f35lambda$930422152 = new ComposableLambdaImpl(-930422152, new WelcomeContentKt$$ExternalSyntheticLambda9(28), false);
    public static final ComposableLambdaImpl lambda$1119330847 = new ComposableLambdaImpl(1119330847, new WelcomeContentKt$$ExternalSyntheticLambda9(29), false);

    public static final void AttachmentCard(AttachmentUiItem attachmentUiItem, Function0 function0, Function0 function02, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-536996099);
        int i2 = i | (gapComposer.changed(attachmentUiItem) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            modifier2 = Modifier.Companion.$$INSTANCE;
            SchemaInfoUtilKt.CardOutlined(modifier2, function0, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-454139352, new BufferedChannel$$ExternalSyntheticLambda1(25, attachmentUiItem, function02), gapComposer), gapComposer, 1572870 | (i2 & 112), 60);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(attachmentUiItem, function0, function02, modifier2, i, 20);
        }
    }

    public static final void AttachmentThumbnail(AttachmentUiItem attachmentUiItem, Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1405613521);
        int i2 = (gapComposer.changed(attachmentUiItem) ? 4 : 2) | i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(fillElement, 256.0f);
            if (attachmentUiItem instanceof AttachmentUiItem.RemoteImage) {
                gapComposer.startReplaceGroup(1299002769);
                RemoteImageKt.RemoteImage(((AttachmentUiItem.RemoteImage) attachmentUiItem).url, m226height3ABfNKs, f35lambda$930422152, null, null, null, gapComposer, 384, 120);
                gapComposer.end(false);
            } else if (attachmentUiItem instanceof AttachmentUiItem.File) {
                gapComposer.startReplaceGroup(2120119539);
                gapComposer.end(false);
            } else if (attachmentUiItem instanceof AttachmentUiItem.InlinedFile) {
                gapComposer.startReplaceGroup(2120121107);
                gapComposer.end(false);
            } else {
                if (!(attachmentUiItem instanceof AttachmentUiItem.InlinedImage)) {
                    throw ViewSizeResolver.CC.m(gapComposer, 2120111988, false);
                }
                gapComposer.startReplaceGroup(1299309886);
                String str = ((AttachmentUiItem.InlinedImage) attachmentUiItem).rawBase64;
                boolean changed = gapComposer.changed(str);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    if (!StringsKt__StringsJVMKt.startsWith(str, "data:", true)) {
                        str = "data:image/png;base64," + attachmentUiItem + ".rawBase64";
                    }
                    gapComposer.updateRememberedValue(str);
                    rememberedValue = str;
                }
                RemoteImageKt.RemoteImage((String) rememberedValue, m226height3ABfNKs, lambda$1119330847, null, null, null, gapComposer, 384, 120);
                gapComposer.end(false);
            }
            modifier = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 16, attachmentUiItem, modifier);
        }
    }

    public static final void AttachmentThumbnailPlaceholder(BoxScope boxScope, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-401702806);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(boxScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            BiasAlignment biasAlignment = Alignment.Companion.Center;
            Modifier align = boxScope.align(fillElement, biasAlignment);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, align);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            OAuthBearer.m939CircularProgressIndicatoriJQMabo(BoxScopeInstance.INSTANCE.align(SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 64.0f), biasAlignment), 0L, gapComposer, 0, 2);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyListItemProviderImpl$$ExternalSyntheticLambda0(i, i3, boxScope);
        }
    }
}
