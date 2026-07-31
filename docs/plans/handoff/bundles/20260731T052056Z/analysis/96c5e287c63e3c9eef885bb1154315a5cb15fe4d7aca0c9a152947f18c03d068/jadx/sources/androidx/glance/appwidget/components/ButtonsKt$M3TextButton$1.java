package androidx.glance.appwidget.components;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WrappedComposition;
import androidx.compose.ui.platform.WrappedComposition$setContent$1$2$1$1;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.ColorFilter;
import androidx.glance.TintColorFilterParams;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.ColorProvider;
import androidx.glance.unit.Dimension;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ButtonsKt$M3TextButton$1 extends Lambda implements Function2 {
    public final /* synthetic */ ComposableLambdaImpl $Text;
    public final /* synthetic */ Object $contentColor;
    public final /* synthetic */ Object $icon;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonsKt$M3TextButton$1(ComposableLambdaImpl composableLambdaImpl, AndroidResourceImageProvider androidResourceImageProvider, ColorProvider colorProvider) {
        super(2);
        this.$icon = androidResourceImageProvider;
        this.$Text = composableLambdaImpl;
        this.$contentColor = colorProvider;
    }

    /* JADX WARN: Type inference failed for: r14v4, types: [androidx.glance.appwidget.components.ButtonsKt$M3TextButton$1$1, kotlin.jvm.internal.Lambda] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final ComposableLambdaImpl composableLambdaImpl = this.$Text;
        Object obj3 = this.$contentColor;
        Object obj4 = this.$icon;
        int i2 = 0;
        int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                final AndroidResourceImageProvider androidResourceImageProvider = (AndroidResourceImageProvider) obj4;
                if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer.getSkipping()) {
                    if (androidResourceImageProvider == null) {
                        gapComposer.startReplaceableGroup(-1025263691);
                        RegexKt.Box(DpKt.m707size3ABfNKs(18.0f), null, ComposableSingletons$ButtonsKt.f14lambda1, gapComposer, 384, 2);
                        composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
                        gapComposer.end(false);
                        break;
                    } else {
                        gapComposer.startReplaceableGroup(-1025746051);
                        final ColorProvider colorProvider = (ColorProvider) obj3;
                        UuidKt.m859RowlMAjyxE(null, 0, 1, Expect_jvmKt.composableLambda(gapComposer, 279032795, new Function3() { // from class: androidx.glance.appwidget.components.ButtonsKt$M3TextButton$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                GapComposer gapComposer2 = (GapComposer) obj6;
                                ((Number) obj7).intValue();
                                ColorFilter colorFilter = new ColorFilter(new TintColorFilterParams(colorProvider));
                                ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.m707size3ABfNKs(18.0f), 0, colorFilter, gapComposer2, 32816, 8);
                                Operation$State.Spacer(new WidthModifier(new Dimension.Dp(8.0f)), gapComposer2, 0);
                                composableLambdaImpl.invoke((Object) gapComposer2, (Object) 6);
                                return Unit.INSTANCE;
                            }
                        }), gapComposer, 3072, 3);
                        gapComposer.end(false);
                        break;
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
                break;
            case 1:
                ((Number) obj2).intValue();
                CompositionLocalsKt.ProvideCommonCompositionLocals((Owner) obj4, (AndroidUriHandler) obj3, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                WrappedComposition wrappedComposition = (WrappedComposition) obj4;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    AndroidComposeView androidComposeView = wrappedComposition.owner;
                    boolean changedInstance = gapComposer2.changedInstance(wrappedComposition);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    Continuation continuation = null;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, i2);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Updater.LaunchedEffect(gapComposer2, androidComposeView, (Function2) rememberedValue);
                    boolean changedInstance2 = gapComposer2.changedInstance(wrappedComposition);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, i3);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Updater.LaunchedEffect(gapComposer2, androidComposeView, (Function2) rememberedValue2);
                    ((ComposeViewContext) obj3).ProvideCompositionLocals$ui(androidComposeView, composableLambdaImpl, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonsKt$M3TextButton$1(Owner owner, AndroidUriHandler androidUriHandler, ComposableLambdaImpl composableLambdaImpl, int i) {
        super(2);
        this.$icon = owner;
        this.$contentColor = androidUriHandler;
        this.$Text = composableLambdaImpl;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonsKt$M3TextButton$1(WrappedComposition wrappedComposition, ComposeViewContext composeViewContext, ComposableLambdaImpl composableLambdaImpl) {
        super(2);
        this.$icon = wrappedComposition;
        this.$contentColor = composeViewContext;
        this.$Text = composableLambdaImpl;
    }
}
