package org.wikipedia.widgets.readingchallenge;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.ColumnScopeImplInstance;
import androidx.glance.layout.HeightModifier;
import androidx.glance.unit.Dimension;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.widgets.readingchallenge.SmallWidgetSize;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Function2 f$4;

    public /* synthetic */ ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13(Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = modifier;
        this.f$3 = z;
        this.f$4 = composableLambdaImpl;
        this.f$1 = i;
        this.f$2 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        float f;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        final Function2 function2 = this.f$4;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                final SmallWidgetSize smallWidgetSize = (SmallWidgetSize) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = 2;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
                    UuidKt.m859RowlMAjyxE(DpKt.fillMaxWidth(companion), 2, 0, Expect_jvmKt.rememberComposableLambda(1007706310, new OnThisDayModuleKt$$ExternalSyntheticLambda2(i2, smallWidgetSize, i3), gapComposer), gapComposer, 3072, 4);
                    GlanceModifier fillMaxSize = DpKt.fillMaxSize(companion);
                    smallWidgetSize.getClass();
                    int i4 = SmallWidgetSize.WhenMappings.$EnumSwitchMapping$0[smallWidgetSize.ordinal()];
                    if (i4 != 1 && i4 != 2) {
                        if (i4 != 3 && i4 != 4) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            break;
                        } else {
                            f = 16.0f;
                        }
                    } else {
                        f = RecyclerView.DECELERATION_RATE;
                    }
                    GlanceModifier m845paddingqDBjuR0$default = UStringsKt.m845paddingqDBjuR0$default(fillMaxSize, f, 13);
                    final int i5 = this.f$2;
                    final boolean z = this.f$3;
                    Room.m758ColumnK4GKKTE(m845paddingqDBjuR0$default, 1, 1, Expect_jvmKt.rememberComposableLambda(-303694504, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj4, Object obj5, Object obj6) {
                            GapComposer gapComposer2 = (GapComposer) obj5;
                            ((Integer) obj6).getClass();
                            ((ColumnScopeImplInstance) obj4).getClass();
                            Dimension.Expand expand = Dimension.Expand.INSTANCE;
                            Operation$State.Spacer(new HeightModifier(expand), gapComposer2, 0);
                            AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(i5);
                            boolean z2 = z;
                            SmallWidgetSize smallWidgetSize2 = smallWidgetSize;
                            float f2 = 46.0f;
                            smallWidgetSize2.getClass();
                            if (z2) {
                                int i6 = SmallWidgetSize.WhenMappings.$EnumSwitchMapping$0[smallWidgetSize2.ordinal()];
                                if (i6 == 1) {
                                    f2 = 36.0f;
                                } else if (i6 != 2) {
                                    if (i6 != 3) {
                                        if (i6 != 4) {
                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                            return null;
                                        }
                                        f2 = 120.0f;
                                    } else {
                                        f2 = 70.0f;
                                    }
                                }
                                ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.m707size3ABfNKs(f2), 0, null, gapComposer2, 48, 24);
                                Operation$State.Spacer(new HeightModifier(expand), gapComposer2, 0);
                                function2.invoke(gapComposer2, 0);
                                return Unit.INSTANCE;
                            }
                            int i7 = SmallWidgetSize.WhenMappings.$EnumSwitchMapping$0[smallWidgetSize2.ordinal()];
                            if (i7 != 1) {
                                if (i7 == 2) {
                                    f2 = 56.0f;
                                } else if (i7 != 3) {
                                    if (i7 != 4) {
                                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                                        return null;
                                    }
                                    f2 = 120.0f;
                                } else {
                                    f2 = 80.0f;
                                }
                            }
                            ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.m707size3ABfNKs(f2), 0, null, gapComposer2, 48, 24);
                            Operation$State.Spacer(new HeightModifier(expand), gapComposer2, 0);
                            function2.invoke(gapComposer2, 0);
                            return Unit.INSTANCE;
                        }
                    }, gapComposer), gapComposer, 3072, 0);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                RecommendedReadingListSourceScreenKt.SettingsSection((Modifier) obj3, this.f$3, (ComposableLambdaImpl) function2, (GapComposer) obj, updateChangedFlags, this.f$2);
                break;
        }
        return unit;
    }

    public /* synthetic */ ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda13(SmallWidgetSize smallWidgetSize, int i, int i2, boolean z, Function2 function2) {
        this.f$0 = smallWidgetSize;
        this.f$1 = i;
        this.f$2 = i2;
        this.f$3 = z;
        this.f$4 = function2;
    }
}
