package org.fdroid.fdroid.views.repos;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.LocaleListCompat;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.compose.GlideImageKt;
import com.bumptech.glide.request.BaseRequestOptions;
import com.google.accompanist.drawablepainter.DrawablePainterKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.database.MinimalApp;
import org.fdroid.database.Repository;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.Utils;

/* compiled from: RepoPreviewScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoPreviewScreenKt$RepoPreviewApp$1 implements Function3 {
    final /* synthetic */ MinimalApp $app;
    final /* synthetic */ boolean $isDevPreview;
    final /* synthetic */ LocaleListCompat $localeList;
    final /* synthetic */ Repository $repo;

    RepoPreviewScreenKt$RepoPreviewApp$1(boolean z, Repository repository, MinimalApp minimalApp, LocaleListCompat localeListCompat) {
        this.$isDevPreview = z;
        this.$repo = repository;
        this.$app = minimalApp;
        this.$localeList = localeListCompat;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(ColumnScope ElevatedCard, Composer composer, int i) {
        MinimalApp minimalApp;
        Modifier.Companion companion;
        Arrangement arrangement;
        Composer composer2;
        Intrinsics.checkNotNullParameter(ElevatedCard, "$this$ElevatedCard");
        if ((i & 17) == 16 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1293741086, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewApp.<anonymous> (RepoPreviewScreen.kt:232)");
        }
        Arrangement arrangement2 = Arrangement.INSTANCE;
        float f = 8;
        Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = arrangement2.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier m265padding3ABfNKs = PaddingKt.m265padding3ABfNKs(companion2, Dp.m2424constructorimpl(f));
        boolean z = this.$isDevPreview;
        Repository repository = this.$repo;
        MinimalApp minimalApp2 = this.$app;
        LocaleListCompat localeListCompat = this.$localeList;
        Alignment.Companion companion3 = Alignment.Companion;
        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(m248spacedBy0680j_4, companion3.getTop(), composer, 6);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, m265padding3ABfNKs);
        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
        Function0 constructor = companion4.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl, rowMeasurePolicy, companion4.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion4.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash = companion4.getSetCompositeKeyHash();
        if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion4.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        if (z) {
            composer.startReplaceGroup(816034164);
            ImageKt.Image(DrawablePainterKt.rememberDrawablePainter(ResourcesCompat.getDrawable(((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources(), R.drawable.ic_launcher, null), composer, 0), (String) null, SizeKt.m285size3ABfNKs(companion2, Dp.m2424constructorimpl(38)), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, composer, 432, 120);
            composer.endReplaceGroup();
            minimalApp = minimalApp2;
            companion = companion2;
            arrangement = arrangement2;
            composer2 = composer;
        } else {
            composer.startReplaceGroup(816043213);
            Object glideModel = Utils.getGlideModel(repository, minimalApp2.getIcon(localeListCompat));
            Modifier m285size3ABfNKs = SizeKt.m285size3ABfNKs(companion2, Dp.m2424constructorimpl(38));
            composer.startReplaceGroup(816049041);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewApp$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        RequestBuilder invoke$lambda$3$lambda$1$lambda$0;
                        invoke$lambda$3$lambda$1$lambda$0 = RepoPreviewScreenKt$RepoPreviewApp$1.invoke$lambda$3$lambda$1$lambda$0((RequestBuilder) obj);
                        return invoke$lambda$3$lambda$1$lambda$0;
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceGroup();
            minimalApp = minimalApp2;
            companion = companion2;
            arrangement = arrangement2;
            composer2 = composer;
            GlideImageKt.GlideImage(glideModel, null, m285size3ABfNKs, null, null, 0.0f, null, null, null, null, (Function1) rememberedValue, composer, 432, 6, 1016);
            composer.endReplaceGroup();
        }
        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion3.getStart(), composer2, 0);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
        CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer2, companion);
        Function0 constructor2 = companion4.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer2.createNode(constructor2);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl2, columnMeasurePolicy, companion4.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion4.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash2 = companion4.getSetCompositeKeyHash();
        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
        }
        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion4.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        String name = minimalApp.getName();
        if (name == null) {
            name = "Unknown app";
        }
        MaterialTheme materialTheme = MaterialTheme.INSTANCE;
        int i2 = MaterialTheme.$stable;
        TextKt.m780Text4IGK_g(name, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer2, i2).getBodyLarge(), composer, 0, 0, 65534);
        String summary = minimalApp.getSummary();
        if (summary == null) {
            summary = "";
        }
        TextKt.m780Text4IGK_g(summary, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer2, i2).getBodyMedium(), composer, 0, 0, 65534);
        composer.endNode();
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RequestBuilder invoke$lambda$3$lambda$1$lambda$0(RequestBuilder it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BaseRequestOptions error = ((RequestBuilder) it.fallback(R.drawable.ic_repo_app_default)).error(R.drawable.ic_repo_app_default);
        Intrinsics.checkNotNullExpressionValue(error, "error(...)");
        return (RequestBuilder) error;
    }
}
