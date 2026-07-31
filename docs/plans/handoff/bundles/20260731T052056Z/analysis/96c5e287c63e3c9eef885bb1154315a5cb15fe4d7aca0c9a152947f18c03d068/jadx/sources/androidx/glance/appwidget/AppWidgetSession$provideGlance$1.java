package androidx.glance.appwidget;

import android.content.Context;
import android.os.Bundle;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.unit.DpSize;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.work.Operation$State;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ChannelFlowBuilder;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppWidgetSession$provideGlance$1 extends Lambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ AppWidgetSession this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppWidgetSession$provideGlance$1(Context context, AppWidgetSession appWidgetSession) {
        super(2);
        this.$context = context;
        this.this$0 = appWidgetSession;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer.getSkipping()) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = androidx.glance.CompositionLocalsKt.LocalContext;
                    Context context = this.$context;
                    ProvidedValue defaultProvidedValue$runtime = staticProvidableCompositionLocal.defaultProvidedValue$runtime(context);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = androidx.glance.CompositionLocalsKt.LocalGlanceId;
                    AppWidgetSession appWidgetSession = this.this$0;
                    ProvidedValue defaultProvidedValue$runtime2 = staticProvidableCompositionLocal2.defaultProvidedValue$runtime(appWidgetSession.id);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = CompositionLocalsKt.LocalAppWidgetOptions;
                    Bundle bundle = (Bundle) appWidgetSession.options$delegate.getValue();
                    if (bundle == null) {
                        bundle = Bundle.EMPTY;
                    }
                    Updater.CompositionLocalProvider(new ProvidedValue[]{defaultProvidedValue$runtime, defaultProvidedValue$runtime2, staticProvidableCompositionLocal3.defaultProvidedValue$runtime(bundle), androidx.glance.CompositionLocalsKt.LocalState.defaultProvidedValue$runtime(appWidgetSession.glanceState$delegate.getValue())}, Expect_jvmKt.composableLambda(gapComposer, 1688971311, new AppWidgetSession$provideGlance$1(appWidgetSession, context)), gapComposer, 48);
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                if ((3 & ((Number) obj2).intValue()) != 2 || !gapComposer2.getSkipping()) {
                    gapComposer2.startReplaceableGroup(1881995740);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    Object obj3 = Composer$Companion.Empty;
                    if (rememberedValue == obj3) {
                        rememberedValue = Updater.mutableStateOf$default(new DpSize(0L));
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    MutableState mutableState = (MutableState) rememberedValue;
                    gapComposer2.end(false);
                    Boolean bool = Boolean.FALSE;
                    gapComposer2.startReplaceableGroup(1881999935);
                    AppWidgetSession appWidgetSession2 = this.this$0;
                    boolean changed = gapComposer2.changed(appWidgetSession2);
                    Context context2 = this.$context;
                    boolean changed2 = gapComposer2.changed(context2) | changed | gapComposer2.changed(mutableState);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    Unit unit2 = null;
                    if (changed2 || rememberedValue2 == obj3) {
                        rememberedValue2 = new FlowExtKt$simpleScan$1(appWidgetSession2, context2, mutableState, (Continuation) null, 9);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    gapComposer2.end(false);
                    if (((Boolean) Updater.produceState(gapComposer2, bool, (Function2) rememberedValue2).getValue()).booleanValue()) {
                        gapComposer2.startReplaceableGroup(-1786326291);
                        gapComposer2.startReplaceableGroup(1882039614);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (rememberedValue3 == obj3) {
                            Object channelFlowBuilder = new ChannelFlowBuilder(new GlanceAppWidget$update$4(appWidgetSession2.widget, context2, appWidgetSession2.id, (Continuation) null), EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND, 0);
                            gapComposer2.updateRememberedValue(channelFlowBuilder);
                            rememberedValue3 = channelFlowBuilder;
                        }
                        gapComposer2.end(false);
                        Function2 function2 = (Function2) Updater.collectAsState((Flow) rememberedValue3, null, gapComposer2, 48, 2).getValue();
                        gapComposer2.startReplaceableGroup(1882043230);
                        if (function2 != null) {
                            appWidgetSession2.getClass();
                            Operation$State.m763ForEachSizeeVKgIn8(((DpSize) mutableState.getValue()).packedValue, function2, gapComposer2, 0);
                            unit2 = unit;
                        }
                        gapComposer2.end(false);
                        if (unit2 == null) {
                            UStringsKt.IgnoreResult(0, gapComposer2);
                        }
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceableGroup(-1786102688);
                        UStringsKt.IgnoreResult(0, gapComposer2);
                        gapComposer2.end(false);
                    }
                    gapComposer2.startReplaceableGroup(1882053955);
                    boolean changed3 = gapComposer2.changed(appWidgetSession2);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue4 == obj3) {
                        rememberedValue4 = new LayoutNode$_foldedChildren$1(18, appWidgetSession2);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    gapComposer2.end(false);
                    Updater.SideEffect((Function0) rememberedValue4, gapComposer2);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppWidgetSession$provideGlance$1(AppWidgetSession appWidgetSession, Context context) {
        super(2);
        this.this$0 = appWidgetSession;
        this.$context = context;
    }
}
