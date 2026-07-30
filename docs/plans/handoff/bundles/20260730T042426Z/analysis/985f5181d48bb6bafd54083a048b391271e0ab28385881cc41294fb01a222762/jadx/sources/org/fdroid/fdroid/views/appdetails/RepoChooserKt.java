package org.fdroid.fdroid.views.appdetails;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.core.os.LocaleListCompat;
import androidx.core.util.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import org.fdroid.database.Repository;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.ui.theme.ThemeKt;
import org.fdroid.index.IndexFormatVersion;

/* compiled from: RepoChooser.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aH\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b\u001a]\u0010\r\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000e2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001a5\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u000f\u001a\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u0017H\u0003¢\u0006\u0002\u0010\u0018\u001a\u001d\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0002\u0010\u001b\u001a\r\u0010\u001c\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001d\u001a\r\u0010\u001e\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001d\u001a\r\u0010\u001f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001d¨\u0006 ²\u0006\n\u0010!\u001a\u00020\u0015X\u008a\u008e\u0002"}, d2 = {"setContentRepoChooser", "", "composeView", "Landroidx/compose/ui/platform/ComposeView;", "repos", "", "Lorg/fdroid/database/Repository;", "currentRepoId", "", "preferredRepoId", "onRepoChanged", "Landroidx/core/util/Consumer;", "onPreferredRepoChanged", "RepoChooser", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "RepoMenuItem", "repo", "isPreferred", "", "onClick", "Lkotlin/Function0;", "(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "getRepoString", "Landroidx/compose/ui/text/AnnotatedString;", "(Lorg/fdroid/database/Repository;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/AnnotatedString;", "RepoChooserSingleRepoPreview", "(Landroidx/compose/runtime/Composer;I)V", "RepoChooserPreview", "RepoChooserNightPreview", "app_fullRelease", "expanded"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RepoChooserKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$0(List list, long j, long j2, Function1 function1, Function1 function12, Modifier modifier, int i, int i2, Composer composer, int i3) {
        RepoChooser(list, j, j2, function1, function12, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$16(List list, long j, long j2, Function1 function1, Function1 function12, Modifier modifier, int i, int i2, Composer composer, int i3) {
        RepoChooser(list, j, j2, function1, function12, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooserNightPreview$lambda$21(int i, Composer composer, int i2) {
        RepoChooserNightPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooserPreview$lambda$20(int i, Composer composer, int i2) {
        RepoChooserPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooserSingleRepoPreview$lambda$19(int i, Composer composer, int i2) {
        RepoChooserSingleRepoPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoMenuItem$lambda$17(Repository repository, boolean z, Modifier modifier, Function0 function0, int i, int i2, Composer composer, int i3) {
        RepoMenuItem(repository, z, modifier, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void setContentRepoChooser(ComposeView composeView, final List<Repository> repos, final long j, final long j2, final Consumer onRepoChanged, final Consumer onPreferredRepoChanged) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        Intrinsics.checkNotNullParameter(repos, "repos");
        Intrinsics.checkNotNullParameter(onRepoChanged, "onRepoChanged");
        Intrinsics.checkNotNullParameter(onPreferredRepoChanged, "onPreferredRepoChanged");
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(-34211087, true, new Function2() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$setContentRepoChooser$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Composer) obj, ((Number) obj2).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                if ((i & 3) != 2 || !composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-34211087, i, -1, "org.fdroid.fdroid.views.appdetails.setContentRepoChooser.<anonymous> (RepoChooser.kt:55)");
                    }
                    final List<Repository> list = repos;
                    final long j3 = j;
                    final long j4 = j2;
                    final Consumer consumer = onRepoChanged;
                    final Consumer consumer2 = onPreferredRepoChanged;
                    ThemeKt.FDroidContent(false, false, ComposableLambdaKt.rememberComposableLambda(-1541427525, true, new Function2() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$setContentRepoChooser$1.1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer2, int i2) {
                            if ((i2 & 3) != 2 || !composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1541427525, i2, -1, "org.fdroid.fdroid.views.appdetails.setContentRepoChooser.<anonymous>.<anonymous> (RepoChooser.kt:56)");
                                }
                                List<Repository> list2 = list;
                                long j5 = j3;
                                long j6 = j4;
                                Consumer consumer3 = consumer;
                                composer2.startReplaceGroup(637167746);
                                boolean changedInstance = composer2.changedInstance(consumer3);
                                Object rememberedValue = composer2.rememberedValue();
                                if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
                                    rememberedValue = new RepoChooserKt$setContentRepoChooser$1$1$1$1(consumer3);
                                    composer2.updateRememberedValue(rememberedValue);
                                }
                                composer2.endReplaceGroup();
                                Function1 function1 = (Function1) ((KFunction) rememberedValue);
                                Consumer consumer4 = consumer2;
                                composer2.startReplaceGroup(637169803);
                                boolean changedInstance2 = composer2.changedInstance(consumer4);
                                Object rememberedValue2 = composer2.rememberedValue();
                                if (changedInstance2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                                    rememberedValue2 = new RepoChooserKt$setContentRepoChooser$1$1$2$1(consumer4);
                                    composer2.updateRememberedValue(rememberedValue2);
                                }
                                composer2.endReplaceGroup();
                                RepoChooserKt.RepoChooser(list2, j5, j6, function1, (Function1) ((KFunction) rememberedValue2), BackgroundKt.m100backgroundbw27NRU$default(Modifier.Companion, MaterialTheme.INSTANCE.getColorScheme(composer2, MaterialTheme.$stable).m656getSurfaceContainerLow0d7_KjU(), null, 2, null), composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer2.skipToGroupEnd();
                        }
                    }, composer, 54), composer, 384, 3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        }));
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RepoChooser(final java.util.List<org.fdroid.database.Repository> r112, final long r113, final long r115, final kotlin.jvm.functions.Function1 r117, final kotlin.jvm.functions.Function1 r118, androidx.compose.ui.Modifier r119, androidx.compose.runtime.Composer r120, final int r121, final int r122) {
        /*
            Method dump skipped, instructions count: 1303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.appdetails.RepoChooserKt.RepoChooser(java.util.List, long, long, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    private static final boolean RepoChooser$lambda$2(MutableState mutableState) {
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void RepoChooser$lambda$3(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$15$lambda$12$lambda$9$lambda$8(TextFieldValue it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$15$lambda$12$lambda$7$lambda$6$lambda$5(MutableState mutableState) {
        RepoChooser$lambda$3(mutableState, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$15$lambda$12$lambda$11$lambda$10(MutableState mutableState) {
        RepoChooser$lambda$3(mutableState, false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoChooser$lambda$15$lambda$14$lambda$13(Function1 function1, Repository repository) {
        function1.invoke(Long.valueOf(repository.getRepoId()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RepoMenuItem(final org.fdroid.database.Repository r19, final boolean r20, androidx.compose.ui.Modifier r21, final kotlin.jvm.functions.Function0 r22, androidx.compose.runtime.Composer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.appdetails.RepoChooserKt.RepoMenuItem(org.fdroid.database.Repository, boolean, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString getRepoString(Repository repository, boolean z, Composer composer, int i) {
        composer.startReplaceGroup(-2007149080);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2007149080, i, -1, "org.fdroid.fdroid.views.appdetails.getRepoString (RepoChooser.kt:188)");
        }
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
        LocaleListCompat localeListCompat = LocaleListCompat.getDefault();
        Intrinsics.checkNotNullExpressionValue(localeListCompat, "getDefault(...)");
        String name = repository.getName(localeListCompat);
        if (name == null) {
            name = "Unknown Repository";
        }
        builder.append(name);
        composer.startReplaceGroup(-839144080);
        if (z) {
            builder.append(" ");
            builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Companion.getBold(), null, null, null, null, 0L, null, null, null, 0L, null, null, null, null, 65531, null));
            builder.append(" ");
            builder.append(StringResources_androidKt.stringResource(R.string.app_details_repository_preferred, composer, 0));
        }
        composer.endReplaceGroup();
        AnnotatedString annotatedString = builder.toAnnotatedString();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return annotatedString;
    }

    public static final void RepoChooserSingleRepoPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1842411059);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1842411059, i, -1, "org.fdroid.fdroid.views.appdetails.RepoChooserSingleRepoPreview (RepoChooser.kt:200)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(-629146327, true, new RepoChooserKt$RepoChooserSingleRepoPreview$1(new Repository(1L, "1", 1L, IndexFormatVersion.TWO, "null", 1L, 1, 1L, null, null, 768, null)), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoChooserSingleRepoPreview$lambda$19;
                    RepoChooserSingleRepoPreview$lambda$19 = RepoChooserKt.RepoChooserSingleRepoPreview$lambda$19(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoChooserSingleRepoPreview$lambda$19;
                }
            });
        }
    }

    public static final void RepoChooserPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1041903111);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1041903111, i, -1, "org.fdroid.fdroid.views.appdetails.RepoChooserPreview (RepoChooser.kt:209)");
            }
            IndexFormatVersion indexFormatVersion = IndexFormatVersion.TWO;
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(-1708329873, true, new RepoChooserKt$RepoChooserPreview$1(new Repository(1L, "1", 1L, indexFormatVersion, "null", 1L, 1, 1L, null, null, 768, null), new Repository(2L, "2", 2L, indexFormatVersion, "null", 2L, 2, 2L, null, null, 768, null), new Repository(3L, "2", 3L, indexFormatVersion, "null", 3L, 3, 3L, null, null, 768, null)), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoChooserPreview$lambda$20;
                    RepoChooserPreview$lambda$20 = RepoChooserKt.RepoChooserPreview$lambda$20(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoChooserPreview$lambda$20;
                }
            });
        }
    }

    public static final void RepoChooserNightPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(560426203);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(560426203, i, -1, "org.fdroid.fdroid.views.appdetails.RepoChooserNightPreview (RepoChooser.kt:220)");
            }
            IndexFormatVersion indexFormatVersion = IndexFormatVersion.TWO;
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(731997221, true, new RepoChooserKt$RepoChooserNightPreview$1(new Repository(1L, "1", 1L, indexFormatVersion, "null", 1L, 1, 1L, null, null, 768, null), new Repository(2L, "2", 2L, indexFormatVersion, "null", 2L, 2, 2L, null, null, 768, null), new Repository(3L, "2", 3L, indexFormatVersion, "null", 3L, 3, 3L, null, null, 768, null)), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoChooserNightPreview$lambda$21;
                    RepoChooserNightPreview$lambda$21 = RepoChooserKt.RepoChooserNightPreview$lambda$21(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoChooserNightPreview$lambda$21;
                }
            });
        }
    }
}
