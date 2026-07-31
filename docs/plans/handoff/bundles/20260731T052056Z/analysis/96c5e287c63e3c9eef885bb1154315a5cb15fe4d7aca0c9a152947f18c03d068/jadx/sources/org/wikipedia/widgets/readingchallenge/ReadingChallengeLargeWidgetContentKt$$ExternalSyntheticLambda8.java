package org.wikipedia.widgets.readingchallenge;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.ColumnScopeImplInstance;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ LargeWidgetSize f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ float f$3;

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8(int i, LargeWidgetSize largeWidgetSize, int i2, float f, int i3) {
        this.$r8$classId = i3;
        this.f$0 = i;
        this.f$1 = largeWidgetSize;
        this.f$2 = i2;
        this.f$3 = f;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
        final float f = this.f$3;
        final int i2 = this.f$2;
        LargeWidgetSize largeWidgetSize = this.f$1;
        int i3 = this.f$0;
        ColumnScopeImplInstance columnScopeImplInstance = (ColumnScopeImplInstance) obj;
        GapComposer gapComposer = (GapComposer) obj2;
        switch (i) {
            case 0:
                ((Integer) obj3).getClass();
                columnScopeImplInstance.getClass();
                ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i3), DpKt.m707size3ABfNKs(largeWidgetSize.m920getTitleBarIconSizeD9Ej5fM()), 0, null, gapComposer, 48, 24);
                final int i4 = 0;
                RegexKt.Box(DpKt.fillMaxSize(companion), Alignment.Center, Expect_jvmKt.rememberComposableLambda(-1383777715, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        int i5 = i4;
                        Unit unit2 = Unit.INSTANCE;
                        float f2 = f;
                        int i6 = i2;
                        switch (i5) {
                            case 0:
                                GapComposer gapComposer2 = (GapComposer) obj4;
                                int intValue = ((Integer) obj5).intValue();
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i6), DpKt.m707size3ABfNKs(f2), 0, null, gapComposer2, 48, 24);
                                    break;
                                }
                            default:
                                GapComposer gapComposer3 = (GapComposer) obj4;
                                int intValue2 = ((Integer) obj5).intValue();
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i6), DpKt.m707size3ABfNKs(f2), 0, null, gapComposer3, 48, 24);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, gapComposer), gapComposer, 384, 0);
                break;
            default:
                ((Integer) obj3).getClass();
                columnScopeImplInstance.getClass();
                ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i3), DpKt.m707size3ABfNKs(largeWidgetSize.m920getTitleBarIconSizeD9Ej5fM()), 0, null, gapComposer, 48, 24);
                final int i5 = 1;
                RegexKt.Box(DpKt.fillMaxSize(companion), Alignment.Center, Expect_jvmKt.rememberComposableLambda(1746915826, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        int i52 = i5;
                        Unit unit2 = Unit.INSTANCE;
                        float f2 = f;
                        int i6 = i2;
                        switch (i52) {
                            case 0:
                                GapComposer gapComposer2 = (GapComposer) obj4;
                                int intValue = ((Integer) obj5).intValue();
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i6), DpKt.m707size3ABfNKs(f2), 0, null, gapComposer2, 48, 24);
                                    break;
                                }
                            default:
                                GapComposer gapComposer3 = (GapComposer) obj4;
                                int intValue2 = ((Integer) obj5).intValue();
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i6), DpKt.m707size3ABfNKs(f2), 0, null, gapComposer3, 48, 24);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, gapComposer), gapComposer, 384, 0);
                break;
        }
        return unit;
    }
}
