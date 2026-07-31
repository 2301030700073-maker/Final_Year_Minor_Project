package org.wikipedia.feed.onboarding;

import android.content.Intent;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.personalization.PersonalizationActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ExploreFeedUpdatePromptActivity f$0;

    public /* synthetic */ ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda0(ExploreFeedUpdatePromptActivity exploreFeedUpdatePromptActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = exploreFeedUpdatePromptActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final ExploreFeedUpdatePromptActivity exploreFeedUpdatePromptActivity = this.f$0;
        Object[] objArr = 0;
        final int i2 = 1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                int i3 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1297806058, new ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda0(exploreFeedUpdatePromptActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                int i4 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(exploreFeedUpdatePromptActivity);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.feed.onboarding.ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                ExploreFeedUpdatePromptActivity exploreFeedUpdatePromptActivity2 = exploreFeedUpdatePromptActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(exploreFeedUpdatePromptActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "accept_default", null, null, 246);
                                        }
                                        exploreFeedUpdatePromptActivity2.finish();
                                        break;
                                    default:
                                        int i7 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(exploreFeedUpdatePromptActivity2);
                                        if (instrument2 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "customize_feed", null, null, 246);
                                        }
                                        Intent putExtra = new Intent(exploreFeedUpdatePromptActivity2, (Class<?>) PersonalizationActivity.class).putExtra("show_interests_only", false);
                                        putExtra.getClass();
                                        exploreFeedUpdatePromptActivity2.startActivity(putExtra);
                                        exploreFeedUpdatePromptActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(exploreFeedUpdatePromptActivity);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.feed.onboarding.ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i5 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                ExploreFeedUpdatePromptActivity exploreFeedUpdatePromptActivity2 = exploreFeedUpdatePromptActivity;
                                switch (i5) {
                                    case 0:
                                        int i6 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(exploreFeedUpdatePromptActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "accept_default", null, null, 246);
                                        }
                                        exploreFeedUpdatePromptActivity2.finish();
                                        break;
                                    default:
                                        int i7 = ExploreFeedUpdatePromptActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(exploreFeedUpdatePromptActivity2);
                                        if (instrument2 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "customize_feed", null, null, 246);
                                        }
                                        Intent putExtra = new Intent(exploreFeedUpdatePromptActivity2, (Class<?>) PersonalizationActivity.class).putExtra("show_interests_only", false);
                                        putExtra.getClass();
                                        exploreFeedUpdatePromptActivity2.startActivity(putExtra);
                                        exploreFeedUpdatePromptActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    ExploreFeedUpdatePromptActivityKt.ExploreFeedUpdatePromptScreen(null, function0, (Function0) rememberedValue2, gapComposer, 0);
                    break;
                }
        }
        return unit;
    }
}
