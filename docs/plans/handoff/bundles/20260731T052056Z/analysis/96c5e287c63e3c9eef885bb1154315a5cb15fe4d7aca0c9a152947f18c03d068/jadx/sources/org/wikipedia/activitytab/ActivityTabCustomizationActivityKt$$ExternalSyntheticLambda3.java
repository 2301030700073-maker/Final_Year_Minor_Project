package org.wikipedia.activitytab;

import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3(OffsetProvider offsetProvider, boolean z, boolean z2) {
        this.f$2 = offsetProvider;
        this.f$0 = z;
        this.f$1 = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final boolean z = this.f$1;
        final boolean z2 = this.f$0;
        Object obj2 = this.f$2;
        switch (i) {
            case 0:
                final MutableState mutableState = (MutableState) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, ImpactModuleKt.lambda$567232380, 3);
                final EnumEntries entries = ModuleType.getEntries();
                lazyListIntervalContent.items(((AbstractCollection) entries).getSize(), null, new CallsKt$await$2$1(9, entries), new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.activitytab.ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i2;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj3;
                        int intValue = ((Number) obj4).intValue();
                        GapComposer gapComposer = (GapComposer) obj5;
                        int intValue2 = ((Number) obj6).intValue();
                        if ((intValue2 & 6) == 0) {
                            i2 = (gapComposer.changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i2 |= gapComposer.changed(intValue) ? 32 : 16;
                        }
                        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                            ModuleType moduleType = (ModuleType) ((EnumEntriesList) EnumEntries.this).get(intValue);
                            gapComposer.startReplaceGroup(-362046385);
                            if ((moduleType != ModuleType.DONATIONS || z2) && (moduleType != ModuleType.GAMES || z)) {
                                MutableState mutableState2 = mutableState;
                                boolean isModuleEnabled = ((ActivityTabModules) mutableState2.getValue()).isModuleEnabled(moduleType);
                                String stringResource = UtilsKt.stringResource(moduleType.getDisplayName(), gapComposer);
                                boolean changed = gapComposer.changed(moduleType.ordinal());
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == Composer$Companion.Empty) {
                                    rememberedValue = new Latch$await$2$2(7, moduleType, mutableState2);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                ImpactModuleKt.CustomizationScreenSwitch(isModuleEnabled, stringResource, (Function1) rememberedValue, null, gapComposer, 0);
                                if (intValue < ((AbstractCollection) ModuleType.getEntries()).getSize() - 1) {
                                    gapComposer.startReplaceGroup(-361321792);
                                    CardKt.m266HorizontalDivider9IZ8Weo(null, RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer, 0, 3);
                                    gapComposer.end(false);
                                } else {
                                    gapComposer.startReplaceGroup(-361166110);
                                    gapComposer.end(false);
                                }
                            }
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true, 2039820996));
                break;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                long mo185provideF1C5BW0 = ((OffsetProvider) obj2).mo185provideF1C5BW0();
                semanticsPropertyReceiver.set(SelectionHandlesKt.SelectionHandleInfoKey, new SelectionHandleInfo(z2 ? Handle.SelectionStart : Handle.SelectionEnd, mo185provideF1C5BW0, z ? SelectionHandleAnchor.Left : SelectionHandleAnchor.Right, (9223372034707292159L & mo185provideF1C5BW0) != 9205357640488583168L));
                break;
        }
        return unit;
    }

    public /* synthetic */ ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3(boolean z, boolean z2, MutableState mutableState) {
        this.f$0 = z;
        this.f$1 = z2;
        this.f$2 = mutableState;
    }
}
